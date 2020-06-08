/**
 * @file    AudioSEList.cs
 * @brief   オーディオパラメータのScriptableObjectをまとめるリスト
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioSEListクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioSEList", fileName = "NewSEList")]
public class AudioSEList : ScriptableObject
{
    //! このオーディオリスト用ミキサー
    [SerializeField]
    private AudioMixerGroup m_mixer = null;
    public AudioMixerGroup Mixer
    {
        get { return m_mixer; }
    }

    //! オーディオリスト
    [SerializeField]
    private List<AudioSEParams> m_list = new List<AudioSEParams>();
    public List<AudioSEParams> List
    {
        get { return m_list; }
    }
}
