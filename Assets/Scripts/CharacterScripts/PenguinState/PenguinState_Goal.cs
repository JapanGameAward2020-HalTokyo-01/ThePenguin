using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Goal : PenguinState
{
    EffekseerEmitter m_Effect;

    public override void OnStart()
    {
        if(penguin.TryGetComponent<ParentPenguin>(out var parent))
        {
            parent.UnRegisterInputEvent();

            // チャージ音消す
            parent.StopChargeSE();

            if (!m_Effect)
                m_Effect = GetComponent<EffekseerEmitter>();
        }
        //penguin.animator.SetTrigger("OnGoal");
    }

    public void EffectPlay()
    {
        if (m_Effect)
            m_Effect.Play();
    }

    public void EffectStop()
    {
        if (m_Effect)
            m_Effect.StopRoot();
    }
}
