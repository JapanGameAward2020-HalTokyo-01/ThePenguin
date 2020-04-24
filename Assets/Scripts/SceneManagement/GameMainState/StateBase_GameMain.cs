/**
 * @file    StateBase_GameMain.cs
 * @brief   ゲームメインシーンのベース状態クラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

/**
 * @class   StateBase_GameMainクラス
 * @brief   ゲームメインシーンのベース状態クラス
 */
public class StateBase_GameMain : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	protected Text m_text = null;

	//! 状態を持つオブジェクト
	[SerializeField]
	protected GameMainTransition m_owner_obj = null;

	//! シーン遷移オブジェクト
	protected TransScene m_transitioner = null;

	/**
	 * @brief	初期化(状態ホルダー側で呼び出し)
	 */
	public virtual void OnStart() { }

	/**
	 * @brief	フレーム更新(状態ホルダー側で呼び出し)
	 */
	public virtual void OnUpdate(GameMainTransition state_holder) { }

	/**
	 * @brief	状態の遷移際に行う処理(状態ホルダー側で呼び出し)
	 */
	public virtual void OnEndState() { }
}
