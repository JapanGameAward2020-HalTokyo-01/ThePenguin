/**
* @file     PenguinState_Dash.cs
* @brief    ペンギンステート＿高速
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Dash : PenguinState
{
    //!エフェクトスポーンナー
    [SerializeField]
    private EffectSpawner Effect;

    [SerializeField]
    private EffekseerEmitter[] effeck;

    //! 初期化処理
    public override void OnStart()
    {
        Effect = GetComponent<EffectSpawner>();

        effeck[0].speed = 2.0f;
    }

    //! 更新処理
    public override void OnUpdate()
    {

        //!エフェクト関連処理
        {
            //!通常エフェクト
            if (Effect != null)
            {
                var pos = transform.position;
                pos.y -= 1.0f;
                Effect.PlayerEffect("dash", pos);
            }

            //!文字エフェクト
            if (!effeck[0].exists)
            {
                effeck[1].Play();
                effeck[0].Play();
            }

            effeck[0].speed -= 0.1f * Time.deltaTime;
        }

        if (!penguin.IsMoving())
        {
            effeck[0].StopRoot();
            effeck[1].StopRoot();
            penguin.ChangeState<PenguinState_Idle>();

        }

     }
}
