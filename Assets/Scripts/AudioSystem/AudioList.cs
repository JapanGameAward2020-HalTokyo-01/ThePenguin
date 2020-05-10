/**
 * @file    AudioList.cs
 * @brief   オーディオパラメータのScriptableObjectをまとめるリスト
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;

/**
 * @class   AudioListクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioList", fileName = "AudioList")]
public class AudioList : ScriptableObject
{
    //! BGMリスト
    [SerializeField]
    private List<AudioBGMParams> m_bgm_list = new List<AudioBGMParams>();
    public List<AudioBGMParams> BGMList
    {
        get { return m_bgm_list; }
    }

    //! SEリスト
    [SerializeField]
    private List<AudioSEParams> m_se_list = new List<AudioSEParams>();
    public List<AudioSEParams> SEList
    {
        get { return m_se_list; }
    }

}
