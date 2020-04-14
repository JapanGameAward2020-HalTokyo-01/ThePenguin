/// <summary>
/// @file AxisChargeInputModule.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// @class InputSystem
/// @brief コントローラー入力処理
///        スティックの倒した角度によってパワーが決定する
/// </summary>
public class AxisChargeInputModule : InputModuleBase
{
    //! 分割度
    [SerializeField,Range(10.0f,100.0f)]
    private float m_Division = 10.0f;

    private float m_Horizontal = 0f;
    private float m_Vertical = 0f;

    private Vector3 m_InputVector;

    public override void Start()
    {
        base.Start();
    }

    public override void Behaviour()
    {
        m_Horizontal = Input.GetAxis("Horizontal");
        m_Vertical = Input.GetAxis("Vertical");

        if(m_Horizontal == 0f && m_Vertical == 0f)
        {
            m_InputHandler.PowerReset();
            return;
        }

        m_InputVector = m_InputHandler.TransformCameraDirection(new Vector3(m_Horizontal, 0f, m_Vertical));
        m_InputVector.y = 0f;

        m_InputHandler.SetInputVector(m_InputVector);

        float _Rate;
        _Rate = Mathf.Floor(Vector2.SqrMagnitude(new Vector2(m_Horizontal, m_Vertical)) * m_Division) / m_Division;
        _Rate = Mathf.Min(_Rate, 1.0f);

        m_InputHandler.Power = m_InputHandler.PowerMax * _Rate;

        if (Input.GetButtonDown("Fire1"))
        {
            m_InputHandler.ChangeState(InputHandler.State.Run);
        }
    }
}
