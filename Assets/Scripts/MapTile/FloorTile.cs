/**
* @file     FloorTile.cs
* @brief    フロアタイル
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorTile : MonoBehaviour
{
    public enum FieldType
    {
        SNOW = 0,
        DESERT,

    }

    [SerializeField]
    FieldType m_Type;

    [SerializeField]
    TextureData m_Data;

    [SerializeField]
    MeshRenderer m_Mesh;

    private void OnDrawGizmos()
    {
        Material m = m_Mesh.sharedMaterial;
        m.SetTexture("_Albedo", m_Data.GetTexture((int)m_Type));
    }

}
