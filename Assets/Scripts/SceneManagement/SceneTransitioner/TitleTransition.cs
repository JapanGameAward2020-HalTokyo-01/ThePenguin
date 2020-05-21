/**
 * @file    TitleTransition.cs
 * @brief   タイトルシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   TitleTransitionクラス
 * @brief   タイトルシーンのシーン遷移周りの処理を担当するクラス
 */
public class TitleTransition : TransitionCtrlBase
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	private Text m_text = null;

	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
	private TitleSelectCtrl m_select_ctrl = null;

	//! ゲームシーン一時メタデータ
	[SerializeField]
	private StageMetaParam m_stage_param;

	[SerializeField]
	private byte[] m_area_stage_index = new byte[2];

	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		if (m_select_ctrl.ActiveSelect)
		{
			// キー入力があればシーン遷移する
			if (Input.GetButtonDown("Fire1")) SceneTransition();
			m_text.text = "TitleScene\nSelect Command";
		}
		else
		{
			// ボタン入力を受け取り選択肢をActiveにする
			if (Input.GetButtonDown("Fire1")) m_select_ctrl.Activate(true);
			m_text.text = "TitleScene\nPush Button 3";
		}

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
		if (_select == 0) m_transitioner = FirstCommand();
		if (_select == 1) m_transitioner = new TransScene(KSceneIndex.Select);
		if (_select == 2)
		{
			// オプション画面
		}
		if (_select == 3) ExitApp();

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}

	/**
	 * @brief	１つ目の選択肢が何かを判断する
	 */
	private TransScene FirstCommand()
	{
		// セーブデータがあった場合は続きから(ゲームメインシーン)
		if (m_select_ctrl.m_exist_data)
		{
			//! セーブデータからステージの進行度読み取って一時データ更新
			m_stage_param.m_area_index = m_area_stage_index[0];
			m_stage_param.m_stage_index = m_area_stage_index[1];
			return new TransScene(m_stage_param.LevelScene);
		}

		// セーブデータが無ければオープニングシーン
		else return new TransScene(KSceneIndex.Movie);
	}

}
