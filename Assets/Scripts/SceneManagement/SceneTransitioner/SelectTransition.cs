/**
 * @file    SelectTransition.cs
 * @brief   ステージセレクトシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   SelectTransitionクラス
 * @brief   ステージセレクトシーンのシーン遷移周りの処理を担当するクラス
 */
public class SelectTransition : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
	private StageSelectCtrl m_select_ctrl = null;

	//! シーン遷移オブジェクト
	private TransScene m_transitioner = null;

	public void Start()
	{
		//m_select_ctrl.Activate(true);
	}


	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		// キー入力があればシーン遷移する
		if (Input.GetButtonDown("Fire1")) SceneTransition();
		m_text.text = "SelectScene\nSelect Stage";

		// フレーム更新
	}

	/**
	 * @brief	選択したコマンドを実行する
	 */
	private void SceneTransition()
	{
		//! 選択肢のインデックス
		int _select = m_select_ctrl.SelectIndex;

		// 遷移条件：選択肢毎に異なる
		if (m_select_ctrl.SelectToTitle) m_transitioner = new TransScene(KSceneIndex.Title);
		else m_transitioner = new TransScene(KSceneIndex.GameMain);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}
}
