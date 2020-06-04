/**
* @file     BossState_Attack.cs
* @brief    ボスステート＿攻撃
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class BossState_Attack : BossState
{

    EffekseerEmitter m_Effect;

    public override void OnStart()
    {
        base.OnStart();

        if (!m_Effect)
            m_Effect = GetComponent<EffekseerEmitter>();

    }

    //! 更新処理
    public override void OnUpdate()
    {
        if (m_Boss.animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.0f && m_Boss.animator.GetCurrentAnimatorStateInfo(0).IsName("Attack"))
        {
            if (m_Effect)
            {
                if (!m_Effect.exists)
                {
                    m_Effect.Play();
                    m_Boss.GetControllerVibration().AddShake(0.6f, 0.2f);
                }
            }
        }

        if (m_Boss.animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.7f && m_Boss.animator.GetCurrentAnimatorStateInfo(0).IsName("Attack"))
        {
            m_Boss.animator.SetBool("OnAttack", false);
            m_Boss.ChangeState<BossState_Idle>();

            if (m_Effect)
                m_Effect.StopRoot();
        }
    }
}
