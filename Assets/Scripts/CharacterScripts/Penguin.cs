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
    [SerializeField]
    protected GameObject m_Model;
    //! 状態遷移
    [SerializeField]
    private GameObject m_States;
    //! 各ステートのリスト
    private List<PenguinState> m_PenguinStates;

    //! 現ステート
    [SerializeField, NonEditableField]
    protected PenguinState m_CurrentState;

    //! 入力ハンドラー
    [SerializeField, NonEditableField]
    protected InputHandler m_InputHandler;

    //! 再移動可能数値
    [SerializeField, Space(20)]
    private float m_MoveThreshhold = 0.01f;

    //! Rigidbody
    protected Rigidbody m_Rigidbody;

    //! 無敵状態判定
    [SerializeField, NonEditableField]
    protected bool m_Invincible = false;

    //!エフェクトスポーンナー
    public EffectSpawner Effect { get; protected set; }

    [SerializeField]
    private Animator m_Animator;
    public Animator animator { get { return m_Animator; } }

    public PenguinManager manager { get; set; }


    protected virtual void Awake()
    {
        m_PenguinStates = new List<PenguinState>();
    }

    // Start is called before the first frame update
    protected virtual void Start()
    {
        //! Rigidbody設定
        m_Rigidbody = this.GetComponent<Rigidbody>();

        if (m_Animator == null)
            m_Animator.GetComponentInChildren<Animator>();

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

        if (this.IsMoving())
        {
            m_CurrentState.OnMoving();
        }
    }

    protected virtual void FixedUpdate()
    {
        m_CurrentState.OnFixedUpdate();
    }

    /// <summary>
    /// @brief      ペンギンの無敵状態変更処理
    /// </summary>
    public virtual void Invincible(bool inv)
    {
        m_Invincible = inv;
    }

    /// <summary>
    /// @brief      InputHandlerに親ペンギンが動いているかを渡す
    /// @return     動いているか(bool)
    /// </summary>
    public bool IsMoving()
    {
        //! 移動force残ってるか
        return m_Rigidbody.velocity.magnitude > m_MoveThreshhold;
    }

    /// <summary>
    /// @brief      ペンギンの移動処理
    /// @param      移動量(Vector3)
    /// </summary>
    protected virtual void MoveHandler(Vector3 move)
    {
        m_Rigidbody.AddForce(move * m_Rigidbody.mass * 100f,ForceMode.Force);
        m_Model.transform.forward = move;
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill(bool Gimmick)
    {
        
        //! オブジェを無効にする
        gameObject.SetActive(false);

        if (m_Invincible && Gimmick)
        {
            return;
        }

        //! 現ステートの死亡処理呼び出し
        m_CurrentState.OnKill();
    }

    /// <summary>
    /// @brief      State遷移
    /// </summary>
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

    /// <summary>
    /// @brief      落ちてるか判定
    /// </summary>
    public bool GetFall()
    {
        return m_Rigidbody.velocity.y < -2.0f;
    }

    public float GetSpeed()
    {
        return m_Rigidbody.velocity.magnitude;
    }
}