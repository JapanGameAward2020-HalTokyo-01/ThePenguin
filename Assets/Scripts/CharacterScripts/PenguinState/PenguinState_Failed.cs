using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Failed : PenguinState
{
    public override void OnStart()
    {
        penguin.animator.SetTrigger("OnFailed");
    }
}
