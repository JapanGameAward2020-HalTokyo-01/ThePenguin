/// <summary>
/// @file   ShowUI.cs
/// @brief	UIの表示・非表示
/// @author	En Yuki
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowUI : MonoBehaviour
{
    //[SerializeField]
    //private Transform m_Trans;

    [SerializeField]
    private float m_Hide_Y;
    [SerializeField,Range(0.0f,1.0f)]
    private float m_Switch_Speed = 0.2f;
    [SerializeField]
    private bool m_IsEnable = true;
    [SerializeField]
    private bool m_IsShow = true;

    private float m_Offset_Y;
    
    void Awake()
    {
        m_Offset_Y = transform.localPosition.y;

        if(!m_IsEnable)
        {
            m_IsShow = false;
        }

        if(!m_IsShow)
        {
            transform.localPosition = new Vector3(transform.localPosition.x,m_Hide_Y,transform.localPosition.z);
        }
    }

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float new_y;
        if(m_IsShow)
        {
            new_y = transform.localPosition.y + (m_Offset_Y - transform.localPosition.y) * (m_Switch_Speed);
        }
        else
        {
            new_y = transform.localPosition.y + (m_Hide_Y - transform.localPosition.y) * (m_Switch_Speed);
        }

        transform.localPosition = new Vector3(transform.localPosition.x,new_y,transform.localPosition.z);
    }

    public void SetEnable(bool enable)
    {
        if(!enable)
        {
            Show(false);
        }

        m_IsEnable = enable;
    }

    //表示・非表示切替関数
    public void Show(bool show)
    {
        if(m_IsEnable)
        {
            m_IsShow = show;
        }
    }
}
