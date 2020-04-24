/**
 * @file    LogoTransition.cs
 * @brief   ロゴシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   LogoTransitionクラス
 * @brief   ロゴシーンのシーン遷移周りの処理を担当するクラス
 */
public class LogoTransition : MonoBehaviour
{
	// 待機時間(アニメーションが無い間とりあえず)
	[SerializeField]
	private float m_movie_time = 10.0f;
	private float m_current_time = 0.0f;


	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	//! シーン遷移オブジェクト
	private TransScene m_transitioner = null;

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

		// 遷移条件２：ロゴムービーが再生終了した場合→最初から再生しなおし
		if (m_current_time < 0) m_current_time = m_movie_time;

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();

		// フレーム更新
		m_current_time -= Time.deltaTime;
		m_text.text = "LogoScene\nあと " + m_current_time.ToString("F0") + " 秒";
	}
}
