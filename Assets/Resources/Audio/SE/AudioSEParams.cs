/**
 * @file    AudioSEParams.cs
 * @brief   オーディオファイル毎のコントロール用パラメータ(SE用)
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioSEParamsクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioParam(SE)", fileName = "AudioSEParams")]
public class AudioSEParams : ScriptableObject
{
    //! このオーディオリスト用ミキサー
    [SerializeField, Tooltip("音量調整やエフェクターを適用する所属オーディオグループ")]
    private AudioMixerGroup m_mixer = null;
    public AudioMixerGroup Mixer{ get => m_mixer; }

    //! 対象オーディオクリップ
    [SerializeField, Tooltip("対象オーディオクリップ")]
    private AudioClip m_clip;
    public AudioClip Clip{ get => m_clip; }

    //! 再生開始サンプル数
    [SerializeField, Tooltip("再生開始サンプル数(タイミング合わせに)")]
    private uint m_start_sample;
    public int InitSample{ get => (int)m_start_sample; }



}
