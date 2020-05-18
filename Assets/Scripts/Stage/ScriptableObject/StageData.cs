using UnityEngine;

[CreateAssetMenu(menuName = "CreateData/Stage/StageData", fileName = "StageData")]
public class StageData : ScriptableObject
{
	[Header("Stage Object")]

	//! ステージのPrefab
	[SerializeField]
	private GameObject m_stage_prefab;
	public GameObject StagePrefab
	{
		get { return m_stage_prefab; }
	}


	[Header("Stage Parameter")]

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

}
