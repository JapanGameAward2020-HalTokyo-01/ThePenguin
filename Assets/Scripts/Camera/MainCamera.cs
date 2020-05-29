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
    private float m_InitAngle_XZ = 0;
    [SerializeField]
    private float m_InitAngle_Y = 45;
    //追尾オブジェクト
    [SerializeField]
    private GameObject m_focusObject;

    //Field of View
    [SerializeField]
    private float m_Fov_1 = 40.0f;
    [SerializeField]
    private float m_Fov_2 = 60.0f;
    [SerializeField]
    private float m_SwitchTime = 0.5f;

    //Rotate
    [SerializeField]
    private float m_RotateSpeed = 50.0f;
    [SerializeField]
    private bool m_RotateReverse = false;

    //Reset
    [SerializeField]
    private float m_ResetSpeed = 360.0f;

    //
    private bool m_IsSwitch = false;
    private float m_SwitchTimer = 0.0f;
    private float m_CurrentFov;
    private float m_PastFov;
    private bool m_IsReset = false;
    private float m_ResetTime;
    private float m_ResetTimer = 0.0f;
    private float m_PastAngle;
    private float m_CurrentAngle;

    private CinemachineVirtualCamera[] v_camera;

    // Start is called before the first frame update
    void Start()
    {
        v_camera = GetComponentsInChildren<CinemachineVirtualCamera>();
        v_camera[0].LookAt = m_focusObject.transform;
        v_camera[1].Follow = m_focusObject.transform;

        m_CurrentFov = m_Fov_1;
        v_camera[0].m_Lens.FieldOfView = m_Fov_1;

    }

    // Update is called once per frame
    void Update()
    {
        //動作確認用
        if (Input.GetKeyDown(KeyCode.F))
        {
            LookToVec();
        }

        //カメラリセット
        if (m_IsReset)
        {
            m_ResetTimer += Time.deltaTime;
            float t = m_ResetTimer / m_ResetTime;
            if (t >= 1.0f)
            {
                t = 1.0f;
                m_IsReset = false;
            }
            m_InitAngle_XZ = m_PastAngle + t * (m_CurrentAngle - m_PastAngle);
            v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_Heading.m_Bias = m_InitAngle_XZ;
        }

        //Fov切り替え
        if (m_IsSwitch)
        {
            m_SwitchTimer += Time.deltaTime;
            float t = m_SwitchTimer / m_SwitchTime;
            if (t >= 1.0f)
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

        v_camera[1].GetCinemachineComponent<CinemachineTransposer>().m_FollowOffset.y = m_InitDistance * Mathf.Sin(Mathf.Deg2Rad * m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_FollowOffset.z = -1.0f * m_InitDistance * Mathf.Cos(Mathf.Deg2Rad * m_InitAngle_Y);
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_Heading.m_Bias = m_InitAngle_XZ;
    }

    //Fov切替関数
    public void FovSwitch()
    {
        if (!m_IsSwitch)
        {
            m_IsSwitch = true;
            m_SwitchTimer = 0.0f;
            m_PastFov = v_camera[0].m_Lens.FieldOfView;
            if (m_CurrentFov == m_Fov_1)
            {
                m_CurrentFov = m_Fov_2;
            }
            else
            {
                m_CurrentFov = m_Fov_1;
            }
        }
    }

    //回転関数
    public void RotateCamera(bool direction, float scale = 1.0f)
    {
        float dir;
        if ((direction && !m_RotateReverse) || (!direction && m_RotateReverse))
        {
            dir = 1.0f;
        }
        else
        {
            dir = -1.0f;
        }
        m_InitAngle_XZ -= scale * dir * m_RotateSpeed * Time.deltaTime;
        v_camera[0].GetCinemachineComponent<CinemachineOrbitalTransposer>().m_Heading.m_Bias = m_InitAngle_XZ;
    }

    //向き指定関数
    public void LookToVec()
    {
        //ParentPenguinの作り方に依存※※
        LookToVec(m_focusObject.GetComponentInChildren<SkinnedMeshRenderer>().gameObject.transform.forward);
    }
    public void LookToVec(Vector3 vec)
    {
        if (m_IsReset)
        {
            return;
        }

        //単位化
        vec.y = 0.0f;
        vec = Vector3.Normalize(vec);

        float sita = Mathf.Acos(Vector3.Dot(vec, Vector3.forward)) * Mathf.Rad2Deg;

        if (vec.x < 0)
        {
            sita = 360 - sita;
        }

        float current_angle = ((m_InitAngle_XZ % 360) + 360) % 360;

        float angle = (sita - current_angle);
        if (angle < -180)
        {
            angle += 360;
        }
        if (angle > 180)
        {
            angle -= 360;
        }

        m_PastAngle = m_InitAngle_XZ;
        m_CurrentAngle = m_InitAngle_XZ + angle;

        m_ResetTime = Mathf.Abs(angle) / m_ResetSpeed;

        m_IsReset = true;
        m_ResetTimer = 0.0f;
    }
}
