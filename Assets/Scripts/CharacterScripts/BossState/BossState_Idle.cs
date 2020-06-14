/**
* @file     BossState_Idle.cs
* @brief    ボスステート＿通常
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossState_Idle : BossState
{
    //! 更新処理
    public override void OnUpdate()
    {
        if (m_Boss.m_Levelsettings.m_clear_flag)
        {
            m_Boss.ChangeState<BossState_Goal>();
            return;
        }

        foreach (BossGimmickManager manager in m_Boss.m_BossGimmickManagers)
        {
            if (manager.GetTimer() <= 0.5f)
            {
                m_Boss.animator.SetBool("OnAttack", true);
                m_Boss.ChangeState<BossState_Attack>();
                return;
            }
        }
    }
}
