/**
* @file     StartCameraSystem.cs
* @brief    カメラ
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Cinemachine;
using System.Threading;

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
    [SerializeField]
    private PenguinManager m_PenguinManager;

    [Header("MiddlePoint")]
    [SerializeField]
    private bool m_MiddleEnable = false;
    [SerializeField]
    private GameObject m_MiddlePoint;
    [SerializeField]
    private float m_Middle_WaitTime = 2.0f;
    [SerializeField]
    private float m_Middle_MoveTime = 2.0f;
    [SerializeField]
    private float m_StartNameAnimTime = 2.0f;
    
    [SerializeField]
    private List<Boss> m_Bosses = new List<Boss>();

    ParentPenguin m_Parent;

    //!振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    public bool m_NowPlaying = true;
    private bool m_PlayedOnce = false;
    private bool m_PenguinsDown = false;
    private bool m_BeforeMaskOn = false;
    private bool m_AfterMaskOn = false;
    private bool m_BossGrowl = false;
    private bool m_BossEffect = false;
    public float m_Timer = 0.0f;

    private float m_MaskThreshold = 7.5f;
    private float m_BossThreshold = 3.5f;

    private int SEloopIndex = -1;

    // Start is called before the first frame update
    void Start()
    {
        m_Parent = FindObjectOfType<ParentPenguin>();
        v_camera = GetComponentsInChildren<CinemachineVirtualCamera>();

        if (!m_ControllerVibration)
            m_ControllerVibration = FindObjectOfType<ControllerVibration>();
    }

    // Update is called once per frame
    void Update()
    {
        if(!m_PlayedOnce)
        {
            m_Timer += Time.deltaTime;

            if (!m_MiddleEnable)
            {
                //制御点が二つ
                if (m_Timer > m_WaitTimeToMove_1 + m_MoveTime + m_WaitTimeToMove_2)
                {
                    StopPlaying();
                }
                else if (m_Timer > m_WaitTimeToMove_1)
                {
                    FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_MoveTime;
                    v_camera[0].Priority = 0;
                    v_camera[1].Priority = 2;
                    v_camera[2].Priority = 0;
                }
            }
            else
            {
                if(m_Timer>m_StartNameAnimTime)
                {
                    if(FindObjectOfType<BossName>()!=null)
                    {
                        FindObjectOfType<BossName>().SetPlay(true);
                    }
                }

                //制御点が三つ
                if (m_Timer > m_WaitTimeToMove_1 + m_Middle_MoveTime + m_Middle_WaitTime + m_MoveTime + m_WaitTimeToMove_2)
                {
                    StopPlaying();
                }
                else if(m_Timer> m_WaitTimeToMove_1 + m_Middle_MoveTime + m_Middle_WaitTime)
                {
                    FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_MoveTime;
                    v_camera[0].Priority = 0;
                    v_camera[1].Priority = 2;
                    v_camera[2].Priority = 0;

                    //ペンギンマスク演出
                    if (m_Timer > m_MaskThreshold && !m_BeforeMaskOn)
                    {
                        if (SEloopIndex == -1)
                        {
                            SEloopIndex = SoundEffect.Instance.PlayLoopSE(SoundEffect.Instance.SEList.Hero_Changing); 
                        }

                        m_ControllerVibration.AddShake(0.1f, 2.4f);

                        m_Parent.GetCurrentState().GetComponent<PenguinState_Start>().EffectPlay();

                        m_BeforeMaskOn = true;
                    }

                    if (m_Timer > m_MaskThreshold + 2.0f && !m_AfterMaskOn)
                    {
                        if (SEloopIndex > -1)
                        {
                            SoundEffect.Instance.StopLoopSE(SEloopIndex);
                        }

                        m_ControllerVibration.AddShake(0.5f, 0.6f);
                        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Hero_Change_Finsih);
                        m_Parent.SetMaskEnable(true);

                        m_AfterMaskOn = true;
                    }
                }
                else if (m_Timer > m_WaitTimeToMove_1)
                {
                    FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_Middle_MoveTime;
                    v_camera[0].Priority = 0;
                    v_camera[1].Priority = 0;
                    v_camera[2].Priority = 2;

                    if (m_Timer > m_BossThreshold && !m_BossGrowl)
                    {
                        foreach (Boss boss in m_Bosses)
                        {
                            boss.GetComponentInChildren<Animator>().SetTrigger("OnGrowl");
                        }

                        m_BossGrowl = true;
                    }

                    if (m_Timer > m_BossThreshold + 0.5f && !m_BossEffect)
                    {
                        foreach (Boss boss in m_Bosses)
                        {
                            boss.GetCurrentState().GetComponent<BossState_Start>().EffectPlay();
                        }

                        m_BossEffect = true;
                    }
                }
            }

            if (m_Timer > 0.2f && !m_PenguinsDown)
            {
                m_PenguinManager.StartEnshutsu_End();
                m_PenguinsDown = true;
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
        v_camera[2].Priority = 0;

        var main_ui = FindObjectOfType<GameMain>();
        if(main_ui!=null)
        {
            main_ui.SetEnable(false);
        }
    }

    public void StopPlaying()
    {
        m_Timer = 0.0f;

        if (!m_PenguinsDown)
        {
            m_PenguinManager.StartEnshutsu_End();
        }

        if (m_Parent.Boss)
        {
            m_Parent.SetMaskEnable(true);
        }

        if (!m_BossGrowl)
        {
            foreach (Boss boss in m_Bosses)
            {
                boss.GetComponentInChildren<Animator>().SetTrigger("OnGrowl");
            }
        }


        FindObjectOfType<CinemachineBrain>().m_DefaultBlend.m_Time = m_OutTime;
        v_camera[0].Priority = 0;
        v_camera[1].Priority = 0;
        v_camera[2].Priority = 0;
        if (FindObjectOfType<BossName>() != null)
        {
            FindObjectOfType<BossName>().SetPlay(false);
        }
        StartCoroutine(EnableUI(m_OutTime));
    }

    IEnumerator EnableUI(float time)
    {
        m_PlayedOnce = true;
        yield return new WaitForSeconds(time);

        m_NowPlaying = false;
        var main_ui = FindObjectOfType<GameMain>();
        if (main_ui != null)
        {
            main_ui.SetEnable(true);
            main_ui.ShowMainUI(true);
        }
        
    }
}
