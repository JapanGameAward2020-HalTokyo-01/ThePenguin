using System;
using System.Collections.Generic;
using UnityEngine;


public class SE_Voice : MonoBehaviour
{
	[Serializable]
	struct Param
	{
		[NonEditableField, Tooltip("オーディオソースコンポーネント")]
		public AudioSource m_source;
		[Tooltip("再生間隔(sec)")]
		public float m_time_min;
		[Tooltip("再生間隔(sec)")]
		public float m_time_max;
		[NonEditableField, Tooltip("次の再生までのインターバルタイム")]
		public float m_interval;
		[NonEditableField, Tooltip("ボイスリスト")]
		public List<AudioClip> m_clip_list;
		[NonEditableField, Tooltip("再生中インデックス")]
		public int m_index;
	}

	[SerializeField, Tooltip("効果音リスト")]
	private SEs m_se_list = null;
	// ステージ上のペンギンの数を参照する
	private PenguinManager m_pen_mgr;

	[Header("ParentPenguin Voice")]
	[SerializeField]
	private Param m_oya;

	[Header("ChildPenguin Voice")]
	[SerializeField]
	private Param m_ko;

	// 更新するフラグ
	public bool m_is_play = false;

	public void Awake()
	{
		m_pen_mgr = FindObjectOfType<PenguinManager>();

		m_oya.m_clip_list = m_se_list.ParentVoice;
		m_oya.m_source.outputAudioMixerGroup = m_se_list.ParentVoiceMixer;
		m_oya.m_source.volume = 1.0f;
		m_oya.m_source.loop = false;
		// インターバル設定
		m_oya.m_interval = UnityEngine.Random.Range(m_oya.m_time_min, m_oya.m_time_max);

		m_ko.m_clip_list = m_se_list.ChildVoice;
		m_ko.m_source.outputAudioMixerGroup = m_se_list.ChildVoiceMixer;
		m_ko.m_source.volume = 1.0f;
		m_ko.m_source.loop = false;
		// インターバル設定
		m_ko.m_interval = UnityEngine.Random.Range(m_ko.m_time_min, m_ko.m_time_max);
	}

	public void Update()
	{
		// ゲームが停止している場合
		if (!m_is_play) return;

		// 時間カウント進める
		float rate = 1.0f;
		if (m_pen_mgr != null)
			rate += (float)m_pen_mgr.m_PackCount / (float)m_pen_mgr.m_TotalCount;

		m_oya.m_interval -= Time.deltaTime;
		m_ko.m_interval -= Time.deltaTime * rate;

		// 再生処理
		if(m_oya.m_interval < 0)
		{
			// インターバル再設定
			m_oya.m_interval = UnityEngine.Random.Range(m_oya.m_time_min, m_oya.m_time_max);
			Play(m_oya);
		}
		if(m_ko.m_interval < 0)
		{
			// インターバル再設定
			m_ko.m_interval = UnityEngine.Random.Range(m_ko.m_time_min, m_ko.m_time_max);
			Play(m_ko);
		}
	}

	private void Play(Param _param)
	{
		// オーディオクリップのランダム指定(連続させない)
		int rnd = UnityEngine.Random.Range(0, _param.m_clip_list.Count);
		_param.m_index = (_param.m_index + rnd) % _param.m_clip_list.Count;
		_param.m_source.clip = _param.m_clip_list[_param.m_index];

		// 再生
		_param.m_source.volume = 1.0f;
		_param.m_source.Play();

	}
}
