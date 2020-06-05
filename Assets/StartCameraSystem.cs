/**
* @file     StartCameraSystem.cs
* @brief    カメラ
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Cinemachine;

public class StartCameraSystem : MonoBehaviour
{

    private CinemachineVirtualCamera[] v_camera;

    [SerializeField]
    private GameObject m_FocusPoint_1;
    [SerializeField]
    private GameObject m_FocusPoint_2;
    [SerializeField]
    private float m_WaitTimeToMove_1 = 4.0f;
    [SerializeField]
    private float m_WaitTimeToMove_2 = 4.0f;
    [SerializeField]
    private float m_InTime = 2.0f;
    [SerializeField]
    private float m_MoveTime = 2.0f;
    [SerializeField]
    private float m_OutTime = 2.0f;


    private bool m_NowPlaying = true;
    private float m_Timer = 0.0f;

    // Start is called before the first frame update
    void Start()
    {
        v_camera = GetComponentsInChildren<CinemachineVirtualCamera>();
    }

    // Update is called once per frame
    void Update()
    {
        if(m_NowPlaying)
        {
            m_Timer += Time.deltaTime;

            if(m_Timer>m_WaitTimeToMove_1+m_MoveTime+m_WaitTimeToMove_2)
            {
                StopPlaying();
            }
            else if(m_Timer>m_WaitTimeToMove_1)
            {
                FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_MoveTime;
                v_camera[0].Priority = 0;
                v_camera[1].Priority = 2;
            }
        }

    }

    public bool GetNowPlaying()
    {
        return m_NowPlaying;
    }

    public void StartPlaying()
    {
        m_Timer = 0.0f;
        m_NowPlaying = true;

        FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_InTime;
        v_camera[0].Priority = 2;
        v_camera[1].Priority = 0;

        var main_ui = FindObjectOfType<GameMain>();
        if(main_ui!=null)
        {
            main_ui.SetEnable(false);
        }
    }

    public void StopPlaying()
    {
        m_Timer = 0.0f;
        m_NowPlaying = false;

        FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_OutTime;
        v_camera[0].Priority = 0;
        v_camera[1].Priority = 0;

        StartCoroutine(EnableUI(m_OutTime));
    }

    IEnumerator EnableUI(float time)
    {
        yield return new WaitForSeconds(time);
        var main_ui = FindObjectOfType<GameMain>();
        if (main_ui != null)
        {
            main_ui.SetEnable(true);
            main_ui.ShowMainUI(true);
        }
    }
}
