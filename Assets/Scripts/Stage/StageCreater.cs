using UnityEngine;

public class StageCreater : MonoBehaviour
{
	//! ステージのメタデータオブジェクト
	[SerializeField]
	private StageMetaParam m_stage_info;

	[SerializeField, NonEditableField]
	private GameObject[] m_level_obj;

	/**
	 * @brief	ステージの生成
	 */
	public void Awake()
	{
		//! 現在のメタデータを読み取ってステージのプレハブを生成
		GameObject _stage_obj = m_stage_info.LevelPrefab;


		Instantiate(_stage_obj);
	}

	/**
	 * @brief	ステージの破棄
	 */
	public void OnDestroy()
	{
	}

}
