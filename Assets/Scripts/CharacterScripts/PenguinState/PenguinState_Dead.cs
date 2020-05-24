using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Dead : PenguinState
{
    //! 初期化処理
    public override void OnStart()
    {
        penguin.GetEffectSpawner().PlayerEffect("hitten", transform.position);
    }
}
