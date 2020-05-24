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
    //!エフェクトスポーンナー
    private EffectSpawner Effect;

    private float EffectTimer;
    private float EfecctTimeMax = 0.5f;

    //! 初期化処理
    public override void OnStart()
    {
        Effect = GetComponent<EffectSpawner>();

        EffectTimer = EfecctTimeMax;
    }

    //! 更新処理
    public override void OnUpdate()
    {
        if (Effect != null)
        {
            var pos = this.gameObject.GetComponentInParent<Transform>().position;

            if(penguin.TryGetComponent<ParentPenguin>(out var pp))
            {
                Effect.PlayerEffect("bigfoot", pos);
            }
            else
            {
                Effect.PlayerEffect("smallfoot", pos);
            }


            if ((int)EffectTimer >= 4.0f)
            {
                pos.y += 0.5f;
                Effect.PlayerEffect("PE", pos, new Vector3(0.5f, 0.5f, 0.5f));
                pos.y -= 0.5f;
                Effect.PlayerEffect("TA", pos, new Vector3(0.5f, 0.5f, 0.5f));
            }

            EffectTimer -= 30.0f * Time.deltaTime;

            if (EffectTimer <= 0)
                EffectTimer = EfecctTimeMax;
        }

        if (!penguin.IsMoving())
        {
            penguin.ChangeState<PenguinState_Idle>();
        }
    }
}
