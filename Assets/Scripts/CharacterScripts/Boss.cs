/// <summary>
/// @file	Boss.cs
/// @brief	ボスクラス
/// @author	李爾捷
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss : MonoBehaviour
{
    [SerializeField]
    protected GameObject m_Model;

    //! 状態遷移
    [SerializeField]
    private GameObject m_States;
    //! 各ステートのリスト
    private List<BossState> m_BossStates;

    //! 現ステート
    [SerializeField, NonEditableField]
    protected BossState m_CurrentState;

    [SerializeField]
    private Animator m_Animator;
    public Animator animator { get { return m_Animator; } }

    public List<BossGimmickManager> m_BossGimmickManagers  { get; set; }

    private void Awake()
    {
        m_BossStates = new List<BossState>();
        m_BossGimmickManagers = new List<BossGimmickManager>();
    }

    private void Start()
    {

        if (m_Animator == null)
            m_Animator.GetComponentInChildren<Animator>();

        //! GoalTileの取得
        BossGimmickManager[] bossGimmickManagers = FindObjectsOfType<BossGimmickManager>();
        if (bossGimmickManagers.Length > 0)
        {
            foreach (BossGimmickManager manager in bossGimmickManagers)
            {
                m_BossGimmickManagers.Add(manager);
            }
        }

        //! BossStateを設定
        if (m_States)
        {
            BossState[] states = m_States.GetComponentsInChildren<BossState>();
            if (states.Length > 0)
            {
                foreach (BossState state in states)
                {
                    m_BossStates.Add(state);
                    state.Init(this);
                }

                m_CurrentState = m_BossStates[0];
            }
        }

        //! CurrentStateの設定
        m_CurrentState.OnStart();
    }

    private void Update()
    {
        m_CurrentState.OnUpdate();
    }

    private void FixedUpdate()
    {
        m_CurrentState.OnFixedUpdate();
    }

    /// <summary>
    /// @brief      State遷移
    /// </summary>
    public bool ChangeState<Type>() where Type : BossState
    {
        //! リストから探査する
        foreach (BossState state in m_BossStates)
        {
            if (state.GetType() != typeof(Type)) continue;

            m_CurrentState.OnRelease();

            m_CurrentState = state;

            m_CurrentState.OnStart();

            return true;
        }

        return false;
    }
}
