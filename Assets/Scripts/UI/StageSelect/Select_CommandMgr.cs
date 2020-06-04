/**
 * @file    Select_CommandMgr.cs
 * @brief   ステージセレクトの選択肢を管理する
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.SceneManagement;

/**
 * @class   Select_CommandMgrクラス
 * @brief   ステージセレクトの選択肢を管理する
 */
public class Select_CommandMgr : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("ScriptableObjectのStageMetaParamを与える\nステージデータの把握")]
	private StageMetaParam m_stage_list = null;

	[SerializeField, Tooltip("エリア毎に区切られたコマンドの集合をリスト化する")]
	private Select_ButtonLineUp[] _area_list = new Select_ButtonLineUp[4];

	//! 指定されたステージのボタンのRectTransformコンポーネントを取り出す
	public RectTransform GetButtonPos(int _area_index, int _level_index)
	{
		GameObject _obj = _area_list[_area_index].GetButtonObj(_level_index);
		return _obj.GetComponent<RectTransform>();
	}
	//! 指定されたステージのボタンのゲームオブジェクトそのものを取り出す
	public GameObject GetButtonObject(int _area_index, int _level_index)
	{
		return _area_list[_area_index].GetButtonObj(_level_index);
	}

}
