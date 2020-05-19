﻿/// <summary>
/// @file   DownBlock.cs
/// @brief  つぶすギミック
/// @author	池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class DownBlock : MonoBehaviour
{
    [SerializeField,Range(0f,10f)]
    private float m_Height = 0f;

    [SerializeField]
    private float m_offsetTime = 0f;

    [SerializeField]
    private float m_WaitTime = 3f;

    [SerializeField]
    private float m_DownSpeed = 1f;
    [SerializeField]
    private float m_UpSpeed = 1f;

    [SerializeField]
    private float m_CoolDownTime = 1f;

    [SerializeField]
    private GameObject m_DownPoint;

    private Vector3 m_Pos;

    private float m_Time = 0f;
    private float m_CurrentHeight = 0f;

    private bool m_IsDown = true;
    private bool m_IsKill = false;

    private LineRenderer m_LineRenderer;

    // Start is called before the first frame update
    void Start()
    {
        m_Pos = this.transform.position;
        m_Time = -m_offsetTime + m_WaitTime;

        m_LineRenderer = this.GetComponent<LineRenderer>();
        m_LineRenderer.startWidth = m_LineRenderer.endWidth = 0.1f;
        m_LineRenderer.SetPosition(0,m_Pos);
        m_LineRenderer.SetPosition(1,m_Pos + Vector3.down * m_Height);
    }

    // Update is called once per frame
    void Update()
    {
        if (m_IsDown)
            DownState();    //下への状態遷移
        else
            UpState();      //上への状態遷移

        this.transform.position = m_Pos + Vector3.down * m_CurrentHeight;

        m_Time += Time.deltaTime;

        m_DownPoint.transform.position = m_Pos + Vector3.down * m_Height;
    }

    void DownState()
    {
        if (m_Time < m_WaitTime) return;
        
        m_IsKill = true;
        m_CurrentHeight += m_DownSpeed * Time.deltaTime;

        if (m_CurrentHeight < m_Height) return;

        m_Time = 0f;
        m_IsKill = false;
        m_IsDown = !m_IsDown;
    }

    void UpState()
    {
        if (m_Time < m_CoolDownTime) return;
        
        m_CurrentHeight -= m_UpSpeed * Time.deltaTime;

        if (m_CurrentHeight > 0f) return;
        
        m_Time = 0f;
        m_CurrentHeight = 0f;
        m_IsDown = !m_IsDown;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (m_IsKill && other.TryGetComponent<Penguin>(out Penguin hit))
        {
            Debug.Log("Kill");
            hit.Kill(true);
        }
    }

    private void OnDrawGizmos()
    {
#if UNITY_EDITOR

        Gizmos.color = new Color(1f, 0f, 0f, 0.5f);

        Vector3 endPos = this.transform.position;

        if (UnityEditor.EditorApplication.isPlaying)
        {
            endPos = m_Pos + Vector3.down * m_Height;
            Gizmos.DrawLine(m_Pos,endPos);
        }
        else
        {
            endPos = this.transform.position + Vector3.down * m_Height;
            Gizmos.DrawLine(this.transform.position, endPos);

            if (this.TryGetComponent<LineRenderer>(out LineRenderer lineRenderer))
            {
                lineRenderer.startWidth = lineRenderer.endWidth = 1.0f;
                lineRenderer.SetPosition(0, this.transform.position);
                lineRenderer.SetPosition(1, endPos);
            }

            if(!m_DownPoint)
            {
                m_DownPoint.transform.position = endPos;
            }
        }
        Gizmos.DrawCube(endPos, this.transform.lossyScale);
#endif
    }

}
