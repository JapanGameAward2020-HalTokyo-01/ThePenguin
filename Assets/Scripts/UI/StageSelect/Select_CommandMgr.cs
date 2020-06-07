/**
 * @file    Select_CommandMgr.cs
 * @brief   ステージセレクトの選択肢を管理する
 * @author  谷沢 瑞己
 */
using System.Collections;
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
		// ボタンリストの作成と各ボタンに対するエリア番号、レベル番号の登録
		m_level_list = new Select_ButtonUnit[m_area_list.Length][];
		for (int cnt = 0; cnt < m_area_list.Length; cnt++)
		{
			m_level_list[cnt] = m_area_list[cnt].GetComponentsInChildren<Select_ButtonUnit>();
			for (int _level = 0; _level < m_level_list[cnt].Length; _level++)
			{
				m_level_list[cnt][_level].SelectingArea = cnt;
				m_level_list[cnt][_level].SelectingLevel = _level;
			}
		}
	}

	public void Start()
	{
		// UI形成待ち処理(表示内容の切り替え)
		StartCoroutine(DelayStart());
	}

	IEnumerator DelayStart()
	{
		yield return new WaitForEndOfFrame();

		SaveSystem _save = FindObjectOfType<SaveSystem>();
		int _save_index = 0;

		for (int cnt = 0; cnt < m_area_list.Length; cnt++)
		{

			for (int _level = 0; _level < m_level_list[cnt].Length; _level++)
			{
				// セーブデータ読込
				if (_save != null)
				{
					m_level_list[cnt][_level].SetUnlockState(_save.Stages1[_save_index].m_Unlocked);
					m_level_list[cnt][_level].SetStar(new bool[] { _save.Stages1[_save_index].m_Star1, _save.Stages1[_save_index].m_Star2, _save.Stages1[_save_index].m_Star3 });
				}
				// セーブデータ参照先のインデックスを進める
				_save_index++;
			}
		}
		yield return null;
	}

	//! 指定されたステージのボタンのRectTransformコンポーネントを取り出す
	public RectTransform GetButtonPos(int _area_index, int _level_index)
	{
		return m_level_list[_area_index][_level_index].GetComponent<RectTransform>();
	}
}
