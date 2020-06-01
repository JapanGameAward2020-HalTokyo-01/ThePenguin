using System.Collections;
using System.Collections.Generic;
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

    //! ステージゴール
    [SerializeField, NonEditableField]
    private List<GoalTile> m_GoalTiles = new List<GoalTile>();

    private SaveSystem m_SaveSystem;

    private GameData m_GameData;

    // Start is called before the first frame update
    void Start()
    {
        SaveSystem m_SaveSystem = FindObjectOfType<SaveSystem>();
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
                goal.m_ClearCount = (uint)Mathf.Max(m_TotalCount - m_settings.DeadLine, 0.0f);

                //! Event登録
                goal.OnClearEvent = OnClearEvent;
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
        m_settings.CheckGameOver();
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

    public void OnClearEvent(Vector3 goalPos)
    {
        m_ParentPenguin.StageClear(goalPos);

        foreach (ChildPenguin child in m_ChildPenguins)
        {
            child.StageClear(goalPos);
        }
    }



    void Update()
    {
        //deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        //float fps = 1.0f / deltaTime;
        //Debug.Log(Mathf.Ceil(fps).ToString());
    }
}
