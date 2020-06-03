/**
* @file     BossState_Start.cs
* @brief    ボスステート＿開始
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class BossState_Start : BossState
{
    StartCameraSystem StartSystem;

    EffekseerEmitter m_Effect;

    public override void OnStart()
    {
        base.OnStart();

        if (!StartSystem)
            StartSystem = FindObjectOfType<StartCameraSystem>();

        if(!m_Effect)
            m_Effect = GetComponent<EffekseerEmitter>();

        if (m_Effect)
            m_Effect.Play();


    }

    //! 更新処理
    public override void OnUpdate()
    {
        //if (!StartSystem.GetNowPlaying())
        {
            m_Boss.GetControllerVibration().AddShake(0.7f, 0.4f);
            m_Boss.animator.SetBool("IsOpeningOver", true);

            m_Boss.ChangeState<BossState_Idle>();

            if (m_Effect)
                m_Effect.StopRoot();
        }
    }
}
