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

    //Field of View
    [SerializeField]
    private float m_Fov_1 = 40.0f;
    [SerializeField]
    private float m_Fov_2 = 60.0f;
    [SerializeField]
    private float m_SwitchTime = 1.0f;

    //
    private bool m_IsSwitch = false;
    private float m_SwitchTimer = 0.0f;
    private float m_CurrentFov;
    private float m_PastFov;

    private CinemachineVirtualCamera[] v_camera;

    // Start is called before the first frame update
    void Start()
    {
        v_camera=GetComponentsInChildren<CinemachineVirtualCamera>();
        v_camera[0].LookAt = m_focusObject.transform;
        v_camera[1].Follow = m_focusObject.transform;

        m_CurrentFov = m_Fov_1;
        v_camera[0].m_Lens.FieldOfView = m_Fov_1;

    }

    // Update is called once per frame
    void Update()
    {
        //動作確認用
        if(Input.GetKeyDown(KeyCode.F))
        {
            FovSwitch();
        }

        if(m_IsSwitch)
        {
            m_SwitchTimer += Time.deltaTime;
            float t = m_SwitchTimer / m_SwitchTime;
            if(t>=1.0f)
            {
                t = 1.0f;
                m_IsSwitch = false;
            }
            v_camera[0].m_Lens.FieldOfView = m_PastFov + t * (m_CurrentFov - m_PastFov);
        }
    }

    void OnValidate()
    {
        v_camera = GetComponentsInChildren<CinemachineVirtualCamera>();

        v_camera[1].GetCinemachineComponent<CinemachineTransposer>().m_FollowOffset.y =m_InitDistance*Mathf.Sin(Mathf.Deg2Rad*m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_FollowOffset.z = -1.0f * m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_Heading.m_Bias = m_InitAngle_XZ;
    }

    void FovSwitch()
    {
        if (!m_IsSwitch)
        {
            m_IsSwitch = true;
            m_SwitchTimer = 0.0f;
            m_PastFov = v_camera[0].m_Lens.FieldOfView;
            if(m_CurrentFov==m_Fov_1)
            {
                m_CurrentFov = m_Fov_2;
            }
            else
            {
                m_CurrentFov = m_Fov_1;
            }
        }
    }
}
