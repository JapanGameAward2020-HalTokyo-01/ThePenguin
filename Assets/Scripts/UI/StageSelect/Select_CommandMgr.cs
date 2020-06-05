/**
 * @file    Select_CommandMgr.cs
 * @brief   ステージセレクトの選択肢を管理する
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class   Select_CommandMgrクラス
 * @brief   ステージセレクトの選択肢を管理する
 */
public class Select_CommandMgr : MonoBehaviour
{
	[SerializeField, Tooltip("エリア毎に区切られたコマンドの集合をリスト化する")]
	private GameObject[] m_area_list;
	[SerializeField, NonEditableField]
	private Select_ButtonUnit[][] m_level_list;

	public void Awake()
	{
		m_level_list = new Select_ButtonUnit[m_area_list.Length][];
		for(int cnt = 0; cnt < m_area_list.Length; cnt++)
		{
			m_level_list[cnt] = m_area_list[cnt].GetComponentsInChildren<Select_ButtonUnit>();
			Debug.Log(m_level_list[cnt].Length);
		}
	}

	//! 指定されたステージのボタンのRectTransformコンポーネントを取り出す
	public RectTransform GetButtonPos(int _area_index, int _level_index)
	{
		return m_level_list[_area_index][_level_index].GetComponent<RectTransform>();
	}
}
