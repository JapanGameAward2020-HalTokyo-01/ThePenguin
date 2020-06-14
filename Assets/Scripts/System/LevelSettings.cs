/**
 * @file	LevelSettings.cs
 * @brief	レベルの設定値等をまとめたもの
 * @auther	谷沢　瑞己
 */

using System.Collections;
using UnityEngine;

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
	[SerializeField, Tooltip("ゲームオーバーになる死亡ペンギン数")]
	private uint m_deadline = 10;
	[SerializeField, NonEditableField, Tooltip("クリアに必要なペンギン数")]
	private uint m_rescue_task = 10;

	public float TimeLimit { get => m_time_limit; }
	public int RescueTask { get => (int)m_rescue_task; }
	public int DeadLine { get => (int)m_deadline; }

	public void SetRescueTask(int _total_num)
	{
		m_rescue_task = (uint)Mathf.Max(1, _total_num - m_deadline);
	}

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
	public bool m_clear_flag = false;
	[SerializeField, NonEditableField, Tooltip("GameOverフラグ")]
	public bool m_failure_flag = false;

	[SerializeField, Tooltip("☆の評価項目：時間"), Space(10.0f)]
	private float m_time_star_threshold;
	public float TimeStarThreshold { get => m_time_star_threshold; }

	[SerializeField, Tooltip("☆の評価項目：ペンギン数")]
	private int m_star_Quest_of_Penguin;
	public int CountStarThreshold { get => m_star_Quest_of_Penguin; }

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
		m_deadline = (uint)Mathf.Min(DeadLine, m_pen_mgr.m_TotalCount);

		//m_max_threshold = (uint)Mathf.Min(MaxBorder, m_pen_mgr.m_TotalCount);
		//m_good_threshold = (uint)Mathf.Min(GoodBorder, MaxBorder - 1);
		//m_danger_threshold = (uint)Mathf.Min(DangerBorder, m_pen_mgr.m_TotalCount);

        m_max_threshold = (uint)m_pen_mgr.m_TotalCount;
        m_good_threshold = m_rescue_task;
        m_danger_threshold = m_deadline;

        yield break;
	}

	/**
	 * @brief	呼ばれた段階での死亡数によるゲームオーバー判定
	 * @param	(_dead_count) その時点での死亡ペンギン数
	 * @return	(bool)	判定結果
	 */
	public bool CheckGameOver(int _dead_count)
	{
		m_failure_flag = (DeadLine <= _dead_count);
		return m_failure_flag;
	}
}
