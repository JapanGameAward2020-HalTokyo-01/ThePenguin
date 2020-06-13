using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameMain : MonoBehaviour
{
    [SerializeField]
    private ShowUI m_Gauge;
    [SerializeField]
    private ShowUI m_Timer;
    [SerializeField]
    private ShowUI m_Tutorial;
    [SerializeField]
    private GameObject m_ChargeGauge;

    [SerializeField]
    private float m_WaitTime = 1.0f;
    [SerializeField]
    private float m_WaitTimer = 0.0f;

    public void SetEnable(bool enable)
    {
        m_Gauge.SetEnable(enable);
        m_Timer.SetEnable(enable);
        m_Tutorial.SetEnable(enable);
    }
    public void ShowMainUI(bool show)
    {
        m_Gauge.Show(show);
        m_Timer.Show(show);
    }
    public void ShowTutorialUI(bool show)
    {
        m_Tutorial.Show(show);
    }

    public void HideTutorial()
    {
        m_Tutorial.enabled = false;
    }

    void Update()
    { 
        if(FindObjectOfType<MainCamera>().m_IsInRotate||m_ChargeGauge.activeSelf)
        {
            //回転中またはチャージ中
            m_WaitTimer -= Time.deltaTime;
        }
        else
        {
            m_WaitTimer += Time.deltaTime;
        }

        m_WaitTimer = Mathf.Clamp(m_WaitTimer, 0.0f, 1.0f);

        if (m_Tutorial.enabled)
        {
            if (m_WaitTimer >= m_WaitTime)
            {
                m_Tutorial.Show(true);
            }
            else if (m_WaitTimer <= 0)
            {
                m_Tutorial.Show(false);
            }
        }
        //m_WaitTimer = Mathf.Clamp(m_WaitTimer, 0.0f, 1.0f);

        //m_Tutorial.Show(m_WaitTimer <= m_WaitTime);
    }

}
