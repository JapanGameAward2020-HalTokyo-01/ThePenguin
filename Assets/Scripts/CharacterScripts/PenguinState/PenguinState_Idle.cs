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

    //! 更新処理
    public override void OnUpdate()
    {
        if (penguin.IsMoving())
        {
            if (penguin.TryGetComponent<ParentPenguin>(out var pp))
            {
                pp.GetControllerVibration().ChargeShake(0.0f);
                pp.GetControllerVibration().AddShake(0.6f, 0.2f);
                if (pp.GetInputHandler().Power > pp.GetInputHandler().PowerMax * 0.4f)
                {
                    pp.ChangeState<PenguinState_Dash>();
                }
                else
                {
                    pp.ChangeState<PenguinState_Walk>();
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
