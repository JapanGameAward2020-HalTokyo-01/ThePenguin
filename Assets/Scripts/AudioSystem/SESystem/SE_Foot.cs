using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class SE_Foot : MonoBehaviour
{
    //! オーディオリスト(そーディオソースへの再生ファイル指定等に使用)
	[SerializeField, Tooltip("ステージデータ(現在のエリアの特定用)")]
	private StageMetaParam m_stage_data;
    [SerializeField, Tooltip("効果音リスト")]
    private SEs m_se_list = null;
	[SerializeField, Range(0.017f, 1.000f),Tooltip("再生間隔(sec)")]
	private float m_base_interval = 0.5f;
	[SerializeField, Range(0.0f, 0.1f), Tooltip("再生間隔のブレ幅(±倍率)")]
	private float m_amplitude = 0.05f;

	// オーディオソースコンポーネント
    private AudioSource m_source;

	// 足音リスト
	private List<AudioClip> m_clip_list; 

	// 再生状態
	private bool m_is_play = false;
	// 次の再生までのインターバルタイム
	private float m_interval = 0;

	private AudioFade m_fade = new AudioFade();

	public void Awake()
	{
		if (m_stage_data.m_current_area_index == 0) m_clip_list = m_se_list.Foot_1;
		else if (m_stage_data.m_current_area_index == 1) m_clip_list = m_se_list.Foot_2;
		else if (m_stage_data.m_current_area_index == 2) m_clip_list = m_se_list.Foot_3;
		else if (m_stage_data.m_current_area_index == 3) m_clip_list = m_se_list.Foot_4;
		else m_clip_list = m_se_list.Foot_1;

		m_source = GetComponent<AudioSource>();
		m_source.volume = 1.0f;
		m_source.outputAudioMixerGroup = m_se_list.FootMixer;
		m_source.loop = false;
	}

	// 更新
	public void Update()
	{
		if (m_is_play)
		{
			m_interval -= Time.deltaTime;
			if(m_interval < 0) Play();
		}
	}

	// ループの開始
	public void StartSound()
	{
		Play();
		m_is_play = true;
	}

	// ループの停止
	public void StopSound()
	{
		// 瞬間フェードかけて停止(ノイズ防止)
		m_fade.Set(m_source, 0.0f, 0.017f);
		StartCoroutine(m_fade.FadeUpdate());
		m_is_play = false;
	}

	// 再生
	private void Play()
	{
		// インターバル再設定
		m_interval = Random.Range(m_base_interval * (1.0f - m_amplitude), m_base_interval * (1.0f + m_amplitude));
		// オーディオクリップのランダム指定
		m_source.clip = m_clip_list[Random.Range(0, m_clip_list.Count)];
		// 再生
		m_source.volume = 1.0f;
		m_source.Play();
	}

}
