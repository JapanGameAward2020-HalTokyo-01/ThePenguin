/**
 * @file    OpeningTransition.cs
 * @brief   オープニングシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   OpeningTransitionクラス
 * @brief   オープニングシーンのシーン遷移周りの処理を担当するクラス
 */
public class OpeningTransition : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text;

	//! オープニングシーンの段階数(ページ数？)
	[SerializeField]
	private int m_sequence_num;

	//! 現在の表示ページ番号
	private int m_sequence = 0;

	//! シーン遷移先
	TransScene _transitioner = new TransScene(KSceneIndex.GameMain);

	/**
	 * @brief	フレーム更新
	 */
	public void Update()
	{
		if (m_sequence < m_sequence_num)
		{
			// ページを進める
			if (Input.GetButtonDown("Fire1")) m_sequence++;

			// ページ数表示
			m_text.text = "Opening Scene\nPush Button 3 to Next\n" + m_sequence.ToString() +  " / " + m_sequence_num.ToString();
		}
		else
		{
			// 最初のステージに遷移
			_transitioner.Transition();
		}
	}

}
