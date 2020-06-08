/**
 * @file    BGMManager.cs
 * @brief   AudioSystem機能群とそれを使うクラスに分離し、使う側のクラスをゲームオブジェクトにくっつけるという実装方針(GoF的にはBridgeパターンをイメージ)
 * @author  谷沢 瑞己
 */
using Boo.Lang;
using System.ComponentModel;
using System.Linq;
using UnityEditor.SceneManagement;
using UnityEngine;

/**
 * @class   BGMManagerクラス
 * @brief   AudioSystem機能群を集約し使うクラス
 *			本体はBGMを再生する機能のみを持つ
 */
public class BGMManager : MonoBehaviour
{
	[Header("General")]

	[SerializeField, Min(2), Tooltip("BGM用AudioSourceバッファ数")]
	private int m_bgm_voice_num = 2;

	//! オーディオリスト(BGM切り替え等に使用)
	[SerializeField]
	private BGMs m_audio_list = null;

	[Header("BGM")]

	//! 操作対象オーディオソースコンポーネント
	private AudioSource m_current_source = null;
	private List<AudioSource> m_source_list = new List<AudioSource>();

	// bgmファイル個別のオプションデータ
	private AudioBGMParams m_param;

	//! 機能群
	private AudioLoop m_loop = new AudioLoop();
	private AudioFade m_fade = new AudioFade();
	public AudioFade Fade
	{
		get { return m_fade; }
	}

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
	}

	// 初期化(その他)
	private void OnAwake()
	{
		// カレント初期化
		m_current_source = null;

		// オーディオソース作成
		for (int cnt = 0; cnt < m_bgm_voice_num; cnt++)
		{
			AudioSource _s = gameObject.AddComponent<AudioSource>();
			_s.outputAudioMixerGroup = m_audio_list.BGMMixer;
			_s.loop = true;
			_s.playOnAwake = false;

			m_source_list.Add(_s);
		}
	}

	/**
	 * @brief   BGM再生
	 */
	public void Play(BGMs.Index _index, int _area = 0)
	{
		// 使用していないAudioSourceの探索
		AudioSource _s = m_source_list.FirstOrDefault(s => !s.isPlaying);
		if(_s == null)
		{
			// いいnullチェックが思いつかない(とりあえず現在メインで使っていないものを取り出す)
			_s = m_source_list.Last(s => !(s == m_current_source));
		}

		// AudioSourceの切り替え・作成
		if (m_current_source != null)
		{
			// フェードアウト
			fade(0.0f, 1.0f, m_current_source, m_param);
		}
		m_current_source = _s;

		// インデックスからBGMファイル固有パラメータ取得
		m_param = m_audio_list.SelectBGM(_index, _area);

		// 再生する音の指定
		if (m_param == null)
		{
			m_current_source.clip = null;
			m_current_source.Stop();
		}
		else
		{
			m_current_source.clip = m_param.Clip;
			m_current_source.Play();
		}
	}

	/**
	 * @brief   更新
	 */
	public void FixedUpdate()
	{
		if(m_current_source != null && m_current_source.isPlaying)
			m_loop.OnUpdate(m_current_source, m_param);
		
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
