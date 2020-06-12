/**
* @file     BossState_Goal.cs
* @brief    ボスステート＿ゴール
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class BossState_Goal : BossState
{
    EffekseerEmitter m_Effect;

    public override void OnStart()
    {
        if (!m_Effect)
            m_Effect = GetComponent<EffekseerEmitter>();
    }

    public void EffectPlay()
    {
        if (m_Effect && !m_Boss.IsAudience)
            m_Effect.Play();
    }

    public void EffectStop()
    {
        if (m_Effect && !m_Boss.IsAudience)
            m_Effect.StopRoot();
    }
}