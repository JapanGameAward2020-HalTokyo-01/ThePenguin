/**
 * @file    BGMManager.cs
 * @brief   AudioSystem機能群とそれを使うクラスに分離し、使う側のクラスをゲームオブジェクトにくっつけるという実装方針(GoF的にはBridgeパターンをイメージ)
 * @author  谷沢 瑞己
 */
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using System.Runtime.Remoting.Messaging;

/**
 * @class   BGMManagerクラス
 * @brief   AudioSystem機能群を集約し使うクラス
 *			本体はBGMを再生する機能のみを持つ
 */
public class BGMManager : MonoBehaviour
{
	[Header("General")]

	[SerializeField, Min(2), Tooltip("BGM用AudioSource数")]
	private int m_bgm_voice_num = 2;

	//! オーディオリスト(BGM切り替え等に使用)
	[SerializeField]
	private BGMs m_audio_list = null;

	[Header("BGM")]

	//! 操作対象オーディオソースコンポーネント
	private AudioSource m_current_source = null;
	private List<AudioSource> m_source_list = new List<AudioSource>();
	[SerializeField, NonEditableField]
	private bool[] m_isplay;

	// bgmファイル個別のオプションデータ
	private AudioBGMParams m_param;

	//! 機能群
	private AudioLoop m_loop = new AudioLoop();
	private AudioFade m_fade = new AudioFade();
	public AudioFade Fade
	{
		get { return m_fade; }
	}

	// 再生中か判定
	public bool IsPlay { get { return m_current_source != null && m_current_source.isPlaying; } }

	// 複数化回避
	private static BGMManager m_instance = null;
	public static BGMManager Instance { get => m_instance; }

	// 初期化(unique)
	public void Awake()
	{
		if (m_instance != null)
		{
			Destroy(this.gameObject);
			return;
		}

		DontDestroyOnLoad(this.gameObject);
		m_instance = this;
		m_instance.OnAwake();

		m_isplay = new bool[m_source_list.Count];

	}

	// 初期化(その他)
	private void OnAwake()
	{
		// オーディオソース作成
		for (int cnt = 0; cnt < m_bgm_voice_num; cnt++)
		{
			AudioSource _s = gameObject.AddComponent<AudioSource>();
			_s.outputAudioMixerGroup = m_audio_list.BGMMixer;
			_s.loop = true;
			_s.playOnAwake = false;

			m_source_list.Add(_s);
		}

		// カレントをリストの最初で設定
		m_current_source = m_source_list[0];
	}

	/**
	 * @brief   未使用のAudioSourceを取得する
	 */
	private AudioSource FindUnusedSource()
	{
		// 使用していないAudioSourceの探索
		AudioSource _s = m_source_list.FirstOrDefault(s => !s.isPlaying);
		if (_s == null)
		{
			// いいnullチェックが思いつかない(とりあえず現在メインで使っていないものを取り出す)
			_s = m_source_list.First(s => !(s == m_current_source));
		}
		return _s;
	}

	/**
	 * @brief   BGM再生
	 */
	public void Play(BGMs.Index _index, float delay = 0.0f)
	{
		// AudioSourceの切り替え・作成

		// 再生停止
		if (_index == BGMs.Index.None)
		{
			fade(0.0f, 1.0f, m_current_source);
			return;
		}

		// インデックスからBGMファイル固有パラメータ取得(現在再生中と同じ音の場合、処理中断)
		AudioBGMParams _p = m_audio_list.SelectBGM(_index);

		// BGM再生中、同じオーディオクリップを指定した時は処理を無視する
		if(m_current_source.isPlaying)
			if (m_param != null && _p.Clip == m_param.Clip) return;
		m_param = _p;

		PlayProcess(delay);
	}

	/**
	 * @brief   エリア指定BGM選択再生
	 */
	public void Play(BGMs.Index _index, int _area, float delay = 0.0f)
	{
		// AudioSourceの切り替え・作成

		// 再生停止
		if (_index == BGMs.Index.None)
		{
			fade(0.0f, 1.0f, m_current_source);
			return;
		}

		// インデックスからBGMファイル固有パラメータ取得(現在再生中と同じ音の場合、処理中断)
		AudioBGMParams _p = m_audio_list.SelectBGM(_index, _area);

		// BGM再生中、同じオーディオクリップを指定した時は処理を無視する
		if (m_current_source.isPlaying)
			if (m_param != null && _p.Clip == m_param.Clip) return;
		m_param = _p;

		PlayProcess(delay);
	}

	/**
	 * @brief   BGM再生共通処理
	 */
	private void PlayProcess(float _delay = 0.0f)
	{
		// 使用していないAudioSourceの探索
		AudioSource _s = FindUnusedSource();
		if(m_current_source != _s)
			// 再生中のオーディオソース停止
			fade(0.0f, 1.0f, m_current_source);
		m_current_source = _s;

		Debug.Log("Play BGM");
		m_current_source.clip = m_param.Clip;
		m_current_source.volume = 1.0f;
		StartCoroutine(DelayedPlay(_delay));
	}

	/**
	 * @brief   ディレイ再生
	 */
	IEnumerator DelayedPlay(float delay)
	{
		yield return new WaitForSecondsRealtime(delay);
		m_current_source.Play();
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		for(int cnt = 0; cnt < m_source_list.Count; cnt++)
		{
			m_isplay[cnt] = m_source_list[cnt].isPlaying;
		}

		if (m_current_source != null && m_current_source.isPlaying)
			m_loop.OnUpdate(m_current_source, m_param);
	}

	/**
	 * @brief   フェード機能
	 */
	 public void fade(float _end_value, float _proc_sec, AudioSource _source)
	{
		m_fade.Set(_source, _end_value, _proc_sec);
		StartCoroutine(m_fade.FadeUpdate());
	}
}
