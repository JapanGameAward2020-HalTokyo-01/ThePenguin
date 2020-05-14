/**
 * @file    StateActive_GameMain.cs
 * @brief   ゲームメインシーンの通常状態クラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using Assets.Scripts.SceneManagement;

/**
 * @class   StateActive_GameMainクラス
 * @brief   ゲームメインシーンの通常状態クラス
 */
public class StateActive_GameMain : StateBase_GameMain
{
	//! 遷移先シーン判断に使うオブジェクト
	[SerializeField]
	private GameMain_PlayerCtrl m_player = null;

	/**
	 * @brief	フレーム更新(状態ホルダー側で呼び出し)
	 */
	public override void OnUpdate(GameMainTransition state_holder)
	{
		SceneTransition(state_holder);

		// ボタン入力を受け取りポーズ状態に変更
		if (Input.GetButtonDown("Fire2")) state_holder.ChangeState(KGameMainStateIndex.Pause);
		//m_text.text = "GameMainScene\nPush MenuButton";

		// フレーム更新
		m_player.OnUpdate();

	}

	/**
	 * @brief	シーン遷移をチェックする
	 */
	private void SceneTransition(GameMainTransition state_holder)
	{
		// 雑に書きます
		if (m_player.NextSceneIndex == KSceneIndex.None)
		{
			if(m_player.NextStateIndex != KGameMainStateIndex.None)
				state_holder.ChangeState(m_player.NextStateIndex);
		}
		else
		{
			m_transitioner = new TransScene(m_player.NextSceneIndex);
		}

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}


}
