/// <summary>
/// @file	Boss.cs
/// @brief	ボスクラス
/// @author	李爾捷
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;
using Cinemachine;

public class Boss : MonoBehaviour
{
    [SerializeField, NonEditableField, Tooltip("このレベルの数値情報")]
    public LevelSettings m_Levelsettings;

    [SerializeField]
    private GameObject m_Model;

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

    [SerializeField]
    private EffekseerEmitter m_FootEffect;

    [SerializeField, Tooltip("カメラ振動の強さ")]
    private float m_ShakeCameraPower;

    //!振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    public List<BossGimmickManager> m_BossGimmickManagers  { get; set; }

    private void Awake()
    {
        m_BossStates = new List<BossState>();
        m_BossGimmickManagers = new List<BossGimmickManager>();
    }

    private void Start()
    {
        if(!m_Levelsettings)
            m_Levelsettings = FindObjectOfType<LevelSettings>();

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

        if(!m_ControllerVibration)
            m_ControllerVibration = FindObjectOfType<ControllerVibration>();

        if (!m_FootEffect)
            m_FootEffect = this.transform.Find("FootEffect").gameObject.GetComponent<EffekseerEmitter>();
    }

    private void Update()
    {
        m_CurrentState.OnUpdate();
    }

    private void FixedUpdate()
    {
        m_CurrentState.OnFixedUpdate();
    }

    public ControllerVibration GetControllerVibration()
    {
        return m_ControllerVibration;
    }

    public void CameraShake()
    {
        var cinemachineImpulseSource = GetComponent<CinemachineImpulseSource>();

        if (cinemachineImpulseSource)
            cinemachineImpulseSource.GenerateImpulse(new Vector3(m_ShakeCameraPower, m_ShakeCameraPower, m_ShakeCameraPower));

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

    public BossState GetCurrentState()
    {
        return m_CurrentState;
    }
}
