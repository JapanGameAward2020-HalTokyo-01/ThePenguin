using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class PenguinState_Start : PenguinState
{
    private ParentPenguin parentPenguin = null;

    private StartCameraSystem StartSystem;

    EffekseerEmitter m_Effect;

    public override void OnStart()
    {
        base.OnStart();

        parentPenguin = penguin.GetComponent<ParentPenguin>();

        if (!StartSystem)
            StartSystem = FindObjectOfType<StartCameraSystem>();

        if (parentPenguin)
        {
            if (!m_Effect)
                m_Effect = GetComponent<EffekseerEmitter>();
        }
    }

    //! 更新処理
    public override void OnUpdate()
    {
        if (StartSystem)
        {
            if (!StartSystem.GetNowPlaying())
            {
                if (parentPenguin != null)
                {
                    parentPenguin.GetInputHandler().ChangeState(InputHandler.State.Idle);
                    parentPenguin.RegisterInputEvent();
                }
                

                penguin.ChangeState<PenguinState_Idle>();
            }
        }
        else
        {
            if (parentPenguin != null)
                parentPenguin.RegisterInputEvent();

            penguin.ChangeState<PenguinState_Idle>();
        }
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
