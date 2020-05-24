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
    }
}
