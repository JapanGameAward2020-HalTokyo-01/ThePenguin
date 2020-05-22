/**
* @file     MainCamera.cs
* @brief    カメラ
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Cinemachine;

public class MainCamera : MonoBehaviour
{
    [SerializeField]
    //カメラ初期距離
    private float m_InitDistance = 20.0f;
    //カメラ初期角度
    [SerializeField]
    private int m_InitAngle_XZ = 0;
    [SerializeField]
    private int m_InitAngle_Y = 45;
    //追尾オブジェクト
    [SerializeField]
    private GameObject m_focusObject;

    private CinemachineVirtualCamera[] v_camera;

    // Start is called before the first frame update
    void Start()
    {
        v_camera=GetComponentsInChildren<CinemachineVirtualCamera>();
        v_camera[0].LookAt = m_focusObject.transform;
        v_camera[1].Follow = m_focusObject.transform;

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnValidate()
    {
        v_camera = GetComponentsInChildren<CinemachineVirtualCamera>();

        v_camera[1].GetCinemachineComponent<CinemachineTransposer>().m_FollowOffset.y =m_InitDistance*Mathf.Sin(Mathf.Deg2Rad*m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_FollowOffset.z = -1.0f * m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_Heading.m_Bias = m_InitAngle_XZ;
    }
}
