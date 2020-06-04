using System.Collections;
using System.Collections.Generic;
using System.Security.AccessControl;
using UnityEngine;

//! Penguinの総括
[RequireComponent(typeof(LevelSettings))]
public class PenguinManager : MonoBehaviour
{
    [SerializeField, NonEditableField, Tooltip("このレベルの数値情報")]
    public LevelSettings m_settings;

    //! 子ペンギンの総数
    [SerializeField,NonEditableField, Space(30)]
    public int m_TotalCount = 0;
    //! 死亡数
    [SerializeField,NonEditableField]
    public int m_DeadCount = 0;
    //! 群れ化数
    [SerializeField,NonEditableField]
    public int m_PackCount = 0;
    //! 野良ペンギン数
    [SerializeField,NonEditableField]
    public int m_NomadCount = 0;

    [SerializeField, Tooltip("UI要素：ゲームタイマー")]
    private StageTimer m_Timer;

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

    //! 起動状態から最後にクリアしたゲームデータ(DontDestroyOnLoadより取り出し)
    private CurrentScore m_Score = null;

    // Start is called before the first frame update
    void Start()
    {
        SaveSystem m_SaveSystem = FindObjectOfType<SaveSystem>();
        if (m_SaveSystem != null) m_Score = m_SaveSystem.GetComponent<CurrentScore>();

        m_settings = GetComponent<LevelSettings>();

        m_Timer.StageTime = m_settings.TimeLimit;

        m_Timer.onTimerEnd = GameOver;

        //! ParentPenguinの取得
        m_ParentPenguin = FindObjectOfType<ParentPenguin>();
        m_ParentPenguin.onKillEvent = GameOver;
        m_ParentPenguin.manager = this;

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
                child.onPackEvent = OnPackEvent;

                child.manager = this;

                //! 群れに追加
                if (child.InPack)
                {
                    m_ParentPenguin.AddToPack(child);
                }

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
    }

	//! 死亡時イベント(親ペンギン)
	public void GameOver()
	{
        m_settings.m_failuer_flag = true;
	}

	//! 群れ化時イベント
	public void OnPackEvent()
    {
        m_PackCount++;
        m_NomadCount--;

        foreach (GoalTile goal in m_GoalTiles)
        {
            goal.m_PenguinCount = (uint)m_PackCount;
        }
    }

    public void OnClearEvent(GameObject goal)
    {
        m_InGoalEnshutsu = true;

        m_ParentPenguin.StageClear(goal);

        m_settings.m_clear_flag = true;

        foreach (ChildPenguin child in m_ChildPenguins)
        {
            child.StageClear(goal);
        }

        // クリアデータ１次保存
        m_Score.m_data.m_Time = m_Timer.StageTime;
        m_Score.m_data.m_TotalPenguins = m_TotalCount;
        m_Score.m_data.m_SavedPenguins = m_PackCount;
        m_Score.m_data.m_Star1 = true;
        m_Score.m_data.m_Star2 = true;
        m_Score.m_data.m_Star3 = true;

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
