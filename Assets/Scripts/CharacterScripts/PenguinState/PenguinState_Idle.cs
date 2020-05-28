/**
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
        if(parentPenguin != null)
        {
            parentPenguin.animator.SetInteger("ChildCount", parentPenguin.GetChildCount());
        }

        if (penguin.IsMoving())
        {
            if (parentPenguin != null)
            {
                if (parentPenguin.GetInputHandler().Power > parentPenguin.GetInputHandler().PowerMax * 0.4f)
                {
                    parentPenguin.ChangeState<PenguinState_Dash>();
                }
                else
                {
                    parentPenguin.ChangeState<PenguinState_Walk>();
                }
            }
            else
            {
                penguin.ChangeState<PenguinState_Walk>();
            }
        }
        else if(penguin.GetFall())
        {
            penguin.ChangeState<PenguinState_Fall>();
        }
    }
}
