﻿/**
* @file     PenguinState_Walk.cs
* @brief    ペンギンステート＿歩く
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Walk : PenguinState
{

    private float EffectTimer;
    private float EfecctTimeMax = 0.5f;

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
                pp.Effect.PlayerEffect("bigfoot", pos);

                if ((int)EffectTimer >= 4.0f)
                {
                    pos.y += 0.5f;
                    pp.Effect.PlayerEffect("PE", pos, new Vector3(0.5f, 0.5f, 0.5f));
                    pos.y -= 0.5f;
                    pp.Effect.PlayerEffect("TA", pos, new Vector3(0.5f, 0.5f, 0.5f));
                }

                EffectTimer -= 30.0f * Time.deltaTime;

                if (EffectTimer <= 0)
                    EffectTimer = EfecctTimeMax;
            }
            else
            {
                penguin.Effect.PlayerEffect("smallfoot", pos);
            }
        }

        if (!penguin.IsMoving())
        {
            if (penguin.GetFall())
            {
                penguin.ChangeState<PenguinState_Fall>();
            }

            penguin.ChangeState<PenguinState_Idle>();
        }
    }
}
