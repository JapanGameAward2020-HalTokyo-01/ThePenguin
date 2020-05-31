using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossState_Idle : BossState
{
    //! 更新処理
    public override void OnUpdate()
    {
        if(m_Boss.m_BossGimmickManager.GetTimer() <= 0.0f)
        {
            m_Boss.animator.SetBool("OnAttack", true);
            m_Boss.ChangeState<BossState_Attack>();
        }
    }
}
