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
		get { return Mathf.Clamp(m_time_limit, 0.0f, 5940.0f); }
	}

	//! クリア条件ペンギン数
	[SerializeField]
	private int m_clear_border;
	public int ClearBorder
	{
		get { return Mathf.Max(1, m_clear_border); }
	}

	//! 取得した実績数
	public bool[] m_grade = new bool[3];

	//! クリアタイム
	public float m_clear_time = 5940.0f;
	public float ClearTime
	{
		get { return Mathf.Clamp(m_clear_time, 0.0f, 5940.0f); }
	}
}
