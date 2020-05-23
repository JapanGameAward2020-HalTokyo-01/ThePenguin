/**
 * @file    StageTimer.cs
 * @brief   制限時間の表示
 * @author  谷沢 瑞己
 */
using System;
using UnityEngine;
using UnityEngine.UI;

/**
 * @file    StageTimer
 * @brief   制限時間の表示
 */
public class StageTimer : MonoBehaviour
{
	//! 制限時間
	[SerializeField]
	private float m_time;

	//! 操作対象のUI要素
	[SerializeField]
	private Text m_minute_text;
	[SerializeField]
	private Text m_second_text;
	[SerializeField]
	private Text m_mini_sec_text;

	/**
	 * @brief   更新
	 */
	public void Update()
	{
		if (m_time <= 0) return;

		// 時間の経過
		m_time = Math.Max(m_time - Time.deltaTime, 0.0f);

		// 文字列の変更(常に２桁ゼロ埋め表示)
		m_minute_text.text = (Mathf.FloorToInt(m_time) / 60).ToString("D2");
		m_second_text.text = (Mathf.FloorToInt(m_time) % 60).ToString("D2");
		m_mini_sec_text.text = (Mathf.FloorToInt(m_time * 100) % 100).ToString("D2");
	}


}
