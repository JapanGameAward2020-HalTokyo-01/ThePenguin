/**
* @file     EffectSpawner.cs
* @brief    エフェクトスポーンナー
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class EffectSpawner: MonoBehaviour
{
    public List<EffekseerEffectAsset> m_EffectAssets = new List<EffekseerEffectAsset>();

    [SerializeField, NonEditableField]
    EffekseerEffectAsset m_CurrentEffect = null;

    EffekseerHandle handle;

    public void PlayerEffect(string name, Vector3 pos)
    {

        foreach (var effectAsset in m_EffectAssets)
        {
            if (effectAsset.name == name)
            {
                m_CurrentEffect = effectAsset;

                // transformの位置でエフェクトを再生する
                handle = EffekseerSystem.PlayEffect(effectAsset, pos);
            }
        }


    }

    public void PlayerEffect(string name, Vector3 pos, Quaternion rot)
    {
        foreach (var effectAsset in m_EffectAssets)
        {
            if (effectAsset.name == name)
            {
                m_CurrentEffect = effectAsset;

                // transformの位置でエフェクトを再生する
                handle = EffekseerSystem.PlayEffect(effectAsset, pos);

                handle.SetRotation(rot);
            }
        }
    }

    public void PlayerEffect(string name, Vector3 pos, Vector3 scale)
    {
        foreach (var effectAsset in m_EffectAssets)
        {
            if (effectAsset.name == name)
            {
                m_CurrentEffect = effectAsset;

                // transformの位置でエフェクトを再生する
                handle = EffekseerSystem.PlayEffect(effectAsset, pos);

                handle.SetScale(scale);
            }
        }
    }

    public EffekseerEffectAsset GetEffect(string name)
    {
        int a = 0;

        foreach (var effectAsset in m_EffectAssets)
        {
            if (effectAsset.name == name)
            {

                return effectAsset;
            }
        }

        return null;
    }
}
