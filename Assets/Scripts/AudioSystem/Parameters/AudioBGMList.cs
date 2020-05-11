/**
 * @file    AudioBGMList.cs
 * @brief   オーディオパラメータのScriptableObjectをまとめるリスト
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioBGMListクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioBGMList", fileName = "NewBGMList")]
public class AudioBGMList : ScriptableObject
{
    //! このオーディオリスト用ミキサー
    [SerializeField]
    private AudioMixerGroup m_bgm_mixer = null;
    public AudioMixerGroup BGMMixer
    {
        get { return m_bgm_mixer; }
    }

    //! オーディオリスト
    [SerializeField]
    private List<AudioBGMParams> m_bgm_list = new List<AudioBGMParams>();
    public List<AudioBGMParams> BGMList
    {
        get { return m_bgm_list; }
    }
}
