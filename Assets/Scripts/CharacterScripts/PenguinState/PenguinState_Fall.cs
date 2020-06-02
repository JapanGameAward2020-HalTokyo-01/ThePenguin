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
        penguin.animator.SetTrigger("OnFall");

        //!文字エフェクト
        if (effeck[0] != null)
        {
            effeck[0].Play();
            effeck[1].Play();

        }
    }

    //! 更新処理
    public override void OnUpdate()
    {

        //!エフェクト関連処理
        {
            //!文字エフェクト
            if(effeck[0] != null)
            {
                if (!effeck[0].exists)
                {
                    effeck[0].Play();
                }
            }


        }

        if (!penguin.GetFall())
        {
            //!文字エフェクト
            if (effeck[0] != null)
            {

                effeck[0].StopRoot();
                effeck[1].StopRoot();

            }
            penguin.ChangeState<PenguinState_Idle>();

        }
    }
}
