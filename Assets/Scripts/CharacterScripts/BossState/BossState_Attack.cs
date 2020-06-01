/**
* @file     BossState_Attack.cs
* @brief    ボスステート＿攻撃
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossState_Attack : BossState
{
    //! 更新処理
    public override void OnUpdate()
    {
        //if (m_Boss.animator.GetAnimatorTransitionInfo(0).normalizedTime >= 1.0f)
        //{
        //    m_Boss.animator.SetBool("OnAttack", false);
        //    m_Boss.ChangeState<BossState_Idle>();
        //}
    }
}
