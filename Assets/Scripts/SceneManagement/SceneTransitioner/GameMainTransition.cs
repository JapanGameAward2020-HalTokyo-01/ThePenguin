/**
 * @file    GameMainTransition.cs
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using System.Collections.Generic;

/**
 * @class   GameMainTransitionクラス
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 */
public class GameMainTransition : SceneTransitionBase
{
	//! 状態オブジェクトリスト
	private List<StateBase_GameMain> m_state_list;

	//! 前の状態インデックス
	private KGameMainStateIndex m_prev_state = 0;
	public KGameMainStateIndex PrevState
	{
		get { return m_prev_state; }
	}

	//! 現在の状態インデックス
	[SerializeField, Tooltip("初期状態")]
	private KGameMainStateIndex m_current_state = KGameMainStateIndex.None;

	//! 状態遷移先インデックス
	private KGameMainStateIndex m_next_state = KGameMainStateIndex.None;

	/**
	 * @brief	初期化
	 */
	public void Awake()
	{
		// 状態リストの作成
		m_state_list = new List<StateBase_GameMain>();
		for (int cnt = 0; cnt < gameObject.transform.childCount; cnt++)
		{
			//! 子要素に持ってるオブジェクト
			Transform obj = gameObject.transform.GetChild(cnt);

			//! 子オブジェクトが状態オブジェクトを持つか調べる
			StateBase_GameMain _state = obj.GetComponent<StateBase_GameMain>();
			if (_state != null) m_state_list.Add(_state);
		}

		// 状態インデックスの初期化
		m_next_state = m_prev_state = m_current_state;

	}

	/**
	 * @brief	状態初期化
	 */
	public void Start()
	{
		m_state_list[(int)m_current_state].OnStart();
	}

	/**
	 * @brief	フレーム更新処理
	 */
	public void Update()
	{
		// 状態遷移チェック
		if(m_next_state != m_current_state)
		{
			// 遷移前の状態を終了
			m_prev_state = m_current_state;
			m_state_list[(int)m_prev_state].OnEndState();

			// 遷移後の状態を初期化(必要ならば)
			m_current_state = m_next_state;
			m_state_list[(int)m_current_state].OnStart();
		}

		m_state_list[(int)m_current_state].OnUpdate(this);
	}

	/**
	 * @brief	状態遷移
	 */
	 public void ChangeState(KGameMainStateIndex StateIndex)
	{
		if (StateIndex == KGameMainStateIndex.None) return;

		m_next_state = StateIndex;

	}

}
