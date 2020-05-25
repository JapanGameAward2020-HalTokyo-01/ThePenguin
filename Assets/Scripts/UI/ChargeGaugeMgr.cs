/**
 * @file    ChargeGaugeMgr.cs
 * @brief   チャージゲージの表示/非表示を切り替える
 * @author  谷沢 瑞己
 */

using System.Collections;
using UnityEngine;

/**
 * @file    ChargeGaugeMgrクラス
 * @brief   チャージゲージの表示/非表示を切り替える
 */
 [RequireComponent(typeof(Transform))]
public class ChargeGaugeMgr : MonoBehaviour
{
	//! オンオフを切り替えるオブジェクト
	[SerializeField, Tooltip("子要素のオブジェクトが入ります(表示/非表示を切り替える対象)")]
	private ChargeGaugeProc m_Processor;

	//! インプットハンドラー
	private InputHandler m_input;

	/**
	 * @brief   初期化
	 */
	public void Start()
	{
		//! InputHandlerにEvent登録
		m_input = FindObjectOfType<InputHandler>();
		m_input.RegisterInputEvent(new InputEvent(this));

		// ゲージ座標は必ず中央やや上部に配置するように変更(演出などでカメラ注視点が変更される可能性は無視)
	}

	/**
	 * @brief   更新
	 */
	public void Update()
	{
		if (m_Processor.isActiveAndEnabled)
		{
			m_Processor.OnUpdate(m_input);
		}

	}


	/**
	 * @brief   ゲージ表示をノンアクティブにする
	 */
	public void ActivateGauge()
	{
		m_Processor.gameObject.SetActive(true);
	}

	/**
	 * @brief   ゲージ表示をアクティブにする
	 */
	public void HydeGauge()
	{
		m_Processor.gameObject.SetActive(false);
	}

	/**
	 * @class	ChargeGaugeMgr.InputEventクラス
	 * @brief	InputHandlerの状態変化時に行う処理
	 */
	public class InputEvent : InputHandler.InputEventBase
	{
		private ChargeGaugeMgr m_gauge_mgr;

		/**
		 * @brief	コンストラクタ
		 * @param (_gauge_mgr)	ゲージの出現、消去を操作するクラス
		 */
		public InputEvent(ChargeGaugeMgr _gauge_mgr)
		{
			m_gauge_mgr = _gauge_mgr;
		}

		/**
		 * @brief	Idle状態の処理
		 */
		public override void OnIdle()
		{
			base.TickStateIdle();

			if(m_Handler.Power > 0)
				m_gauge_mgr.ActivateGauge();
		}

		/**
		 * @brief	Run状態になった場合に１度処理
		 */
		public override void TickStateRun()
		{
			base.TickStateRun();
			m_gauge_mgr.HydeGauge();
		}
	}

}
