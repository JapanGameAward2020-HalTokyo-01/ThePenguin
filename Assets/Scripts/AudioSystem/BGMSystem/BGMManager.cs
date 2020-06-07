/**
 * @file    BGMManager.cs
 * @brief   AudioSystem機能群とそれを使うクラスに分離し、使う側のクラスをゲームオブジェクトにくっつけるという実装方針(GoF的にはBridgeパターンをイメージ)
 * @author  谷沢 瑞己
 */
using Boo.Lang;
using System.ComponentModel;
using UnityEngine;

/**
 * @class   BGMManagerクラス
 * @brief   AudioSystem機能群を集約し使うクラス
 *			本体はBGMを再生する機能のみを持つ
 */
public class BGMManager : MonoBehaviour
{
	[Header("General")]

	//! オーディオリスト(BGM切り替え等に使用)
	[SerializeField]
	private BGMs m_audio_list = null;

	[Header("BGM")]

	//! 操作対象オーディオソースコンポーネント
	AudioSource m_current_source = null;
	private List<AudioSource> m_source = null;

	AudioBGMParams m_param;

	//! 機能群
	private AudioLoop m_loop = new AudioLoop();
	private AudioFade m_fade = new AudioFade();
	public AudioFade Fade
	{
		get { return m_fade; }
	}

	/**
	 * @brief   BGM再生
	 */
	public void Play(BGMs.Index _index, int _area = 0)
	{
		// AudioSourceの切り替え・作成
		if (m_current_source != null)
		{
			fade(0.0f, 1.0f, m_current_source, m_param);
			m_source.Add(m_current_source);
		}
		m_current_source = gameObject.GetComponent<AudioSource>();
		if (m_current_source == null) m_current_source = gameObject.AddComponent<AudioSource>();

		// インデックスからBGMファイル固有パラメータ取得
		m_param = m_audio_list.SelectBGM(_index);
		if (m_param == null) m_current_source.clip = null;
		else m_current_source.clip = m_param.Clip;

		// 初期化
		m_current_source.outputAudioMixerGroup = m_audio_list.BGMMixer;
		m_current_source.loop = true;
		m_current_source.Play(1.0f);
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		m_loop.OnUpdate(m_current_source, m_init_bgm);
	}

	/**
	 * @brief   フェード機能
	 */
	 public void fade(float _end_value, float _proc_sec, AudioSource _source, AudioBGMParams _param)
	{
		m_fade.Set(_source, _end_value, _proc_sec);
		StartCoroutine("m_fade.FadeUpdate");
	}
}
