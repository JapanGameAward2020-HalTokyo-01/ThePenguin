/**
 * @file	LevelSettings.cs
 * @brief	レベルの設定値等をまとめたもの
 * @auther	谷沢　瑞己
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

/**
 * @class	LevelSettingsクラス
 * @brief	レベルの設定値等をまとめたもの
 */
public class LevelSettings : MonoBehaviour
{
	[Header("Level Information")]
	[SerializeField, Tooltip("制限時間(sec)")]
	private float m_time_limit = 10;
	[SerializeField, Tooltip("救出するノルマペンギン数")]
	private uint m_rescue_task = 10;
	[SerializeField, Tooltip("ゲームオーバーになる死亡ペンギン数")]
	private uint m_deadline = 10;

	public float TimeLimit { get => m_time_limit; }
	public uint RescueTask { get => m_rescue_task; }
	public uint DeadLine { get => m_deadline; }


	[Header("Valuation Basis")]
	[SerializeField, Tooltip("評価[Good]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_good_threshold = 10;
	[SerializeField, Tooltip("評価[Max]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_max_threshold = 10;
	[SerializeField, Tooltip("評価[Danger]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_danger_threshold = 10;

	public uint GoodBorder { get => m_good_threshold; }
	public uint MaxBorder { get => m_max_threshold; }
	public uint DangerBorder { get => m_danger_threshold; }

	[Header("Temporary Status")]
	[SerializeField, NonEditableField, Tooltip("クリアフラグ")]
	private bool m_clear_flag = false;
	[SerializeField, NonEditableField, Tooltip("GameOverフラグ")]
	private bool m_failuer_flag = false;

	public bool IsClear { get => m_clear_flag; }
	public bool IsFailuer { get => m_failuer_flag; }

	/**
	 * @brief	死亡数によるゲームオーバー判定
	 */
	public bool CheckGameOver(int _dead_count)
	{
		m_failuer_flag = (DeadLine <= _dead_count);
		return m_failuer_flag;
	}



}
