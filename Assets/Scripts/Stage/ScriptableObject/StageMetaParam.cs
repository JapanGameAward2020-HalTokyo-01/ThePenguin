﻿using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(menuName = "CreateData/Stage/StageMetaParam", fileName = "StageMetaParam")]
public class StageMetaParam : ScriptableObject
{
	//! 現在のエリア番号
	public byte m_area_index;

	//! 現在のステージ番号
	public byte m_stage_index;


	[Header("List")]

	//! エリアリスト
	[SerializeField]
	private AreaData[] m_area_list = new AreaData[4];

	//! 現在指定されているエリアのリストを呼び出す
	public AreaData LevelList
	{
		get
		{
			return m_area_list[m_area_index];
		}
	}

	//! ステージのSceneを呼び出す
	public SceneAsset LevelScene
	{
		get
		{
			StageData _data = m_area_list[m_area_index].GetListItem(m_stage_index);
			return _data.StageScene;
		}
	}
}
