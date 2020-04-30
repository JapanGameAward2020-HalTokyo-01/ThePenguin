/// <summary>
/// @file	Penguin.cs
/// @brief	ペンギンのベースクラス
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Penguin : MonoBehaviour
{
    //! RayCastの有効化
    static private bool m_IsRayCast = true;

    //! RayCastの判定
    [SerializeField]
    private LayerMask m_CastHitLayer;

    //! 生存変数
    public bool IsAlive { get; protected set; } = true;

    //! 状態遷移
    [SerializeField]
    private GameObject m_States;

    private List<PenguinState> m_PenguinStates;

    [SerializeField]
    protected PenguinState m_CurrentState;

    protected Rigidbody m_Rigidbody;


    protected virtual void Awake()
    {
        m_PenguinStates = new List<PenguinState>();

        m_CurrentState = new PenguinState();
        m_CurrentState.Init(this);
    }

    // Start is called before the first frame update
    protected virtual void Start()
    {
        //! Rigidbody設定
        m_Rigidbody = this.GetComponent<Rigidbody>();

        //! PenguinStateを設定
        if (m_States)
        {
            PenguinState[] states = m_States.GetComponentsInChildren<PenguinState>();
            if (states.Length > 0)
            {
                foreach (PenguinState state in states)
                {
                    m_PenguinStates.Add(state);
                    state.Init(this);
                }

                m_CurrentState = m_PenguinStates[0];
            }
        }

        //! CurrentStateの設定
        m_CurrentState.OnStart();
    }

    // Update is called once per frame
    protected virtual void Update()
    {
        m_CurrentState.OnUpdate();
    }

    protected virtual void FixedUpdate()
    {
        if (m_IsRayCast && IsAlive)
        {
            RaycastHit hit;
            //! Hitしてなければ死亡
            if (!Physics.Raycast(this.transform.position, -this.transform.up, out hit, 10f, m_CastHitLayer))
            {
                Kill();
            }
        }

        m_CurrentState.OnFixedUpdate();
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill()
    {
        //! 生存判定をfalseに
        IsAlive = false;
        //! オブジェを無効にする
        gameObject.SetActive(false);

        m_CurrentState.OnKill();
    }

    //! State遷移
    public bool ChangeState<Type>() where Type : PenguinState
    {
        //! リストから探査する
        foreach(PenguinState state in m_PenguinStates)
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