using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Fall : PenguinState
{
    [SerializeField]
    private EffekseerEmitter[] effeck;

    private ParentPenguin parentPenguin = null;

    //! 初期化処理
    public override void OnStart()
    {
        penguin.animator.SetTrigger("OnFall");

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        //!文字エフェクト
        if (parentPenguin != null)
        {
            if (effeck[0] != null)
            {
                effeck[0].Play();
                effeck[1].Play();

            }
        }
    }

    //! 更新処理
    public override void OnUpdate()
    {

        //!エフェクト関連処理
        if (parentPenguin != null)
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
            if (parentPenguin != null)
            {
                if (effeck[0] != null)
                {

                    effeck[0].StopRoot();
                    effeck[1].StopRoot();

                }
            }
            penguin.ChangeState<PenguinState_Idle>();

        }
    }
}
