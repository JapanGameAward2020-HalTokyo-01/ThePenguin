/**
 * @file    AudioSEParams.cs
 * @brief   オーディオファイル毎のコントロール用パラメータ(SoundEffect用)
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class   AudioSEParamsクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioParam(SE)", fileName = "AudioSEParam")]
public class AudioSEParams : ScriptableObject
{
    //! 検索用インデックス名
    [SerializeField]
    public string m_index_name;

    //! 対象オーディオクリップ
    [SerializeField]
    public AudioClip m_clip;

    //! 再生開始サンプル数
    [SerializeField]
    public uint m_start_sample;
}
