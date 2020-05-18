using UnityEngine;

public class StageCreater : MonoBehaviour
{
	//! ステージのメタデータオブジェクト
	[SerializeField]
	private StageMetaParam m_stage_info;

	public void Awake()
	{
		//! 現在のメタデータを読み取ってステージのプレハブを生成
		GameObject _stage_obj = m_stage_info.StagePrefab;
		Instantiate(_stage_obj);
	}
}
