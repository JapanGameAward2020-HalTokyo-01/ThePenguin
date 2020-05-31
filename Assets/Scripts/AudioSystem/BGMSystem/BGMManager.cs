/**
 * @file    BGMManager.cs
 * @brief   AudioSystem機能群とそれを使うクラスに分離し、使う側のクラスをゲームオブジェクトにくっつけるという実装方針(GoF的にはBridgeパターンをイメージ)
 * @author  谷沢 瑞己
 */
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
	private AudioBGMList m_audio_list = null;

	[Header("BGM")]

	//! シーン初期BGM
	[SerializeField]
	private AudioBGMParams m_init_bgm = null;
	public AudioBGMParams BGMParam
	{
		get { return m_init_bgm; }
	}

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
	public void Start()
	{
		// AudioSource作成
		m_source = gameObject.GetComponent<AudioSource>();
		if (m_source == null) m_source = gameObject.AddComponent<AudioSource>();

		if(m_init_bgm == null) m_source.clip = null;
		else  m_source.clip = m_init_bgm.Clip;

		m_source.outputAudioMixerGroup = m_audio_list.BGMMixer;
		m_source.loop = true;
		m_source.Play();
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		m_loop.OnUpdate(m_source, m_init_bgm);
	}


	/**
	 * @brief   フェード機能
	 */
	 public void fade(float _end_value, float _proc_sec)
	{
		m_fade.Set(m_source, _end_value, _proc_sec);
		StartCoroutine("m_fade.FadeUpdate");
	}

}
