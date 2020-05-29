using System;
using System.Runtime.Remoting.Messaging;
using UnityEngine;
using UnityEngine.UIElements;

public class Select_CommandMgr : MonoBehaviour
{
	//! ステージデータの把握の為のリスト
	[SerializeField, NonEditableField, Tooltip("ScriptableObjectのStageMetaParamを与える\nステージデータの把握")]
	private StageMetaParam m_stage_list = null;

	//! エリア毎のリスト
	[SerializeField, Tooltip("エリア毎に区切られたコマンドの集合をリスト化する")]
	private Select_ButtonLineUp[] _area_list = new Select_ButtonLineUp[4];
	public RectTransform GetButtonPos(int _area_index, int _level_index)
	{
		GameObject _obj = _area_list[_area_index].GetButtonObj(_level_index);
		return _obj.GetComponent<RectTransform>();
	}
	public GameObject GetButtonObject(int _area_index, int _level_index)
	{
		return _area_list[_area_index].GetButtonObj(_level_index);
	}

}
