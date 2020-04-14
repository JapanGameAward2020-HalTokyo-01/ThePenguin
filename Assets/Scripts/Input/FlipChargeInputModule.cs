/// <summary>
/// @file FlipChargeInputModule.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// @class FlipChargeInputModule
/// @brief コントローラー入力処理
///        スティックを弾いた時の数値でパワーが決まる
/// </summary>
public class FlipChargeInputModule : InputModuleBase
{
    [SerializeField, Tooltip("ゲージのリピート")]
    private bool m_IsRepeat = true;

    [SerializeField, Tooltip("待機時間")]
    private float m_PowerWaitTime = 10.0f;

    [SerializeField, Tooltip("無効範囲"), Range(0.0f, 1.0f)]
    private float m_Deadzone = 0.07f;

    [SerializeField, Tooltip("誤差しきい値"), Range(0.0f, 1.0f)]
    private float m_Threshold = 0.1f;

    private float m_Horizontal = 0f;
    private float m_Vertical = 0f;

    private float m_TimeCounter = 0f;
    private Vector3 m_InputVector;

    public override void Start()
    {
        base.Start();
        TimeCounterReset();
    }

    public override void DebugMethod()
    {
        base.DebugMethod();
        Debug.DrawRay(this.transform.position, m_InputVector, Color.green);
    }

    public override void Behaviour()
    {
        m_Horizontal = Input.GetAxis("Horizontal");
        m_Vertical = Input.GetAxis("Vertical");

        if (Mathf.Abs(m_Horizontal) <= m_Deadzone && Mathf.Abs(m_Vertical) <= m_Deadzone)
        {
            this.TimeCounterReset();

            if (m_InputHandler.Power > 0f)
                m_InputHandler.ChangeState(InputHandler.State.Run);

            return;
        }

        m_InputVector = m_InputHandler.TransformCameraDirection(new Vector3(m_Horizontal, 0f, m_Vertical));
        m_InputVector.y = 0f;

        if (m_InputHandler.InputVector != m_InputVector && EnableInputVector(m_InputVector))
        {
            this.TimeCounterReset();
            m_InputHandler.SetInputVector(m_InputVector);
            m_InputHandler.PowerReset();
        }
        else
        {
            m_TimeCounter++;

            if (m_TimeCounter < m_PowerWaitTime) return;

            m_InputHandler.PowerAddChange(m_IsRepeat);
        }
    }

    private void TimeCounterReset()
    {
        m_TimeCounter = 0f;
    }

    private bool EnableInputVector(Vector3 _InputVector)
    {
        Vector3 diffrent = m_InputHandler.InputVector - _InputVector;
        return (Mathf.Abs(diffrent.x) > m_Threshold) && (Mathf.Abs(diffrent.z) > m_Threshold);
    }
}
