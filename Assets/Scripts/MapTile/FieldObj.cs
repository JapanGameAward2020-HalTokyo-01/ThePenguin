/**
* @file     FieldObj.cs
* @brief    フィールドオブジェクトテクスチャー切り替えクラス
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FieldObj : MonoBehaviour
{
    public enum FieldType
    {
        SNOW = 0,
        DESERT,
        JUNGLE,
        VOLCANIC
    }

    [SerializeField]
    FieldType m_Type;

    FieldType m_TypeLast;

    [SerializeField]
    TextureData m_Data;

    private void OnDrawGizmos()
    {
        if (m_Type != m_TypeLast)
        {
            //var m = new Material(this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial);
            //m.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));
            //m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
            //this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial = m;
            //m_TypeLast = m_Type;
        }
    }
}
