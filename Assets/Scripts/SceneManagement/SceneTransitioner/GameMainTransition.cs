/**
 * @file    GameMainTransition.cs
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   GameMainTransitionクラス
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 */
public class GameMainTransition : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
    private GamePauseCtrl m_pause_ctrl;

	//! 遷移先シーン判断に使うオブジェクト
	[SerializeField]
	private GameMain_PlayerCtrl m_player;

    //! シーン遷移オブジェクト
    private TransScene m_transitioner = null;

	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		if (m_pause_ctrl.ActiveSelect)
		{
			// キー入力があればシーン遷移する
			if (Input.GetButtonDown("Fire1")) SelectTransition();
			m_text.text = "GameMainScene\nSelect Command";

			// フレーム更新
		}
		else
		{
			SceneTransition();

			// ボタン入力を受け取り選択肢をActiveにする
			if (Input.GetButtonDown("Fire2")) m_pause_ctrl.Activate(true);
			m_text.text = "GameMainScene\nPush MenuButton";

			// フレーム更新
			m_player.OnUpdate();
		}
	}

	/**
	 * @brief	選択したコマンドを実行する
	 */
	private void SelectTransition()
	{
		//! 選択肢のインデックス
		int _select = m_pause_ctrl.SelectIndex;

		// 遷移条件：選択肢毎に異なる
		if (_select == 0) m_pause_ctrl.Activate(false);
		if (_select == 1) m_transitioner = new TransScene(KSceneIndex.GameMain);
		if (_select == 2) m_transitioner = new TransScene(KSceneIndex.Option);
		if (_select == 3) m_transitioner = new TransScene(KSceneIndex.Select);
		if (_select == 4) m_transitioner = new TransScene(KSceneIndex.Title);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}

	/**
	 * @brief	シーン遷移をチェックする
	 */
	private void SceneTransition()
	{
		// 雑に書きます
		if (m_player.NextSceneIndex != KSceneIndex.None)
			m_transitioner = new TransScene(m_player.NextSceneIndex);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}
}
