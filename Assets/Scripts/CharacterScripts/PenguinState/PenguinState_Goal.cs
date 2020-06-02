using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Goal : PenguinState
{
    public override void OnStart()
    {
        if(penguin.TryGetComponent<ParentPenguin>(out var parent))
        {
            parent.UnRegisterInputEvent();
        }
        penguin.animator.SetTrigger("OnGoal");
    }
}
