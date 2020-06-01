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
[RequireComponent(typeof(PenguinManager))]
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
	public int RescueTask { get => (int)m_rescue_task; }
	public int DeadLine { get => (int)m_deadline; }

	[Header("Valuation Basis")]
	[SerializeField, Tooltip("評価[Good]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_good_threshold = 10;
	[SerializeField, Tooltip("評価[Max]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_max_threshold = 10;
	[SerializeField, Tooltip("評価[Danger]の条件閾値ペンギン数"), Range(1, 256)]
	private uint m_danger_threshold = 10;

	public int GoodBorder { get => (int)m_good_threshold; }
	public int MaxBorder { get => (int)m_max_threshold; }
	public int DangerBorder { get => (int)m_danger_threshold; }

	[Header("Temporary Status")]
	[SerializeField, NonEditableField, Tooltip("クリアフラグ")]
	private bool m_clear_flag = false;
	[SerializeField, NonEditableField, Tooltip("GameOverフラグ")]
	private bool m_failuer_flag = false;

	public bool IsClear { get => m_clear_flag; }
	public bool IsFailuer { get => m_failuer_flag; }

	/**
	 * @brief	初期化(PenguinManagerの初期化を待つ)
	 *			パラメータの大小関係がおかしい場合ここで修正する
	 */
	public void Start()
	{
		StartCoroutine(DelayStart());
	}
	IEnumerator DelayStart()
	{
		yield return new WaitForEndOfFrame();

		PenguinManager m_pen_mgr = GetComponent<PenguinManager>();
		m_rescue_task = (uint)Mathf.Min(RescueTask, m_pen_mgr.m_TotalCount);
		m_deadline = (uint)Mathf.Min(DeadLine, m_pen_mgr.m_TotalCount);

		m_max_threshold = (uint)Mathf.Min(MaxBorder, m_pen_mgr.m_TotalCount);
		m_good_threshold = (uint)Mathf.Min(GoodBorder, MaxBorder - 1);
		m_danger_threshold = (uint)Mathf.Min(DangerBorder, m_pen_mgr.m_TotalCount);

		yield break;
	}

	/**
	 * @brief	呼ばれた段階での死亡数によるゲームオーバー判定
	 * @param	(_dead_count) その時点での死亡ペンギン数
	 * @return	(bool)	判定結果
	 */
	public bool CheckGameOver(int _dead_count)
	{
		m_failuer_flag = (DeadLine <= _dead_count);
		return m_failuer_flag;
	}

	/**
	 * @brief	ゲームオーバー判定(形だけ)
	 * @return	(bool)	判定結果
	 */
	public bool CheckGameOver()
	{
		m_failuer_flag = true;
		return m_failuer_flag;
	}

	/**
	 * @brief	呼ばれた段階での子ペンギンの数によるクリア判定
	 * @param	(_pack_count) その時点での群れペンギン数
	 * @return	(bool)	判定結果
	 */
	public bool CheckClear(int _pack_count)
	{
		m_clear_flag = (RescueTask <= _pack_count);
		return m_clear_flag;
	}
}
