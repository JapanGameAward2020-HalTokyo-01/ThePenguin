/**
 * @file    AudioFade.cs
 * @brief   AudioSystem機能群：フェードアウト・イン機能
 * @author  谷沢 瑞己
 */
using System;
using UnityEngine;

public enum KAudioFade
{
    None = -1, In, Out
}

/**
 * @class   AudioFadeクラス
 * @brief   
 */
[Serializable]
public class AudioFade : AudioFactor
{
    //! 処理時間
    private float m_sec;

    //! 現在の経過時間
    private float m_current_sec;

    //! 処理方向
    private KAudioFade m_in_out_flag = KAudioFade.None;
    private int m_inout;

    // 呼ばれた時間からフェード(アウト/イン)を開始する
    public void Start(KAudioFade _fade, float _fade_sec)
    {
        m_sec = _fade_sec;
        m_in_out_flag = _fade;

        if (_fade == KAudioFade.In)
        {
            m_current_sec = 0.0f;
            m_inout = 1;
        }

        if (_fade == KAudioFade.Out) 
        {
            m_current_sec = _fade_sec;
            m_inout = -1;
        }
    }

    public override void OnUpdate(AudioSource _source)
    {
        if (m_in_out_flag == KAudioFade.None) return;

        // 現在時刻の増減
        m_current_sec = Mathf.Clamp(m_current_sec + m_inout * Time.deltaTime, 0, m_sec);

        //　音量の操作
        _source.volume = m_current_sec / m_sec;

        // 終了チェック
        float _volume = _source.volume;
        if (m_in_out_flag == KAudioFade.Out) _volume = 1.0f - _volume;
        if( _volume > 0.999999f) m_in_out_flag = KAudioFade.None;
    }

    public bool IsFading
    {
        get { return m_in_out_flag != KAudioFade.None; }
    }

}
