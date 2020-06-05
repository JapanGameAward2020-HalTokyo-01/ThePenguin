using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState_Start : PenguinState
{
    private ParentPenguin parentPenguin = null;

    private StartCameraSystem StartSystem;

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        if (!StartSystem)
            StartSystem = FindObjectOfType<StartCameraSystem>();

    }

    //! 更新処理
    public override void OnUpdate()
    {
        if (!StartSystem.GetNowPlaying())
        {
            if (parentPenguin != null)
                parentPenguin.RegisterInputEvent();

            penguin.ChangeState<PenguinState_Idle>();
        }
    }
}
