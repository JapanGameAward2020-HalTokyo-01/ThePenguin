using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Failed : PenguinState
{
    public override void OnStart()
    {
        penguin.animator.SetTrigger("OnFailed");

        ParentPenguin _parent = penguin.GetComponent<ParentPenguin>();
        if (_parent != null)
		{
            // チャージ音消す
            _parent.StopChargeSE();
        }
    }
}
