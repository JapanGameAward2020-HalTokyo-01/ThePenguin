/**
 * @file    AudioManager.cs
 * @brief   AudioSystem機能群とそれを使うクラスに分離し、使う側のクラスをゲームオブジェクトにくっつけるという実装方針(GoF的にはBridgeパターンをイメージ)
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioManagerクラス
 * @brief   AudioSystem機能群を集約し使うクラス
 *			本体はBGMを再生する機能のみを持つ
 */
public class AudioManager : MonoBehaviour
{
	//! シーン初期BGM
	[SerializeField]
	private AudioBGMParams m_bgm = null;
	public AudioBGMParams BGMParam
	{
		get { return m_bgm; }
	}

	//! オーディオリスト(BGM切り替え等に使用)
	[SerializeField]
	private AudioList m_audio_list = null;

	//! 適用するミキサー
	[SerializeField]
	private AudioMixerGroup m_mixer = null;

	//! 操作対象オーディオソース
	AudioSource m_source = null;

	//! 機能群
	private AudioLoop m_loop = new AudioLoop();
	private AudioFade m_fade = new AudioFade();
	public AudioFade Fade
	{
		get { return m_fade; }
	}

	/**
	 * @brief   初期化
	 */
	public void Awake()
	{
		// AudioSource作成
		m_source = gameObject.GetComponent<AudioSource>();
		if (m_source == null) m_source = gameObject.AddComponent<AudioSource>();

		if(m_bgm == null) m_source.clip = null;
		else  m_source.clip = m_bgm.Clip;

		m_source.outputAudioMixerGroup = m_mixer;
		m_source.loop = true;
		m_source.Play();
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		m_loop.OnUpdate(m_source, m_bgm);
		m_fade.OnUpdate(m_source);
	}

}
