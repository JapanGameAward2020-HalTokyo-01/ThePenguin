﻿/// <summary>
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
    //! 状態遷移
    [SerializeField]
    private GameObject m_States;
    private List<PenguinState> m_PenguinStates;

    [SerializeField, NonEditableField]
    protected PenguinState m_CurrentState;

    protected Rigidbody m_Rigidbody;

    [SerializeField, NonEditableField]
    protected bool m_Invincible = false;
    public void SetInvincible(bool inv) 
    { 
        m_Invincible = inv;  
    }

    protected virtual void Awake()
    {
        m_PenguinStates = new List<PenguinState>();
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
        m_CurrentState.OnFixedUpdate();
    }

    //! 移動処理はここに集約させる
    protected virtual void MoveHandler(Vector3 move)
    {
        m_Rigidbody.AddForce(move * m_Rigidbody.mass * 100f,ForceMode.Force);
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill()
    {
        if (!m_Invincible)
        {
            //! オブジェを無効にする
            gameObject.SetActive(false);

            m_CurrentState.OnKill();
        }
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
}