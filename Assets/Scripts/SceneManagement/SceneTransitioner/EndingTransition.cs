/**
 * @file    EndingTransition.cs
 * @brief   エンディングシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   EndingTransitionクラス
 * @brief   エンディングシーンのシーン遷移周りの処理を担当するクラス
 */
public class EndingTransition : SceneTransitionBase
{
	// 待機時間(アニメーションが無い間とりあえず)
	[SerializeField]
	private float m_movie_time = 10.0f;
	private float m_current_time = 0.0f;

	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	/**
	 * @brief	初期化
	 */
	private void Start()
	{
		m_current_time = m_movie_time;
	}

	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		// 遷移条件１：何か入力があった場合→タイトルシーン
		if (Input.anyKeyDown) m_transitioner = new TransScene(KSceneIndex.Title);

		// 遷移条件２：ロゴムービーが再生終了した場合→タイトルシーン
		if (m_current_time < 0) m_transitioner = new TransScene(KSceneIndex.Title);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();

		// フレーム更新
		m_current_time -= Time.deltaTime;
		m_text.text = "EndingScene\nあと " + m_current_time.ToString("F0") + " 秒";
	}
}
