﻿/// <summary>
/// @file   FillBlock.cs
/// @brief  
/// @author	池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

[RequireComponent(typeof(LineRenderer))]
public class FallBlock : BaseGimmick
{
    [SerializeField, Range(0f, 10f)]
    protected float m_Height = 0f;

    [SerializeField]
    protected float m_OffsetTime = 0f;

    [SerializeField]
    protected float m_DownSpeed = 1f;

    [SerializeField]
    protected GameObject m_Block;

    [SerializeField]
    protected GameObject m_DownPoint;

    [SerializeField]
    protected GameObject m_Shadow;
    protected Vector3 m_InitShadowSize;

    [SerializeField]
    protected float m_Time = 0f;
    protected float m_CurrentHeight = 0f;

    private LineRenderer m_LineRenderer;
    [SerializeField]
    //!エフェクトスポーンナー
    protected EffectSpawner Effect;

    // Start is called before the first frame update
    public override void Start()
    {
        m_Time = -m_OffsetTime;

        m_DownPoint.transform.position = this.transform.position + Vector3.down * m_Height;

        if (m_Shadow)
        {
            m_InitShadowSize = m_Shadow.transform.localScale;
            m_Shadow.transform.localScale = m_InitShadowSize * 0.0f;
        }

        if (!Effect)
            Effect = GetComponent<EffectSpawner>();

        m_LineRenderer = this.GetComponent<LineRenderer>();
        m_LineRenderer.startWidth = m_LineRenderer.endWidth = 0.1f;
        m_LineRenderer.SetPosition(0, this.transform.position);
        m_LineRenderer.SetPosition(1, this.transform.position + Vector3.down * m_Height);

        m_LineRenderer.enabled = false;
        m_DownPoint.GetComponentInChildren<MeshRenderer>().enabled = false;
    }

    // Update is called once per frame
    public override void Update()
    {
        if (m_Time < 0f)
        {
            m_Time += Time.deltaTime;
            return;
        }

        m_CurrentHeight += m_DownSpeed * Time.deltaTime;

        m_Block.transform.position = this.transform.position + Vector3.down * m_CurrentHeight;

        if(m_Shadow)
        {
            float shadowsize = Mathf.Lerp(0.2f, 1.0f, m_CurrentHeight / m_Height);

            m_Shadow.transform.localScale = m_InitShadowSize * shadowsize;
        }

        if (m_CurrentHeight < m_Height) return;

        this.Deactivate();
    }

    public virtual void OnTriggerEnter(Collider other)
    {
        if(other.TryGetComponent<Penguin>(out Penguin hit))
        {
            hit.Kill(true);
        }
    }

    public override void OnActivate()
    {
        var pos = this.transform.position;

        if (Effect != null)
        {
            Effect.PlayerEffect("SummonRock", pos, new Vector3(0.5f, 0.5f, 0.5f));
        }

        m_CurrentHeight = 0f;
        m_Time = -m_OffsetTime;
        m_Block.transform.position = this.transform.position;
        this.gameObject.SetActive(true);
    }

    public override void OnDeactivate()
    {
        {
            var pos = m_Block.transform.position;


            if (Effect != null)
            {
                Effect.PlayerEffect("downupblock_under", pos, new Vector3(0.25f, 0.25f, 0.25f));
            }
        }


        if (m_Shadow)
        {
            m_Shadow.transform.localScale = m_InitShadowSize * 0.0f;
        }
        this.gameObject.SetActive(false);
    }

    public virtual void OnDrawGizmos()
    {
        Gizmos.color = new Color(1f, 0f, 0f, 0.5f);

#if UNITY_EDITOR

        if (!UnityEditor.EditorApplication.isPlaying)
        {
            Gizmos.DrawLine(this.transform.position, this.transform.position + Vector3.down * m_Height);

            m_DownPoint.transform.position = this.transform.position + Vector3.down * m_Height;

            if (this.TryGetComponent<LineRenderer>(out LineRenderer lineRenderer))
            {
                lineRenderer.startWidth = lineRenderer.endWidth = 1.0f;
                lineRenderer.SetPosition(0, this.transform.position);
                lineRenderer.SetPosition(1, this.transform.position + Vector3.down * m_Height);
            }
        }

#endif

    }
}
