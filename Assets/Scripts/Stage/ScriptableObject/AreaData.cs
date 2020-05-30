using System;
using UnityEngine;

[CreateAssetMenu(menuName = "CreateData/Stage/AreaData", fileName = "AreaData")]
public class AreaData : ScriptableObject
{
	[Header("Stage List")]

	//! ステージのパラメータオブジェクト
	[SerializeField]
	private StageData[] m_stage_list = new StageData[4];

	public int LevelCount
	{
		get { return m_stage_list.Length; }
	}

	public StageData GetListItem(int _index)
	{
		return m_stage_list[Mathf.Clamp(_index, 0, m_stage_list.Length - 1)];
	}

}
