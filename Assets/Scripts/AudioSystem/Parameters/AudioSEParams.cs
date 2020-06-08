/**
 * @file    AudioSEParams.cs
 * @brief   オーディオファイル毎のコントロール用パラメータ(SoundEffect用)
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioSEParamsクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioParam(SE)", fileName = "AudioSEParam")]
public class AudioSEParams : ScriptableObject
{
    //! 検索用インデックス名
    [SerializeField]
    private string m_index_name;
    public string Name
    {
        get { return m_index_name; }
    }

    //! 効果音用サブミキサー
    [SerializeField]
    private AudioMixerGroup m_se_sub_mixer = null;
    public AudioMixerGroup Mixer
    {
        get { return m_se_sub_mixer; }
    }

    //! 対象オーディオクリップ
    [SerializeField]
    private AudioClip m_clip;
    public AudioClip Clip
    {
        get { return m_clip; }
    }

    //! 再生開始サンプル数
    [SerializeField]
    private uint m_start_sample;
    public int InitSample
    {
        get { return (int)m_start_sample; }
    }

}
