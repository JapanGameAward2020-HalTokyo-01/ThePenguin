using Effekseer;
using System;
using System.Collections;
using System.Collections.Generic;
using TrailsFX;
using UnityEngine;

public class AnimationCheck : MonoBehaviour
{
    //[NonSerialized]
    public Animator goalAnimator;
    private TrailEffect trailEffect;
    private EffectSpawner Effect;
    [SerializeField]
    private GameObject main;
    private Vector3 goalpos;
    protected void Awake()
    {

        trailEffect = GetComponentInChildren<TrailEffect>();
        if (trailEffect)
        {
            trailEffect.active = false;
        }
        
        Effect = GetComponentInParent<EffectSpawner>();
        
    }
    public void EndGoalEnshutsu()
    {
        //trailEffect.active = false;
        var cp = GetComponentInParent<Penguin>();
        if (cp)
        {
            cp.m_ClearAnimationEnded = true;
        }

    }

    public void TrampolineJump()
    {
        if (trailEffect)
        {
            trailEffect.active = true;
        }
        
        if(main.TryGetComponent<ChildPenguin>(out var _cp))
        {
            float xpos = UnityEngine.Random.Range(0, 60) / 10.0f - 3;
            float zpos = UnityEngine.Random.Range(0, 60) / 10.0f - 3;

            goalpos = _cp.GetGoalPos();

            Vector3 jumpgoal = new Vector3(goalpos.x + xpos, goalpos.y + 10, goalpos.z + zpos);
            _cp.transform.LookAt(jumpgoal);
        }
        Effect.PlayerEffect("wallcrash", transform.position, new Vector3(1, 1, 1));
        goalAnimator.SetTrigger("OnJump");

    }
}
