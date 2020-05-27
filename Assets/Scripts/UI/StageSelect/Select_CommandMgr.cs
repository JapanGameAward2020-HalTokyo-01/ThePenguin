using System;
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
}
