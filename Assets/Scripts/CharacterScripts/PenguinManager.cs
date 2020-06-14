using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Effekseer;
using UnityEngine.InputSystem;

//! Penguinの総括
[RequireComponent(typeof(LevelSettings))]
public class PenguinManager : MonoBehaviour
{
    [SerializeField, NonEditableField, Tooltip("シーン情報")]
    private StageMetaParam m_scene_list;

    [SerializeField, NonEditableField, Tooltip("このレベルの数値情報")]
    public LevelSettings m_settings;

    //! 子ペンギンの総数
    [SerializeField, NonEditableField, Space(30)]
    public int m_TotalCount = 0;
    //! 死亡数
    [SerializeField, NonEditableField]
    public int m_DeadCount = 0;
    //! 群れ化数
    [SerializeField, NonEditableField]
    public int m_PackCount = 0;
    //! 野良ペンギン数
    [SerializeField, NonEditableField]
    public int m_NomadCount = 0;

    [SerializeField, Tooltip("UI要素：ゲームタイマー")]
    private StageTimer m_Timer;
    public float StageTime { get { return m_Timer.StageTime; } }

    [SerializeField]
    private Camera m_Camera;

    [SerializeField]
    private PenguinJoin m_PenguinJoin;

    [SerializeField]
    private GameOverUIGame m_GameoverUI;

    [SerializeField]
    private GameMain m_Main_UI;

    //! 親ペンギン
    private ParentPenguin m_ParentPenguin = null;

    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    //! スタート演出のペンギン高さ
    private float m_StartHeight = 20f;

    CurrentScore m_Score;

    private bool m_IsSceneChanging = false; 
    
    [SerializeField, Tooltip("環境音代わりのペンギンボイス")]
    private SE_Voice m_pen_voices = null;

    [SerializeField]
    private Fade m_Fade;

    //! 入力
    [SerializeField]
    private PlayerInput m_Input;

    //!振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    #region ゴール演出関係
    //! ステージゴール
    [SerializeField, NonEditableField]
    private List<GoalTile> m_GoalTiles = new List<GoalTile>();

    //! ゴール演出中判定
    private bool m_InGoalEnshutsu = false;

    #endregion

    // Start is called before the first frame update
    void Start()
    {
        if (!m_ControllerVibration)
            m_ControllerVibration = FindObjectOfType<ControllerVibration>();

        m_settings = GetComponent<LevelSettings>();

        m_Main_UI = FindObjectOfType<GameMain>();

        m_Timer.StageTime = m_settings.TimeLimit;

        m_Timer.onTimerEnd = GameOver;

        //! ParentPenguinの取得
        m_ParentPenguin = FindObjectOfType<ParentPenguin>();
        m_ParentPenguin.onKillEvent = GameOver;
        m_ParentPenguin.manager = this;

        m_PenguinJoin.onReachedDestination = OnReachedDestination;
        m_PenguinJoin.onReachedDestinationDeath = OnReachedDestinationDeath;

        m_Score = FindObjectOfType<CurrentScore>();

        //! GoalTileの取得
        GoalTile[] goalTiles = FindObjectsOfType<GoalTile>();
        if (goalTiles.Length > 0)
        {
            foreach (GoalTile goal in goalTiles)
            {
                m_GoalTiles.Add(goal);

                //! Event登録
                goal.OnClearEvent += OnClearEvent;
            }
        }

        //! 各カウントの開始
        ChildPenguin[] childPenguins = FindObjectsOfType<ChildPenguin>();
        if (childPenguins.Length > 0)
        {
            m_NomadCount = m_TotalCount = childPenguins.Length;

            //! ChilePenguinの取得
            foreach (ChildPenguin child in childPenguins)
            {
                m_ChildPenguins.Add(child);

                //! Event登録
                child.onKillEvent = OnKillEvent;
                child.onPackEvent = OnStart;

                child.manager = this;

                //! 群れに追加
                if (child.InPack)
                {
                    m_ParentPenguin.AddToPack(child);
                }

                child.onPackEvent = OnPackEvent;
                if (m_ParentPenguin.Boss)
                {
                    child.Boss();
                }
            }
        }

        //! ペンギンのトータル数をカウントし終えたのでクリアタスク計算
        m_settings.SetRescueTask(m_TotalCount);

        //! ステージスタート演出処理
        StartEnshutsu_Start();
    }

    //! 死亡時イベント(子ペンギン)
    public void OnKillEvent(ChildPenguin child)
    {
        bool pack;
        if (child.InPack)
            pack = true;
        else
            pack = false;

        m_PenguinJoin.StartKill(m_Camera.WorldToScreenPoint(child.transform.position), pack);
    }

    public void OnReachedDestinationDeath(bool inpack)
    {
        if (inpack)
            m_PackCount--;
        else
            m_NomadCount--;

        m_DeadCount++;

        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }

        m_Score.JudgeScore(this);

