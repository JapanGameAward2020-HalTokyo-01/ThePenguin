/**
* @file     BossState_Start.cs
* @brief    ボスステート＿開始
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossState_Start : BossState
{
    StartCameraSystem StartSystem;

    public override void OnStart()
    {
        base.OnStart();

        StartSystem = FindObjectOfType<StartCameraSystem>();
    }

    //! 更新処理
    public override void OnUpdate()
    {
        //if (!StartSystem.GetNowPlaying())
        {

            m_Boss.animator.SetBool("IsOpeningOver", true);

            m_Boss.ChangeState<BossState_Idle>();
        }
    }
}
