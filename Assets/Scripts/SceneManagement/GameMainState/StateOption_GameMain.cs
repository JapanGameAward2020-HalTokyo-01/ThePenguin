/**
 * @file    StateOption_GameMain.cs
 * @brief   ゲームメインシーンのオプション状態クラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   StateOption_GameMainクラス
 * @brief   ゲームメインシーンのオプション状態クラス
 */
public class StateOption_GameMain : StateBase_GameMain
{
	//! 選択肢を取り出す対象オブジェクト
	[SerializeField]
	private OptionSelectCtrl m_select_ctrl = null;

	/**
	 * @brief	初期化(状態ホルダー側で呼び出し)
	 */
	public override void OnStart()
	{
		m_select_ctrl.Activate(true);
	}

	/**
	 * @brief	フレーム更新(状態ホルダー側で呼び出し)
	 */
	public override void OnUpdate(GameMainTransition state_holder)
	{
		// キー入力があればシーン遷移する
		if (Input.GetButtonDown("Fire1")) SelectTransition(state_holder);
		m_text.text = "GameMainScene\nOptionState\nSelect Command";

		// フレーム更新

	}

	/**
	 * @brief	状態の遷移際に行う処理(状態ホルダー側で呼び出し)
	 */
	public override void OnEndState()
	{
		m_select_ctrl.Activate(false);
	}

	/**
	 * @brief	選択したコマンドを実行する
	 */
	private void SelectTransition(GameMainTransition state_holder)
	{
		//! 選択肢のインデックス
		int _select = m_select_ctrl.SelectIndex;

		// 遷移条件：選択肢毎に異なる
		if (_select == 0) m_text.text = "GameMainScene\nOptionState\nHow To Play";
		if (_select == 1) m_text.text = "GameMainScene\nOptionState\nAudio Volume";
		if (_select == 2) m_text.text = "GameMainScene\nOptionState\nData Delete";
		if (_select == 3) m_owner_obj.ChangeState(m_owner_obj.PrevState);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}
}
