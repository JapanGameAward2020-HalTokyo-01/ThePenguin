using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class WallAttack : BaseGimmick
{
    [SerializeField]
    private GameObject m_Wall;

    [SerializeField]
    private GameObject m_WarningArrow;

    [SerializeField]
    private float m_Length = 0f;

    [SerializeField]
    private float m_Spped = 1f;

    private float m_CurrentLength = 0f;

    public override void Start()
    {
        base.Start();
    }

    public override void Update()
    {
        base.Update();

        if (m_CurrentLength >= m_Length)
            this.Deactivate();

        float value = m_Spped * Time.deltaTime;

        m_Wall.transform.position += m_Wall.transform.forward * value;

        m_CurrentLength += value;
    }

    public override void Activate()
    {
        this.gameObject.SetActive(true);

        m_CurrentLength = 0f;
        m_Wall.transform.localPosition = Vector3.zero;
    }

    public override void Deactivate()
    {
        this.gameObject.SetActive(false);
    }

    public void OnDrawGizmos()
    {
#if UNITY_EDITOR

        Vector3 scale = m_Wall.transform.lossyScale;
        scale = new Vector3(scale.x,scale.y,Mathf.Max(m_Length + 1.0f,scale.z));

        Gizmos.color = new Color(1f,0f,0f,0.5f);
        Gizmos.DrawCube(this.transform.position + this.transform.forward * m_Length * 0.5f,scale);
#endif
    }

    private void OnValidate()
    {
#if UNITY_EDITOR

        if (m_WarningArrow)
        {
            Vector3 scale = m_Wall.transform.lossyScale;
            Vector3 pos = m_WarningArrow.transform.localPosition;

            m_WarningArrow.transform.localScale = new Vector3(m_WarningArrow.transform.localScale.x, m_Length + 1f, m_WarningArrow.transform.localScale.z);
            m_WarningArrow.transform.localPosition = new Vector3(pos.x,pos.y,0f) + this.transform.forward * m_Length * 0.5f;

        }

#endif
    }
}
