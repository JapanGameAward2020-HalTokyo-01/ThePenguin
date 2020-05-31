using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationCheck : MonoBehaviour
{
    public void EndGoalEnshutsu()
    {
        GetComponent<Animator>().SetBool("GoalEnshutsuEnd", true);
    }
}
