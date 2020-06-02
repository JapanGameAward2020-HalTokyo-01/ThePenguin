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

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        m_Effect = GetComponent<EffekseerEmitter>();
        ChargeEffectNow = 0;
    }

    //! 更新処理
    public override void OnUpdate()
    {
        penguin.animator.SetFloat("Power", penguin.GetSpeed());

        if (parentPenguin != null)
        {
            parentPenguin.animator.SetInteger("ChildCount", parentPenguin.GetChildCount());

            //!チャージエフェクト処理
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
            }

        }

        if (penguin.IsMoving())
        {
            if (parentPenguin != null)
            {
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

        if (penguin.manager.GetIsClear())
        {
            penguin.ChangeState<PenguinState_Goal>();
            return;
        }

        if (penguin.manager.GetIsGameOver())
        {
            penguin.ChangeState<PenguinState_Failed>();
            return;
        }
    }

    public void FixedUpdate()
    {
        if(parentPenguin == null)
        {
            int rand = Random.Range(0, 3);

            penguin.animator.SetInteger("IdleNum", rand);
        }
    }
}
