using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

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

    //! 親ペンギン
    private ParentPenguin m_ParentPenguin = null;

    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

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
        m_settings = GetComponent<LevelSettings>();

        m_Timer.StageTime = m_settings.TimeLimit;

        m_Timer.onTimerEnd = GameOver;

        //! ParentPenguinの取得
        m_ParentPenguin = FindObjectOfType<ParentPenguin>();
        m_ParentPenguin.onKillEvent = GameOver;
        m_ParentPenguin.manager = this;

        m_PenguinJoin.onReachedDestination = OnReachedDestination;

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

    }

    //! 死亡時イベント(子ペンギン)
    public void OnKillEvent(ChildPenguin child)
    {
        if (child.InPack)
            m_PackCount--;
        else
            m_NomadCount--;

        m_DeadCount++;

        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }

        // 子ペンギンの犠牲数によるゲームオーバーチェック
        m_settings.CheckGameOver(m_DeadCount);
        StartCoroutine("ToNextScene");
    }

    //! 死亡時イベント(親ペンギン)
    public void GameOver()
    {
        m_settings.m_failuer_flag = true;
        StartCoroutine("ToNextScene");
    }

    //! 群れ化時イベント
    public void OnPackEvent(Vector3 childpos)
    {
        m_PenguinJoin.StartJoin(m_Camera.WorldToScreenPoint(childpos));
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

    public void OnReachedDestination()
    {
        m_PackCount++;
        m_NomadCount--;
        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }
    }

    // クリアイベント
    public void OnClearEvent(GameObject goal)
    {
        m_InGoalEnshutsu = true;
        m_settings.m_clear_flag = true;

        // クリアデータ１次保存(SaveSystemオブジェクトがない場合は無視)
        CurrentScore _Score = FindObjectOfType<CurrentScore>();
        if (_Score != null) _Score.JudgeScore(this);

        m_ParentPenguin.StageClear(goal);

        foreach (ChildPenguin child in m_ChildPenguins)
        {
            child.StageClear(goal);
        }

        StartCoroutine("ToNextScene");

        //UI非表示
        var main_ui = FindObjectOfType<GameMain>();
        if (main_ui != null)
        {
            main_ui.SetEnable(true);
            main_ui.ShowMainUI(true);
        }
    }

    // シーン遷移
    IEnumerator ToNextScene()
    {
        if (!m_settings.m_clear_flag && !m_settings.m_failuer_flag)
            yield break;

        Fade _fade = FindObjectOfType<Fade>();
        //アニメーション待機
        yield return new WaitForSecondsRealtime(6.0f);

        //フェードアウト待機
        _fade.Fader();
        yield return new WaitForSecondsRealtime(1.0f);

        // 失敗時
        if (m_settings.m_failuer_flag && !m_settings.m_clear_flag)
        {
            yield return SceneManager.LoadSceneAsync(m_scene_list.m_GameOver.name);
            yield return null;
        }

        // クリア時
        if (m_settings.m_clear_flag && !m_settings.m_failuer_flag)
        {
            yield return SceneManager.LoadSceneAsync(m_scene_list.m_Result.name);
            yield return null;
        }
    }

    void Update()
    {
        //deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        //float fps = 1.0f / deltaTime;
        //Debug.Log(Mathf.Ceil(fps).ToString());

        if (m_InGoalEnshutsu)
        {
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
        }
    }

}