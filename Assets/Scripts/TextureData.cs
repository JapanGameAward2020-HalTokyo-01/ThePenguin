/**
* @file     TextureData.cs
* @brief    テクスチャーデータ
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
 * @class   テクスチャー情報格納用スクリプタブルクラス
 * @brief   フィールドの種類に応じて用意するテクスチャーデータ
 */
[CreateAssetMenu(fileName ="New Data", menuName ="TextureData/Create Data Assert", order = 1)]
public class TextureData : ScriptableObject
{

    public List<Texture2D> m_Textures = new List<Texture2D>();

    public Texture2D GetTexture(int index)
    {
        return m_Textures[index];
    }
}
