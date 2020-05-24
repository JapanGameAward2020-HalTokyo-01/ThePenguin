using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Walk : PenguinState
{
    //!エフェクトスポーンナー
    [SerializeField]
    private EffectSpawner Effect;

    //! 初期化処理
    public override void OnStart()
    {
        Effect = GetComponent<EffectSpawner>();
    }

    //! 更新処理
    public override void OnUpdate()
    {
        if (Effect != null)
        {
            Effect.PlayerEffect("bigfoot", this.gameObject.GetComponentInParent<Transform>().position);
        }

        if (!penguin.IsMoving())
        {
            penguin.ChangeState<PenguinState_Idle>();
        }
    }
}