        // 子ペンギンの犠牲数によるゲームオーバーチェック
        if (m_settings.CheckGameOver(m_DeadCount) && !m_settings.m_clear_flag)
        {
            //UI非表示
            if (m_Main_UI != null)
            {
                m_Main_UI.HideTutorial();
            }

            StartCoroutine(ToNextScene());
        }
    }

    //! 死亡時イベント(親ペンギン)
    public void GameOver()
    {
        if (!m_settings.m_clear_flag)
        {
            m_settings.m_failure_flag = true;

            //UI非表示
            if (m_Main_UI != null)
            {
                m_Main_UI.HideTutorial();
            }

            StartCoroutine(ToNextScene());
        }
    }

    //! 群れ化時イベント
    public void OnPackEvent(Vector3 childpos)
    {
        m_PenguinJoin.StartJoin(m_Camera.WorldToScreenPoint(childpos));
    }

    public void OnReachedDestination()
    {
        m_PackCount++;
        m_NomadCount--;
        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }

        m_Score.JudgeScore(this);
    }

    public void OnStart(Vector3 childpos)
    {
        m_PackCount++;
        m_NomadCount--;
        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }
    }

    public bool CheckParentPenguinAlive()
    {
        return m_ParentPenguin.isActiveAndEnabled;
    }

    // クリアイベント
    public void OnClearEvent(GameObject goal)
    {
        m_InGoalEnshutsu = true;
        m_settings.m_clear_flag = true;

        m_Score.JudgeScore(this);
        
        // ペンギンの声再生停止
        m_pen_voices.m_is_play = false;

        // クリアデータ１次保存(SaveSystemオブジェクトがない場合は無視)
        CurrentScore _Score = FindObjectOfType<CurrentScore>();
        if (_Score != null) _Score.JudgeScore(this);

        m_ParentPenguin.StageClear(goal, m_ParentPenguin.Boss);

        foreach (ChildPenguin child in m_ChildPenguins)
        {
            child.StageClear(goal, m_ParentPenguin.Boss);
        }


        //UI非表示
        if (m_Main_UI != null)
        {
            m_Main_UI.SetEnable(true);
            m_Main_UI.ShowMainUI(true);
        }
    }

    //! ステージスタート演出処理_第1段階
    private void StartEnshutsu_Start()
    {
        if (!m_ParentPenguin.Boss)
        {
            m_ParentPenguin.transform.position = new Vector3(m_ParentPenguin.transform.position.x, m_ParentPenguin.transform.position.y + m_StartHeight, m_ParentPenguin.transform.position.z);
            m_ParentPenguin.GetComponent<Rigidbody>().useGravity = false;

            foreach (ChildPenguin child in m_ChildPenguins)
            {
                if (child.InPack)
                {
                    child.transform.position = new Vector3(child.transform.position.x, child.transform.position.y + m_StartHeight, child.transform.position.z);
                    child.GetComponent<Rigidbody>().useGravity = false;
                }
            }
        }
    }

    //! ステージスタート演出処理_第2段階
    public void StartEnshutsu_End()
    {
        if (!m_ParentPenguin.Boss)
        {
            Vector3 downForce = new Vector3(0.0f, -40f);

            m_ParentPenguin.GetComponent<Rigidbody>().useGravity = true;
            m_ParentPenguin.GetComponent<Rigidbody>().AddForce(downForce, ForceMode.Impulse);

            foreach (ChildPenguin child in m_ChildPenguins)
            {
                if (child.InPack)
                {
                    child.GetComponent<Rigidbody>().useGravity = true;
                    child.GetComponent<Rigidbody>().AddForce(downForce / 2, ForceMode.Impulse);
                }
            }

            StartCoroutine(StartEnshutsu_Fall()); 
        }
    }

    //!ゴール演出をスキップするためのフラグ変更
    public void StopGoalPlaying()
    {
        m_ParentPenguin.m_ClearAnimationEnded = true; 
    }

    // シーン遷移
    IEnumerator ToNextScene()
    {
        if (!m_settings.m_clear_flag && !m_settings.m_failure_flag)
            yield break;

        //二回遷移防止
        if (m_IsSceneChanging)
            yield break;

        m_IsSceneChanging = true;

        //Destroy(m_Input.gameObject);

        yield return new WaitForEndOfFrame();

        // ペンギンの声再生停止
        m_pen_voices.m_is_play = false;

        if (m_settings.m_failure_flag && !m_settings.m_clear_flag)
        {
            m_GameoverUI.ShowGameOver((m_Timer.StageTime == 0) ? true : false);
            m_ParentPenguin.gameObject.SetActive(false);
        }
        

        bool[] _flags = new bool[2]{m_settings.m_failure_flag, m_settings.m_clear_flag};

        yield return new WaitForEndOfFrame();

        //フェードアウト待機
        m_Fade.Fader(false);

        while (!m_Fade.CheckFadedout())
        {
            if(!this)
            {
                yield break;
            }
            yield return null;
        }

        //yield return new WaitForSecondsRealtime(1.5f);

        //!全エフェクト停止
        EffekseerSystem.StopAllEffects();
        // 全効果音停止
        SoundEffect.Instance.StopLoopSEAll();

        // クリア時
        if (_flags[1])
        {
            SceneManager.LoadScene(m_scene_list.m_Result);
            yield return null;
        }
        // 失敗時
        else if (_flags[0] && !_flags[1])
        {
            SceneManager.LoadScene(m_scene_list.m_GameOver);
            yield return null;
        }
    }

    IEnumerator StartEnshutsu_Fall()
    {
        yield return new WaitForSecondsRealtime(0.6f);

        m_ControllerVibration.AddShake(0.4f, 0.15f);

        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Start_Landing);
    }

    void Update()
    {
        //deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        //float fps = 1.0f / deltaTime;
        //Debug.Log(Mathf.Ceil(fps).ToString());

        if (m_InGoalEnshutsu)
        {
            m_PenguinJoin.EndJoin();
            int jumpedNum = 0;
            foreach (ChildPenguin child in m_ChildPenguins)
            {
                if (child.InPack)
                {
                    if (child.m_ClearAnimationEnded)
                    {
                        jumpedNum++;

                        if (jumpedNum >= m_PackCount)
                        {
                            m_ParentPenguin.m_EveryoneJumped = true;
                        }
                    }
                }
            }
            if (m_ParentPenguin.m_ClearAnimationEnded)
            {
                StartCoroutine(ToNextScene());
            }

        }

    }

    public void SkipGoalAnimation()
    {
        StartCoroutine(ToNextScene());
    }

}