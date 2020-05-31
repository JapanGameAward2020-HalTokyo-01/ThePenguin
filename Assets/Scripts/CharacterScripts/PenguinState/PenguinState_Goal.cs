using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Goal : PenguinState
{
    public override void OnStart()
    {
        penguin.animator.SetTrigger("OnGoal");
    }
}
