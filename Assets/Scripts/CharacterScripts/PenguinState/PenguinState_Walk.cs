/**
* @file     PenguinState_Walk.cs
* @brief    ペンギンステート＿歩く
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Walk : PenguinState
{

    private int EffectTimer;
    [SerializeField] private int EfecctTimeMax =5;

    //! 初期化処理
    public override void OnStart()
    {
        EffectTimer = EfecctTimeMax;
    }

    //! 更新処理
    public override void OnUpdate()
    {
        penguin.animator.SetFloat("Power", penguin.GetSpeed());

        if (penguin.Effect != null)
        {
            var pos = this.gameObject.GetComponentInParent<Transform>().position;

            if(penguin.TryGetComponent<ParentPenguin>(out var pp))
            {
                EffectTimer--;

                if (EffectTimer <= 0)
                {

                    pp.Effect.PlayerEffect("BigFoot_New", pos);
                    EffectTimer = EfecctTimeMax;
                }
            }
            else
            {
                EffectTimer--;
               
                if (EffectTimer <= 0)
                {

                    penguin.Effect.PlayerEffect("SmallFoot_New", pos);
                    EffectTimer = EfecctTimeMax;
                }
                
            }
        }

        if (!penguin.IsMoving())
        {
            penguin.ChangeState<PenguinState_Idle>();
            return;
        }

        if (penguin.GetFall())
        {
            penguin.ChangeState<PenguinState_Fall>();
            return;
        }

        if (penguin.manager)
        {
            if (penguin.manager.m_settings.m_clear_flag)
            {
                penguin.ChangeState<PenguinState_Goal>();
                return;
            }

            if (penguin.manager.m_settings.m_failure_flag)
            {
                penguin.ChangeState<PenguinState_Failed>();
                return;
            }
        }
    }
}
