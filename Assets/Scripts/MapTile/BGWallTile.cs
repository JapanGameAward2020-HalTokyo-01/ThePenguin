﻿/**
* @file     BGWallTile.cs
* @brief    バックグラウンドウォールタイル
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGWallTile : MonoBehaviour
{
    public enum FieldType
    {
        SNOW = 0,
        DESERT,
        JUNGLE,
    }

    [SerializeField]
    FieldType m_Type;

    [SerializeField]
    TextureData m_Data;

    private void OnDrawGizmos()
    {
        this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));

    }

}
