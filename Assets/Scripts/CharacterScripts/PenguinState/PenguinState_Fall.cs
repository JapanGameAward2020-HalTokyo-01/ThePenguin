using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Fall : PenguinState
{
    [SerializeField]
    private EffekseerEmitter[] effeck;

    //! 初期化処理
    public override void OnStart()
    {
        effeck[1].speed *= 2.0f; 
    }

    //! 更新処理
    public override void OnUpdate()
    {

        //!エフェクト関連処理
        {
            //!文字エフェクト
            if (!effeck[0].exists)
            {
                effeck[1].Play();
                effeck[0].Play();
            }

        }

        if (!penguin.GetFall())
        {
            effeck[0].StopRoot();
            effeck[1].StopRoot();
            penguin.ChangeState<PenguinState_Idle>();

        }

    }
}
