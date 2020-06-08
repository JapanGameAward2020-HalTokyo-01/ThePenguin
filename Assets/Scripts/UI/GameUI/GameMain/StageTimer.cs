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
	private float m_time;
    public float StageTime { get => m_time; set => m_time = value; }

    //! 操作対象のUI要素
 //   [SerializeField]
	//private Text m_minute_text;
	[SerializeField]
	private Text m_second_text;
	[SerializeField]
	private Text m_mini_sec_text;

    //! Timerが終わった時の処理
    public System.Action onTimerEnd;

    StartCameraSystem StartSystem;

    LevelSettings m_Levelsettings;



    private void Awake()
    {
        //! ゲームオーバー処理を設定
        onTimerEnd = delegate () { };

        if (!StartSystem)
            StartSystem = FindObjectOfType<StartCameraSystem>();

        if (!m_Levelsettings)
            m_Levelsettings = FindObjectOfType<LevelSettings>();
    }

    /**
	 * @brief   更新
	 */
    public void Update()
	{
        if (m_time <= 0)
        {
            onTimerEnd();
            return;
        }

        if (!StartSystem.GetNowPlaying() && !m_Levelsettings.m_clear_flag && !m_Levelsettings.m_failuer_flag)
        {
            // 時間の経過
            m_time = Math.Max(m_time - Time.deltaTime, 0.0f);
        }


		// 文字列の変更(常に２桁ゼロ埋め表示)
		//m_minute_text.text = (Mathf.FloorToInt(m_time) / 60).ToString("D2");
		m_second_text.text = Mathf.Min(999, (Mathf.FloorToInt(m_time))).ToString("D3");
		m_mini_sec_text.text = (Mathf.FloorToInt(m_time * 100) % 100).ToString("D2");


        //10秒以下数字を白色⇒赤色
        if(m_time<=10.0f)
        {
            m_second_text.color = new Color(1.0f, 0.0f, 0.0f);
            m_mini_sec_text.color = new Color(1.0f, 0.0f, 0.0f);
        }
    }
}
