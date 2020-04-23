using UnityEngine;
using Assets.Scripts.SceneManagement;

public class StateActive_GameMain : StateBase_GameMain
{
	//! 遷移先シーン判断に使うオブジェクト
	[SerializeField]
	private GameMain_PlayerCtrl m_player;

	public override void OnUpdate(GameMainTransition state_holder)
	{
		SceneTransition(state_holder);

		// ボタン入力を受け取りポーズ状態に変更
		if (Input.GetButtonDown("Fire2")) state_holder.ChangeState(1);
		m_text.text = "GameMainScene\nPush MenuButton";

		// フレーム更新
		m_player.OnUpdate();

	}

	/**
	 * @brief	シーン遷移をチェックする
	 */
	private void SceneTransition(GameMainTransition state_holder)
	{
		// 雑に書きます
		if (m_player.NextSceneIndex == KSceneIndex.Select) m_transitioner = new TransScene(m_player.NextSceneIndex);
		if (m_player.NextSceneIndex == KSceneIndex.Ending) m_transitioner = new TransScene(m_player.NextSceneIndex);
		if (m_player.NextSceneIndex == KSceneIndex.GameOver) state_holder.ChangeState(2);

		// シーン遷移があれば実行する
		if (m_transitioner != null) m_transitioner.Transition();
	}


}
