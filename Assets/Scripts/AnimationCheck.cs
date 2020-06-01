using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationCheck : MonoBehaviour
{
    public void EndGoalEnshutsu()
    {
        GetComponentInParent<ChildPenguin>().m_ClearAnimationEnded = true;
    }
}
