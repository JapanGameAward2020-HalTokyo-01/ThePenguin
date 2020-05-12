/**
* @file     PlayerCamera.cs
* @brief    カメラ
* @author   En Yuki
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class PlayerCamera : MonoBehaviour
{
    //カメラ初期距離
    public float m_InitDistance=20.0f;
    //カメラ初期角度
    public int m_InitAngle_XZ = 45;
    public int m_InitAngle_Y = 45;
    //固定カメラか、追尾カメラか
    public bool m_isFixed = true;
    //追尾オブジェクト
    public GameObject m_focusObject;
    //追尾スピード(0-1.0)
    public float m_speedScale = 0.075f;
    //カメラ注視座標（追尾オブジェクトが設定されていない場合のみ有効）
    public Vector3 m_focus = Vector3.zero;
    

    //Transformコンポーネント
    private Transform m_trans;
    //cameraコンポーネント
    private Camera m_camera;
    


    // Start is called before the first frame update
    void Start()
    {
        m_trans = GetComponent<Transform>();
        m_camera = GetComponent<Camera>();

        //追尾オブジェクトからfocusを取得
        if (m_focusObject!=null)
        {
            m_focus = m_focusObject.GetComponent<Transform>().position;
        }

        //初期位置を設定
        m_trans.SetPositionAndRotation(new Vector3(m_focus.x + m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y) * Mathf.Sin(Mathf.Deg2Rad * m_InitAngle_XZ), m_focus.y + m_InitDistance * Mathf.Sin(Mathf.Deg2Rad * m_InitAngle_Y), m_focus.z - m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y) * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_XZ)), Quaternion.identity);
        //Rotationを設定
        m_trans.LookAt(m_focus, Vector3.up);
    }

    // Update is called once per frame
    void Update()
    {
        //追尾カメラ
        if (!m_isFixed && m_focusObject != null)
        {
            //追尾オブジェクトから座標計算
            Vector3 temp = m_focusObject.GetComponent<Transform>().position;
            m_focus = m_focus+(temp-m_focus)* m_speedScale;
        }

        //位置を設定
        m_trans.SetPositionAndRotation(new Vector3(m_focus.x+ m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y)*Mathf.Sin(Mathf.Deg2Rad*m_InitAngle_XZ), m_focus.y+ m_InitDistance * Mathf.Sin(Mathf.Deg2Rad*m_InitAngle_Y),m_focus.z- m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y) * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_XZ)), Quaternion.identity);
        //Rotationを設定
        m_trans.LookAt(m_focus, Vector3.up);
    }
}
