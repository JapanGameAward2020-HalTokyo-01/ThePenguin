/**
 * @file    AudioBGMParams.cs
 * @brief   オーディオファイル毎のコントロール用パラメータ(BGM用)
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class   AudioBGMParamsクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioParam(BGM)", fileName = "AudioBGMParam")]
public class AudioBGMParams : ScriptableObject
{
    //! 検索用インデックス名
    public string m_index_name;

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

    [Header("Loop Parameter")]

    //! ループ開始サンプル数
    [SerializeField]
    private uint m_loop_begin;
    public uint LoopBegin
    {
        get { return m_loop_begin; }
    }

    //! ループ終了サンプル数
    [SerializeField]
    private uint m_loop_end;
    public uint LoopEnd
    {
        get { return m_loop_end; }
    }
}
