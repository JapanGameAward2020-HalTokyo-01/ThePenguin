using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentPenguinAnimator : BaseAnimatorHandler
{
    //Bool Parameters

    //子を持っている true
    public void SetIsHaveChild(bool enable)
    {
        animator.SetBool("IsHaveChild",enable);
    }

    //チャージが最大時 true
    public void SetIsChargeMax(bool enable)
    {
        animator.SetBool("IsChargeMax", enable);
    }

    //走っている true
    public void SetIsDash(bool enable)
    {
        animator.SetBool("IsDash", enable);
    }

    //
    public void SetIsEvent(bool enable)
    {
        animator.SetBool("IsEvent",enable);
    }

    
    //Trigger Parameters

    //
    public void SetMoveStartTrigger()
    {
        animator.SetTrigger("MoveStart");
    }

    //
    public void SetIdleTrigger()
    {
        animator.SetTrigger("IdleTrigger");
    }

    //
    public void SetChargeTrigger()
    {
        animator.SetTrigger("ChargeTrigger");
    }

    //
    public void SetEventCrash()
    {
        SetIsEvent(true);
        animator.SetTrigger("EventCrash");
    }

    //
    public void SetEventFallFailed()
    {
        SetIsEvent(true);
        animator.SetTrigger("EventFall");
    }

    //
    public void SetEventFailed()
    {
        SetIsEvent(true);
        animator.SetTrigger("EventFailed");
    }

    //
    public void SetEventGoal()
    {
        SetIsEvent(true);
        animator.SetTrigger("EventGoal");
    }

}
