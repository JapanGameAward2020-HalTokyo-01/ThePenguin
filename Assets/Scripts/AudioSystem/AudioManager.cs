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
	//! 操作対象オーディオクリップ
	[SerializeField]
	private AudioClip m_clip = null;

	//! 適用するミキサー
	[SerializeField]
	private AudioMixerGroup m_mixer = null;

	//! 操作対象オーディオソース
	AudioSource m_source = null;

	//! ループの為のパラメータ
	[SerializeField]
	private AudioLoopParam m_loop;
	private AudioLoop m_loop_factor = new AudioLoop();

	/**
	 * @brief   初期化
	 */
	public void Awake()
	{
		// AudioSource作成
		m_source = gameObject.GetComponent<AudioSource>();
		if (m_source == null) m_source = gameObject.AddComponent<AudioSource>();

		m_source.clip = m_clip;
		m_source.outputAudioMixerGroup = m_mixer;
		m_source.loop = true;
		m_source.Play();
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		if(m_loop_factor != null) m_loop_factor.OnLoopCheck(m_source, m_loop);
	}

}
