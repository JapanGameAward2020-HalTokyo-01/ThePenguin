using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.UI;

public class UI_Component_Button : MonoBehaviour
{
    

    private Image m_HighLight;
    private Image m_UnHighLight;

    [SerializeField]
    private bool m_IsEnable = false;
    [SerializeField]
    private float m_EnableTime = 1.0f;
    [SerializeField]
    private bool m_IsAcive = false;
    [SerializeField]
    private float m_CrossTime = 0.5f;
    [SerializeField, Range(0.0f, 1.0f)]
    private float m_AnimBlendRate = 1.0f;
    [SerializeField]
    private float m_WaitTime = 0.8f;
    [SerializeField]
    private float m_AnimTime = 0.15f;

    private float m_Timer = 0.0f;
    private bool m_AnimFlag_In = false;
    private bool m_AnimFlag_Out = false;


    // Start is called before the first frame update
    void Start()
    {
        m_HighLight = GetComponentsInChildren<Image>()[0];
        m_UnHighLight = GetComponentsInChildren<Image>()[1];

        m_HighLight.CrossFadeAlpha(0, 0, true);
        m_UnHighLight.CrossFadeAlpha(0, 0, true);

        if (m_IsEnable)
        {
            if (m_IsAcive)
            {
                m_HighLight.CrossFadeAlpha(1, 0, true);
                m_UnHighLight.CrossFadeAlpha(0, 0, true);
            }
            else
            {
                m_HighLight.CrossFadeAlpha(0, 0, true);
                m_UnHighLight.CrossFadeAlpha(1, 0, true);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        if(m_IsAcive)
        {
            m_Timer += Time.deltaTime;


            if(m_Timer>m_WaitTime+2.0f*m_AnimTime)
            {
                m_Timer = 0.0f;
                m_AnimFlag_In = false;
                m_AnimFlag_Out = false;
            }
            else if (m_Timer > m_WaitTime + m_AnimTime && !m_AnimFlag_Out)
            {
                m_HighLight.CrossFadeAlpha(1, m_AnimTime, true);
                m_UnHighLight.CrossFadeAlpha(0, m_AnimTime, true);
                m_AnimFlag_Out = true;
            }
            else if (m_Timer > m_WaitTime && !m_AnimFlag_In)
            {
                m_HighLight.CrossFadeAlpha(1- m_AnimBlendRate, m_AnimTime, true);
                m_UnHighLight.CrossFadeAlpha(m_AnimBlendRate, m_AnimTime, true);
                m_AnimFlag_In = true;
            }
        }
    }

    void OnValidate()
    {
        m_HighLight = GetComponentsInChildren<Image>()[0];
        m_UnHighLight = GetComponentsInChildren<Image>()[1];

        SetEnable(m_IsEnable);

        if (m_IsEnable)
        {
            SetActive(m_IsAcive);
        }
    }

    public void SetEnable(bool enable)
    {
        if (m_HighLight == null || m_UnHighLight == null)
        { 
            m_HighLight = GetComponentsInChildren<Image>()[0];
            m_UnHighLight = GetComponentsInChildren<Image>()[1];
        }

        if (enable)
        {
            if (m_IsAcive)
            {
                m_HighLight.CrossFadeAlpha(1, m_EnableTime, true);
                m_UnHighLight.CrossFadeAlpha(0, m_EnableTime, true);
            }
            else
            {
                m_HighLight.CrossFadeAlpha(0, m_EnableTime, true);
                m_UnHighLight.CrossFadeAlpha(1, m_EnableTime, true);
            }

        }
        else
        {
            m_HighLight.CrossFadeAlpha(0, m_EnableTime, true);
            m_UnHighLight.CrossFadeAlpha(0, m_EnableTime, true);

            m_Timer = 0.0f;
            m_IsAcive = false;
            m_AnimFlag_In = false;
            m_AnimFlag_Out = false;
        }
        m_IsEnable = enable;
    }

    public void SetActive(bool active)
    {
        if (m_HighLight==null||m_UnHighLight==null)
        {
            m_HighLight = GetComponentsInChildren<Image>()[0];
            m_UnHighLight = GetComponentsInChildren<Image>()[1];  
        }

        if(m_IsAcive==active)
        {
            return;
        }
        if (m_IsEnable)
        {
            if (active)
            {
                m_HighLight.CrossFadeAlpha(1, m_CrossTime, true);
                m_UnHighLight.CrossFadeAlpha(0, m_CrossTime, true);

            }
            else
            {
                m_HighLight.CrossFadeAlpha(0, m_CrossTime, true);
                m_UnHighLight.CrossFadeAlpha(1, m_CrossTime, true);
                m_Timer = 0.0f;
                m_AnimFlag_In = false;
                m_AnimFlag_Out = false;
            }
            m_IsAcive = active;
        }
    }

    public void SetEnableTime(float enabletime)
    {
        m_EnableTime = enabletime;
    }

    public void SetCrossTime(float crosstime)
    {
        m_CrossTime = crosstime;
    }
}
