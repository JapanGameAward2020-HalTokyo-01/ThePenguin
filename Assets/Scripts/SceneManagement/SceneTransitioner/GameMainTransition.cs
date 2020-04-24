﻿/**
 * @file    GameMainTransition.cs
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using System.Collections.Generic;
using Unity.Collections;

/**
 * @class   GameMainTransitionクラス
 * @brief   ゲームメインシーンのシーン遷移周りの処理を担当するクラス
 */
public class GameMainTransition : MonoBehaviour
{
	//! 状態オブジェクトリスト
	[SerializeField]
	private List<StateBase_GameMain> m_state_list;

	//! 前の状態インデックス
	[SerializeField]
	private int m_prev_state = 0;
	public int PrevState
	{
		get { return m_prev_state; }
	}

	//! 現在の状態インデックス
	[SerializeField]
	private int m_current_state = 0;

	//! 状態遷移先インデックス
	[SerializeField]
	private int m_next_state = 0;

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
	}

	/**
	 * @brief	状態初期化
	 */
	public void Start()
	{
		m_state_list[m_current_state].OnStart();
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
			m_state_list[m_prev_state].OnEndState();

			// 遷移後の状態を初期化(必要ならば)
			m_current_state = m_next_state;
			m_state_list[m_current_state].OnStart();
		}

		m_state_list[m_current_state].OnUpdate(this);
	}

	/**
	 * @brief	状態遷移
	 */
	 public void ChangeState(int StateIndex)
	{
		m_next_state = StateIndex;
	}

}
