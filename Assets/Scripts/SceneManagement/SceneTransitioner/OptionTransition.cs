/**
 * @file    OptionTransition.cs
 * @brief   通常オプションシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   OptionTransitionクラス
 * @brief   通常オプションシーンのシーン遷移周りの処理を担当するクラス
 */
public class OptionTransition : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
	private OptionSelectCtrl m_select_ctrl = null;

	//! シーン遷移オブジェクト
	private TransScene m_transitioner = null;

	/**
	 * @brief	初期化
	 */
	public void Start()
	{
		m_select_ctrl.Activate(true);
		m_text.text = "OptionScene\nSelect Command";
	}

	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		// キー入力があればシーン遷移する
		if (Input.GetButtonDown("Fire1")) SceneTransition();

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
		if (_select == 0) m_text.text = "OptionScene\nHow To Play";
		if (_select == 1) m_text.text = "OptionScene\nAudio Volume";
		if (_select == 2) m_text.text = "OptionScene\nData Delete";
		if (_select == 3) m_transitioner = new TransScene(KSceneIndex.Title);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}
}
