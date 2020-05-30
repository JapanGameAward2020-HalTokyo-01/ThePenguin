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
    [SerializeField, NonEditableField, Tooltip("BGM用オーディオミキサー")]
    private AudioMixerGroup m_bgm_mixer = null;
    public AudioMixerGroup BGMMixer
    {
        get { return m_bgm_mixer; }
    }

    //! システムオーディオリスト
    [SerializeField, Tooltip("シーン別オーディオリスト")]
    private List<AudioBGMParams> m_system_bgm_list = new List<AudioBGMParams>();
    public List<AudioBGMParams> SystemBGMList
    {
        get { return m_system_bgm_list; }
    }

    //! レベル別オーディオリスト
    [SerializeField, Tooltip("ゲームメイン・エリア別オーディオリスト")]
    private List<AudioBGMParams> m_area_bgm_list = new List<AudioBGMParams>();
    public List<AudioBGMParams> AreaBGMList
    {
        get { return m_area_bgm_list; }
    }
}
