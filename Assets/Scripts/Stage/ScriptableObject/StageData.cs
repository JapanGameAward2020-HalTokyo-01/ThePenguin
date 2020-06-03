using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(menuName = "CreateData/Stage/StageData", fileName = "StageData")]
public class StageData : ScriptableObject
{
	[Header("Stage Object")]

	//! ステージのシーン
	[SerializeField]
	private SceneAsset m_stage_scene;
	public SceneAsset StageScene
	{
		get { return m_stage_scene; }
	}

	[Header("Stage Params")]

	//! トータルペンギン数
	public int m_total_penguin = 0;


	//! アンロック状態
	[SerializeField]
	private bool m_unlocked;
	public bool isUnlocked
	{
		get { return m_unlocked; }
	}

	//! 制限時間
	[SerializeField]
	private float m_time_limit;
	public float TimeLimit
	{
		get { return Mathf.Clamp(m_time_limit, 0.0f, 5940.999f); }
	}
	public int TimeLimitInt
	{
		get { return Mathf.Clamp((int)m_time_limit, 0, 5940); }
	}

	//! ステージ上総ペンギン数
	[SerializeField]
	private int m_max_penguin_num;
	public int MaxPenguinNum
	{
		get { return m_max_penguin_num; }
	}

	//! クリア条件ペンギン数
	[SerializeField]
	private int m_clear_border;
	public int ClearBorder
	{
		get { return Mathf.Max(1, m_clear_border); }
	}

	[Header("Dammy Progress")]

	//! 取得した実績数
	public bool[] m_grade = new bool[3];

	//! クリアタイム
	public float m_clear_time = 5940.0f;
	public float ClearTime
	{
		get { return Mathf.Clamp(m_clear_time, 0.0f, 5940.0f); }
	}

	//! クリア時最高ペンギン数
	public int m_rescued_num;
	public int RescuedNum
	{
		get { return Mathf.Min(m_max_penguin_num, m_rescued_num); }
	}

}
