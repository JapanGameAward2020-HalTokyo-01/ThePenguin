﻿using System.Collections;
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

    public enum FieldType
    {
        SNOW = 0,
        VOLCANIC
    }

    [SerializeField]
    FieldType m_Type;

    FieldType m_TypeLast;

    [SerializeField]
    TextureData m_Data;

    [SerializeField]
    private EffectSpawner Effect;
    //!振動処理クラス
    private ObjectVibrate m_ObjectVibrate;

    private void OnDrawGizmos()
    {
        if (m_Type != m_TypeLast)
        {
            var m = new Material(this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial);
            m.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));
            m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
            this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial = m;
            m_TypeLast = m_Type;
        }
    }

    public override void Start()
    {
        base.Start();

        if(!Effect)
            Effect = GetComponent<EffectSpawner>();

        if (!m_ObjectVibrate)
            m_ObjectVibrate = GetComponent<ObjectVibrate>();

        m_WarningArrow.SetActive(false);

    }

    public override void Update()
    {
        base.Update();

        if (m_CurrentLength >= m_Length)
            this.Deactivate();

        float value = m_Spped * Time.deltaTime;

        m_Wall.transform.position += m_Wall.transform.forward * value;

        m_CurrentLength += value;

        if (m_ObjectVibrate)
            m_ObjectVibrate.StartVibrate();

        var pos = m_Wall.transform.position;

        pos.y -= 1.0f;

        if (Effect)
            Effect.PlayerEffect("MovewallBoss", pos, new Vector3(0.25f, 0.25f, 0.25f));
    }

    public override void OnActivate()
    {
        this.gameObject.SetActive(true);

        m_CurrentLength = 0f;
        m_Wall.transform.localPosition = Vector3.zero;

        if (Effect)
        {
            var pos = GetComponent<Transform>().transform.position;
            pos.y -= 1.0f;

            switch (m_Type)
            {
                case FieldType.SNOW:
                    Effect.PlayerEffect("SummonIce", pos, new Vector3(0.5f, 0.5f, 0.5f));
                    break;
                case FieldType.VOLCANIC:
                    Effect.PlayerEffect("SummonIce_type4", pos, new Vector3(0.5f, 0.5f, 0.5f));
                    break;
            }

            for (int x = 0; m_Length >= x; x++)
            {
                Effect.PlayerEffect("MoveWall_Boss", pos + x * m_Wall.transform.forward, new Vector3(0.5f, 0.5f, 0.5f));
            }
        }



    }

    public override void OnDeactivate()
    {
        if (Effect)
        {
            var pos = GetComponent<Transform>().transform.position;
            pos.y -= 1.0f;

            switch (m_Type)
            {
                case FieldType.SNOW:
                    Effect.PlayerEffect("SummonIce", pos + m_Length * m_Wall.transform.forward, new Vector3(0.5f, 0.5f, 0.5f));
                    break;
                case FieldType.VOLCANIC:
                    Effect.PlayerEffect("SummonIce_type4", pos + m_Length * m_Wall.transform.forward, new Vector3(0.5f, 0.5f, 0.5f));
                    break;
            }
        }

        if (m_ObjectVibrate)
            m_ObjectVibrate.StopVibrate();

        this.gameObject.SetActive(false);
    }

//    public void OnDrawGizmos()
//    {
//#if UNITY_EDITOR
//        Gizmos.color = new Color(1f, 0f, 0f, 0.5f);
//        Gizmos.matrix = Matrix4x4.Rotate(m_WarningArrow.transform.rotation);
//        Gizmos.DrawCube(m_WarningArrow.transform.position, m_WarningArrow.transform.lossyScale);
//#endif
//    }

    private void OnValidate()
    {
#if UNITY_EDITOR

        if (m_WarningArrow)
        {
            Vector3 scale = m_Wall.transform.lossyScale;
            Vector3 pos = m_WarningArrow.transform.localPosition;

            m_WarningArrow.transform.localScale = new Vector3(m_WarningArrow.transform.localScale.x, m_Length + 1f, m_WarningArrow.transform.localScale.z);
            m_WarningArrow.transform.position = this.transform.position + this.transform.forward * m_Length * 0.5f - new Vector3(0f,m_Wall.transform.lossyScale.y * 0.5f,0f);

        }

#endif
    }
}
