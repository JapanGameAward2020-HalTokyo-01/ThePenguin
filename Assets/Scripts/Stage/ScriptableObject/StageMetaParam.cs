using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(menuName = "CreateData/Stage/StageMetaParam", fileName = "StageMetaParam")]
public class StageMetaParam : ScriptableObject
{
	//! 現在のエリア番号
	public int m_current_area_index;

	//! 現在のステージ番号
	public int m_current_stage_index;

	[Header("List")]

	//! エリアリスト
	[SerializeField]
	private AreaData[] m_area_list = new AreaData[4];

	//! 現在指定されているエリアのリストを呼び出す
	public AreaData CurrentAreaList
	{
		get{ return m_area_list[m_current_area_index % m_area_list.Length]; }
	}

	//! 現在指定されているステージのデータを呼び出す
	public StageData CurrentLevelData
	{
		get{ return m_area_list[m_current_area_index % m_area_list.Length].GetListItem(m_current_stage_index); }
	}

	// 任意のエリアを取り出す
	public AreaData GetAreaList(int _area_index)
	{
		return m_area_list[_area_index % m_area_list.Length];
	}
}
