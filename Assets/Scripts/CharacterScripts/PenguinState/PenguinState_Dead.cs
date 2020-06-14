using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Dead : PenguinState
{
    //! 初期化処理
    public override void OnStart()
    {
        penguin.Effect.PlayerEffect("WAAAAAA_P1", transform.position);
    }
}
