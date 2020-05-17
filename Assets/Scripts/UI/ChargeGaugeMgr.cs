using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UIElements;

public class ChargeGaugeMgr : MonoBehaviour
{
	//! 追従ターゲット
	[SerializeField]
	private ParentPenguin m_target_obj;

	//! オンオフを切り替えるオブジェクト
	[SerializeField]
	private ChargeGaugeProc m_Processor;

	private InputHandler m_input;

	public void Start()
	{
		//! InputHandlerにEvent登録
		m_input = m_target_obj.GetInputHandler();
		m_input.RegisterInputEvent(new InputEvent(this));
	}

	public void ActivateGauge()
	{
		// ノンアクティブにする
		m_Processor.gameObject.SetActive(true);
	}

	public void HydeGauge()
	{
		// アクティブにする
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
