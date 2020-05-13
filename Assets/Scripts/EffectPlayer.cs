/**
* @file     EffectPlayer.cs
* @brief    エフェクトプレイヤー
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class EffectPlayer : MonoBehaviour
{
    public List<EffekseerEffectAsset> m_EffectAssets = new List<EffekseerEffectAsset>();

    [SerializeField, NonEditableField]
    EffekseerEffectAsset m_CurrentEffect = null;

    public void PlayerEffect(string name, Vector3 pos)
    {
        foreach (var effectAsset in m_EffectAssets)
        {
            if (effectAsset.name == name)
            {
                m_CurrentEffect = effectAsset;

                // transformの位置でエフェクトを再生する
                EffekseerHandle handle = EffekseerSystem.PlayEffect(effectAsset, pos);
            }
        }
    }
}
