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

    EffekseerEmitter m_Effect;
    //int old;
    public  int now;
    public float power;
public override void OnStart()
    {
        m_Effect = GetComponent<EffekseerEmitter>();
        now = 0;
        power = 0;
    }

    //! 更新処理
    public override void OnUpdate()
    {
        
        if (penguin.TryGetComponent<ParentPenguin>(out var pp))
        {
            power = pp.GetInputHandler().Power;
            if (pp.GetInputHandler().Power > (pp.GetInputHandler().PowerMax * 2) / 4.0f)
            {
                if (m_Effect.exists)
                {
                    if (now != 3)
                    {
                        m_Effect.StopRoot();
                        m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P3"));
                        now = 3;
                    }
                }
                else
                {
                    m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P3"));
                }
              
            }

            else if (pp.GetInputHandler().Power > pp.GetInputHandler().PowerMax / 4.0f )
            {
                if (m_Effect.exists)
                {
                    if (now != 2)
                    {
                        m_Effect.StopRoot();
                        m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P2"));
                        now = 2;
                    }
                }
                else
                {
                    m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P2"));
                }

            }

            else if (pp.GetInputHandler().Power > 0.0f)
            {
                if (m_Effect.exists)
                {
                    if (now != 1)
                    {
                        m_Effect.StopRoot();
                        m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P1"));
                        now = 1;
                    }
                   
                }
                else
                {
                    m_Effect.Play(pp.Effect.GetEffect("ChargeNew_P1"));
                }

            }

            if (pp.IsMoving())
            {
                m_Effect.Stop();
                if (pp.GetInputHandler().Power > pp.GetInputHandler().PowerMax * 0.4f)
                {
                    pp.ChangeState<PenguinState_Dash>();
                    return;
                }
                
                {
                    pp.ChangeState<PenguinState_Walk>();
                    return;
                }
            }

            else if (penguin.GetFall())
            {
                penguin.ChangeState<PenguinState_Fall>();
                return;
            }
        }

        if (penguin.IsMoving())
        {
            {
                penguin.ChangeState<PenguinState_Walk>();
                return;
            }
        }

        else if (penguin.GetFall())
        {
            penguin.ChangeState<PenguinState_Fall>();
            return;
        }
    }

}