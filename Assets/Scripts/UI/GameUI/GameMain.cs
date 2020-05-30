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
}
