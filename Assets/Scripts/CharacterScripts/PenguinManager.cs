using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//! Penguinの総括
public class PenguinManager : MonoBehaviour
{
    //! ゲームオーバーになる為の子ペンギンの死亡数
    [SerializeField, Tooltip("ゲームオーバーになる為の子ペンギンの死亡数"), Range(0.0f, 100.0f)]
    public int m_MaxDead = 0;
    [SerializeField, Tooltip("ゲームオーバーまでの時間(秒数)")]
    private int m_Time = 0;
    [SerializeField, Tooltip("ステージ番号")]
    private int m_StateNumber = 0;

    [SerializeField, Space(30)]
    //! ゲームオーバー判定
    public bool m_GameOver = false;
    [SerializeField]
    public bool m_GameClear = false;
    //! 子ペンギンの総数
    [SerializeField, NonEditableField]
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

    [SerializeField]
    private StageTimer m_Timer;

    //! 親ペンギン
    private ParentPenguin m_ParentPenguin = null;

    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    #region ゴール演出関係
    //! ステージゴール
    private List<GoalTile> m_GoalTiles = new List<GoalTile>();

    //! ゴール演出中判定
    private bool m_InGoalEnshutsu = false;

    //! ゴール演出用カメラ
    [SerializeField]
    private GameObject m_EndCamera;

    #endregion

    private SaveSystem m_SaveSystem;

    private GameData m_GameData;

    // Start is called before the first frame update
    void Start()
    {
        SaveSystem m_SaveSystem = FindObjectOfType<SaveSystem>();

        m_GameOver = false;

        m_Timer.StageTime = m_Time;

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

        if (m_MaxDead >= m_DeadCount)
        {
            m_GameOver = true;
        }
    }

    //! 死亡時イベント(親ペンギン)
    public void GameOver()
    {
        m_GameOver = true;
    }

    //! 群れ化時イベント
    public void OnPackEvent()
    {
        m_PackCount++;
        m_NomadCount--;
    }

    //! ステージクリアイベント
    public void OnClearEvent(Vector3 goalPos)
    {
        if (m_EndCamera != null)
        {
            m_EndCamera.SetActive(true);
        }

        m_ParentPenguin.StageClear(goalPos);

        foreach (ChildPenguin child in m_ChildPenguins)
        {
            child.StageClear(goalPos);
        }

        m_InGoalEnshutsu = true;
    }

    public bool GetIsClear()
    {
        return m_GameClear;
    }

    public bool GetIsGameOver()
    {
        return m_GameOver;
    }

    void Update()
    {
        //deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        //float fps = 1.0f / deltaTime;
        //Debug.Log(Mathf.Ceil(fps).ToString());

        //
        if (m_InGoalEnshutsu)
        {
            int jumpedNum = 0;
            foreach (ChildPenguin child in m_ChildPenguins)
            {
                if (child.InPack)
                {
                    if (child.GetComponentInChildren<Animator>().GetBool("IsGoalOver"))
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
