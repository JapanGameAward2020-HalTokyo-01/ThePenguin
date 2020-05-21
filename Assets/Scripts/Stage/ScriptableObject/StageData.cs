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
