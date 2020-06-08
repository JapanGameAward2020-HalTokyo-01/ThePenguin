/**
 * @file    ChargeGaugeMgr.cs
 * @brief   チャージゲージの表示/非表示を切り替える
 * @author  谷沢 瑞己
 */

using System.Collections;
using System.Runtime.InteropServices.WindowsRuntime;
using UnityEngine;

/**
 * @file    ChargeGaugeMgrクラス
 * @brief   チャージゲージの表示/非表示を切り替える
 */
public class ChargeGaugeMgr : MonoBehaviour
{
	//! オンオフを切り替えるオブジェクト
	[SerializeField, Tooltip("子要素のオブジェクトが入ります(表示/非表示を切り替える対象)")]
	private ChargeGaugeProc m_Processor;

	//! インプットハンドラー
	private InputHandler m_input;

    private InputEvent m_InputEvent;

    private bool IsRegister { get; set; }


    public void Awake()
    {
        m_InputEvent = new InputEvent(this);
		m_input = FindObjectOfType<InputHandler>();

        IsRegister = false;

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
	 * @brief   入力イベントを登録
	 */
	public void RegisterInputEvent()
	{
        if (IsRegister)
            return;

		if(m_input == null) m_input = FindObjectOfType<InputHandler>();
		m_input.RegisterInputEvent(m_InputEvent);
        IsRegister = true;

    }

	/**
	 * @brief   入力イベントを削除
	 */
	public void UnRegisterInputEvent()
    {
        if (!IsRegister)
            return;

        m_input.UnRegisterInputEvent(m_InputEvent);
        IsRegister = false;
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

            /**
		    * @brief	Idle状態の処理
		    */
            this.OnIdle += () =>
            {
                if (m_Handler.Power > 0)
                    m_gauge_mgr.ActivateGauge();
            };

            /**
		    * @brief	Run状態になった場合に１度処理
		    */
            this.TickStateRun += () =>
            {
                m_gauge_mgr.HydeGauge();
            };
		}
	}

}
