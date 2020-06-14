﻿/**
* @file     PenguinState_Idle.cs
* @brief    ペンギンステート＿通常
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Idle : PenguinState
{
    [SerializeField]
    private EffekseerEmitter[] m_Effect;

    private ParentPenguin parentPenguin = null;

    [SerializeField]
    private int ChargeEffectNow;

    private float m_IdleTime;
    private float m_IdleCounter;

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        ChargeEffectNow = 0;
        m_IdleCounter = 0f;
        m_IdleTime = TimeRange();
    }

    //! 更新処理
    public override void OnUpdate()
    {
        penguin.animator.SetFloat("Power", penguin.GetSpeed());

        if (parentPenguin != null)
        {
            //!チャージエフェクト処理
            if (m_Effect[0] && m_Effect[1])
            {
                if (parentPenguin.GetInputHandler())
                {
                    if(parentPenguin.GetInputHandler().Power > 0)
					{
                        // チャージ開始
                        parentPenguin.SetChargeSE();
                    }

                    if (parentPenguin.GetInputHandler().Power > (parentPenguin.GetInputHandler().PowerMax * 2) / 4.0f)
                    {
                        if (m_Effect[0].exists)
                        {
                            if (!m_Effect[1].exists)
                            {
                                m_Effect[1].Play();
                            }
                        }
                        else if (!m_Effect[1].exists)
                        {
                            m_Effect[1].Play();
                        }

                    }

                    else if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax / 4.0f)
                    {
                        if (m_Effect[1].exists)
                        {
                            if (!m_Effect[0].exists)
                            {
                                m_Effect[1].StopRoot();
                                m_Effect[0].Play();
                            }
                        }
                        else if (!m_Effect[0].exists)
                        {
                            m_Effect[0].Play();
                        }

                    }
                    else if (parentPenguin.GetInputHandler().Power > 0.0f)
                    {
                    }
                    else
                    {
                        m_Effect[0].Stop();
                        m_Effect[1].Stop();
                    }
                }
            }

        }

        if (penguin.IsMoving())
        {
            if (parentPenguin != null)
            {
                if (m_Effect[0])
                    m_Effect[0].Stop();
                if (m_Effect[1])
                    m_Effect[1].Stop();

                if (parentPenguin.GetControllerVibration())
                {
                    parentPenguin.GetControllerVibration().ChargeShake(0.0f);
                    parentPenguin.GetControllerVibration().AddShake(0.6f, 0.2f);
                }

                if (parentPenguin.GetInputHandler())
                {
                    if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax * 0.4f)
                    {
                        parentPenguin.ChangeState<PenguinState_Dash>();
                    }
                    else
                    {
                        parentPenguin.ChangeState<PenguinState_Walk>();
                    }
                }
            }
            else
            {
                penguin.ChangeState<PenguinState_Walk>();
                return;
            }

            if (penguin.GetFall())
            {
                penguin.ChangeState<PenguinState_Fall>();
                return;
            }
        }
		else
		{
			if (parentPenguin != null)
			{
                // 移動判定の閾値を超えずに移動した場合、IsMoving()はfalseでもVelocityは0でない
                // その場合状態遷移(->Walk, ->Dash)が発生しない
                if (penguin.GetSpeed() > 0)
                {
                    // 入力パワーがゼロ(== チャージしていない)
                    InputHandler _input = parentPenguin.GetInputHandler();
                    if (_input != null)
                    {
                        if (!(_input.Power > 0))
                        {
                            Debug.Log("こ↑こ↓通っとんじゃ～＾");
                            parentPenguin.StopChargeSE();
                        }
                    }
                }
            }
        }

        if (penguin.manager)
        {
            if (penguin.manager.m_settings.m_clear_flag)
            {
                if (parentPenguin != null)
                {
                    if (m_Effect[0])
                        m_Effect[0].Stop();
                    if (m_Effect[1])
                        m_Effect[1].Stop();

                    if (parentPenguin.GetControllerVibration())
                    {
                        parentPenguin.GetControllerVibration().StopAllShake();
                    }

                }

                penguin.ChangeState<PenguinState_Goal>();
                return;
            }

            if (penguin.manager.m_settings.m_failure_flag)
            {
                if (parentPenguin != null)
                {
                    if (m_Effect[0])
                        m_Effect[0].Stop();
                    if (m_Effect[1])
                        m_Effect[1].Stop();

                    if (parentPenguin.GetControllerVibration())
                    {
                        parentPenguin.GetControllerVibration().StopAllShake();
                    }
                }

                penguin.ChangeState<PenguinState_Failed>();
                return;
            }
        }
    }

    public void LateUpdate()
    {
        m_IdleCounter += Time.deltaTime;
    }

    public void FixedUpdate()
    {
        IdleAnimation();
    }

    private void IdleAnimation()
    {
        if (m_IdleCounter < m_IdleTime) return;

        //子ペンギン
        if (parentPenguin == null)
        {
            if (penguin.animator.GetBool("IsJoin"))
            {
                int rand = Random.Range(0, 3);

                penguin.animator.SetInteger("IdleNum", rand);
            }
            else
            {
                penguin.animator.SetTrigger("OnStray");
            }
        }
        //親ペンギン
        else
        {
            parentPenguin.animator.SetTrigger("OnIdle02");
        }
        m_IdleCounter = 0f;
        m_IdleTime = TimeRange();
    }

    private float TimeRange()
    {
        return Random.Range(2f,6f);
    }
}
