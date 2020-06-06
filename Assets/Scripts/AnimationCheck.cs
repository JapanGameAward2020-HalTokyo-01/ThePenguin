using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationCheck : MonoBehaviour
{
    //[NonSerialized]
    public Animator goalAnimator;

    public void EndGoalEnshutsu()
    {
        GetComponentInParent<ChildPenguin>().m_ClearAnimationEnded = true;
    }

    public void TrampolineJump()
    {
        goalAnimator.SetTrigger("OnJump");
    }
}
