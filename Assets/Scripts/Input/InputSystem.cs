/// <summary>
/// @file InputSystem.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// @class InputSystem
/// @brief コントローラー入力処理
/// </summary>
public class InputSystem : MonoBehaviour
{
    enum InputState
    {
        NONE,       //初期値
        TRIGGER,    //
        END
    }


    //水平入力値
    [SerializeField]
    private float m_Horizontal;
    //垂直入力値
    [SerializeField]
    private float m_Vertical;

    [SerializeField]
    private float m_Fire1;

    private bool m_IsInputting;

    [Space(10)]
    //プレイヤーペンギン
    [SerializeField]
    private GameObject m_ParentPenguin;

    private Rigidbody m_PenguinRigidbody;



    // Start is called before the first frame update
    void Start()
    {
        m_PenguinRigidbody = m_ParentPenguin.GetComponent<Rigidbody>();

        m_IsInputting = false;
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 _MoveVector = Vector3.zero;

        //入力値
        Vector3 _InputVector = Vector3.zero;
        m_Horizontal = Input.GetAxis("Horizontal");
        m_Vertical = Input.GetAxis("Vertical");
        _InputVector.x = m_Horizontal;
        _InputVector.z = m_Vertical;

        _MoveVector = TransformCameraDirection(_InputVector);
        _MoveVector = Vector3.Normalize(new Vector3(_MoveVector.x,0f,_MoveVector.z));

        if (_InputVector != Vector3.zero)
        {
            m_IsInputting = true;



        }
        else if (m_IsInputting)
        {
            m_PenguinRigidbody.AddForce(_MoveVector);
            m_IsInputting = false;
        }

        Debug.DrawRay(this.transform.position,_InputVector,Color.blue);
        Debug.DrawRay(this.transform.position,_MoveVector,Color.green);
        Debug.DrawRay(this.transform.position,Camera.main.transform.forward,Color.red);
    }

    /// <summary>
    /// @brief メインカメラの向きにdirを変換する
    /// @param(dir) 変換する向き
    /// @return 変換した向き
    /// </summary>
    Vector3 TransformCameraDirection(Vector3 dir)
    {
        Vector3 _result = Vector3.zero;

        Matrix4x4 _matrix = Matrix4x4.Rotate(Camera.main.transform.rotation);
        _result.x = _matrix.m00 * dir.x + _matrix.m01 * dir.y + _matrix.m02 * dir.z;
        _result.y = _matrix.m10 * dir.x + _matrix.m11 * dir.y + _matrix.m12 * dir.z;
        _result.z = _matrix.m20 * dir.x + _matrix.m21 * dir.y + _matrix.m22 * dir.z;
        return _result.normalized;
    }

}
