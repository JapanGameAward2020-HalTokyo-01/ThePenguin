﻿/**
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
        JUNGLE,
        VOLCANIC
    }

    [SerializeField]
    FieldType m_Type;

    [SerializeField]
    TextureData m_Data;

    private void OnDrawGizmos()
    {
        var mesh = this.gameObject.GetComponentInChildren<MeshRenderer>();
        Material m = mesh.material;
        m.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));
    }

}
