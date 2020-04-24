/**
 * @file    StatePause_GameMain.cs
 * @brief   ゲームメインシーンのポーズ状態クラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using Assets.Scripts.SceneManagement;

/**
 * @class   StatePause_GameMainクラス
 * @brief   ゲームメインシーンのポーズ状態クラス
 */
public class StatePause_GameMain : StateBase_GameMain
{
	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
	private GamePauseCtrl m_pause_ctrl;

	/**
	 * @brief	初期化(状態ホルダー側で呼び出し)
	 */
	public override void OnStart() 
	{
		m_pause_ctrl.Activate(true);
	}

	/**
	 * @brief	フレーム更新(状態ホルダー側で呼び出し)
	 */
	public override void OnEndState()
	{
		m_pause_ctrl.Activate(false);
	}

	public override void OnUpdate(GameMainTransition state_holder)
	{
		// キー入力があればシーン遷移する
		if (Input.GetButtonDown("Fire1")) SelectTransition(state_holder);
		m_text.text = "GameMainScene\nSelect Command";

		// フレーム更新

	}

	/**
	 * @brief	選択したコマンドを実行する
	 */
	private void SelectTransition(GameMainTransition state_holder)
	{
		//! 選択肢のインデックス
		int _select = m_pause_ctrl.SelectIndex;

		// 遷移条件：選択肢毎に異なる
		if (_select == 0) state_holder.ChangeState(0);
		if (_select == 1) m_transitioner = new TransScene(KSceneIndex.GameMain);
		if (_select == 2) m_owner_obj.ChangeState(KGameMainStateIndex.Option);
		if (_select == 3) m_transitioner = new TransScene(KSceneIndex.Select);
		if (_select == 4) m_transitioner = new TransScene(KSceneIndex.Title);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}

}
