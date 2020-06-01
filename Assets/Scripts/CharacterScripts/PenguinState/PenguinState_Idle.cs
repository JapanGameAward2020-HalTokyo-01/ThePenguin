﻿/**
* @file     PenguinState_Idle.cs
* @brief    ペンギンステート＿通常
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Idle : PenguinState
{
    private ParentPenguin parentPenguin = null;

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();
    }

    //! 更新処理
    public override void OnUpdate()
    {
        penguin.animator.SetFloat("Power", penguin.GetSpeed());

        if (parentPenguin != null)
        {
            parentPenguin.animator.SetInteger("ChildCount", parentPenguin.GetChildCount());
        }

        if (penguin.IsMoving())
        {
            if (parentPenguin != null)
            {
                parentPenguin.GetControllerVibration().ChargeShake(0.0f);
                parentPenguin.GetControllerVibration().AddShake(0.6f, 0.2f);
                if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax * 0.4f)
                {
                    parentPenguin.ChangeState<PenguinState_Dash>();
                }
                else
                {
                    parentPenguin.ChangeState<PenguinState_Walk>();
                }
            }

            if (penguin.GetFall())
            {
                penguin.ChangeState<PenguinState_Fall>();
                return;
            }

            penguin.ChangeState<PenguinState_Walk>();
            return;
        }

        if (penguin.manager.m_settings.IsClear)
        {
            penguin.ChangeState<PenguinState_Goal>();
            return;
        }

        if (penguin.manager.m_settings.IsFailuer)
        {
            penguin.ChangeState<PenguinState_Failed>();
            return;
        }
    }

    public void FixedUpdate()
    {
        if(parentPenguin == null)
        {
            int rand = Random.Range(0, 3);

            penguin.animator.SetInteger("IdleNum", rand);
        }
    }
}
