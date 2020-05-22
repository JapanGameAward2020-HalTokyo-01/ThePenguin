using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorTileMove : BaseGimmick
{
    public GameObject m_TargetObject;

    public List<Transform> m_Positions = new List<Transform>();

    [SerializeField]
    private float m_LerpTime = 5f;
    [SerializeField]
    private float m_WaitTime = 3f;

    private float m_Time = 0f;

    private int m_CurrentNum = 0;
    private int m_NextNum = 0;
    private int m_MaxNum = 0;

    private bool m_IsRun = false;
    [SerializeField]
    private bool m_IsStop = false;

    // Start is called before the first frame update
    public override void Start()
    {
        m_MaxNum = m_Positions.Count;

        if (m_MaxNum == 0)
        {
            m_TargetObject.transform.position = this.transform.position;
        }
        else
        {
            m_TargetObject.transform.position = m_Positions[m_CurrentNum].position;
        }
    }

    // Update is called once per frame
    public override void Update()
    {
        if (m_MaxNum <= 0 || m_IsStop) return;

        if (m_IsRun)
        {
            float t = m_Time / m_LerpTime;

            m_TargetObject.transform.position = Vector3.Lerp(m_Positions[m_CurrentNum].position, m_Positions[m_NextNum].position, t);

            if (t >= 1f)
            {
                t = 1f;
                m_CurrentNum = m_NextNum;
                m_Time = 0f;
                m_IsRun = false;
            }

            m_Time += Time.deltaTime;
        }
        else
        {
            if (m_Time >= m_WaitTime)
            {
                m_NextNum = (m_CurrentNum + 1) % m_MaxNum;

                m_Time = 0f;
                m_IsRun = true;
            }
            else
            {
                m_Time += Time.deltaTime;
            }
        }
    }

    public override void Activate()
    {
        
    }

    public override void Deactivate()
    {
        
    }

    public void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        int count = m_Positions.Count;
        for(int i = 0; i < m_Positions.Count; i++)
        {
            Gizmos.DrawLine(m_Positions[i].position,m_Positions[(i+1) % count].position);
        }
    }
}
