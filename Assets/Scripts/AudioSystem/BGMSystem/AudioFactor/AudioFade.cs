/**
 * @file    AudioFade.cs
 * @brief   AudioSystem機能群：フェードアウト・イン機能
 * @author  谷沢 瑞己
 */
using System.Collections;
using UnityEngine;

/**
 * @class   AudioFadeクラス
 * @brief   
 */
public class AudioFade
{
    //! フェード処理中かどうか
    private bool m_is_fading = false;

    //! 操作対象
    private AudioSource m_source;
    //! フェード後音量
    private float       m_end_value;
    //! 処理時間
    private float       m_proc_sec;

    public void Set(AudioSource _source, float _end_value, float _proc_sec)
    {
        m_source = _source;
        m_end_value = _end_value;
        m_proc_sec = _proc_sec;

    }

    public bool IsFading
    {
        get { return m_is_fading; }
    }

    //! フェード処理
    public IEnumerator FadeUpdate()
    {
        if (m_source == null) yield break;

        float _start_value = m_source.volume;
        m_is_fading = true;

        //! 開始フレームは処理しない
        yield return new WaitForEndOfFrame();

        //! 経過時間の合計
        float _sec = 0.0f;

        //　音量の操作
        while (Mathf.Abs(m_end_value - m_source.volume) > 0)
        {
            _sec = Mathf.Min(m_proc_sec, _sec + Time.deltaTime);
            m_source.volume = Mathf.Lerp(_start_value, m_end_value, _sec / m_proc_sec);
            yield return null;
        }

        // 停止命令時
        if (!(m_end_value > 0))
        {
            m_source.Stop();
            m_source.clip = null;
        }
        m_is_fading = false;

        yield break;
    }

}
