using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Select_ButtonLineUp : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("ステージ一覧のメタデータ")]
	private StageMetaParam m_stage_list;

	[Tooltip("エリアインデックス")]
	public StageSelect_ImageList.AreaIndex m_area_index;

	[SerializeField, NonEditableField, Tooltip("ボタンリスト")]
	private List<Image> m_button_list;


	public void Awake()
	{
		// ボタンの作成とリスト登録

	}

}

