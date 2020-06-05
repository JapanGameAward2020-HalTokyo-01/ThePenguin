/**
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
    private ParentPenguin parentPenguin = null;

    private EffekseerEmitter m_Effect;

    [SerializeField]
    private int ChargeEffectNow;

    private float m_IdleTime;
    private float m_IdleCounter;

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        if(!m_Effect)
            m_Effect = GetComponent<EffekseerEmitter>();

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
            if (m_Effect)
            {
                if (parentPenguin.GetInputHandler().Power > (parentPenguin.GetInputHandler().PowerMax * 2) / 4.0f)
                {
                    if (m_Effect.exists)
                    {
                        if (ChargeEffectNow != 3)
                        {
                            m_Effect.StopRoot();
                            m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P3"));
                            ChargeEffectNow = 3;
                        }
                    }
                    else
                    {
                        m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P3"));
                    }

                }

                else if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax / 4.0f)
                {
                    if (m_Effect.exists)
                    {
                        if (ChargeEffectNow != 2)
                        {
                            m_Effect.StopRoot();
                            m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P2"));
                            ChargeEffectNow = 2;
                        }
                    }
                    else
                    {
                        m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P2"));
                    }

                }

                else if (parentPenguin.GetInputHandler().Power > 0.0f)
                {
                    if (m_Effect.exists)
                    {
                        if (ChargeEffectNow != 1)
                        {
                            m_Effect.StopRoot();
                            m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P1"));
                            ChargeEffectNow = 1;
                        }

                    }
                    else
                    {
                        m_Effect.Play(parentPenguin.Effect.GetEffect("ChargeNew_P1"));
                    }

                }
                else
                {
                    m_Effect.StopRoot();
                }
            }

        }

        if (penguin.IsMoving())
        {
            if (parentPenguin != null)
            {
                if (m_Effect)
                    m_Effect.Stop();
                parentPenguin.GetControllerVibration().ChargeShake(0.0f);
                parentPenguin.GetControllerVibration().AddShake(0.6f, 0.2f);
                if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax * 0.4f)
                {
                    parentPenguin.ChangeState<PenguinState_Dash>();
                }
                else
                {
                    parentPenguin.ChangeState<PenguinState_Walk>();
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

        if (penguin.manager.m_settings.m_clear_flag)
        {
            if (m_Effect)
                m_Effect.Stop();

            penguin.ChangeState<PenguinState_Goal>();
            return;
        }

        if (penguin.manager.m_settings.m_failuer_flag)
        {
            if (m_Effect)
                m_Effect.Stop();

            penguin.ChangeState<PenguinState_Failed>();
            return;
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
