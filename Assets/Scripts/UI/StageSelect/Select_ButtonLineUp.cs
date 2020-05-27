using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Select_ButtonLineUp : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("ステージ一覧のメタデータ")]
	private StageMetaParam m_stage_list;

	[SerializeField, NonEditableField, Tooltip("ボタン単体プレハブ")]
	private GameObject m_button_unit;

	[Tooltip("エリアインデックス")]
	public StageSelect_ImageList.AreaIndex m_area_index;

	[SerializeField, NonEditableField, Tooltip("このエリアが持つボタンリスト")]
	private List<Select_ButtonUnit> m_button_list;

	[SerializeField, Tooltip("ボタンの表示領域サイズ")]
	private Rect m_button_rect;


	public void Awake()
	{
		//! エリアのレベル数
		AreaData _area_data = m_stage_list.GetAreaList((int)m_area_index);
		int _level_count = _area_data.LevelCount;

		// ボタン表示領域に対するボタン配置間隔
		Vector2 _dist = Vector2.zero;
		_dist.x = m_button_rect.width / _level_count;
		_dist.y = m_button_rect.height * 0.5f;

		for (int level = 0; level < _level_count; level++)
		{
			// ボタン生成
			GameObject _obj = Instantiate(m_button_unit, Vector3.zero, Quaternion.identity, transform);
			Select_ButtonUnit _unit = _obj.GetComponent<Select_ButtonUnit>();
			m_button_list.Add(_unit);

			// パラメータ設定
			_unit.SetButtonImage(m_area_index, false);
			_unit.SetStageNumber(m_area_index, level);

			// ダミーデータ
			StageData _stage_data = _area_data.GetListItem(level);
			_unit.SetStar(_stage_data.m_grade);

			// 座標変更
			RectTransform _trans = _unit.gameObject.GetComponent<RectTransform>();
			Vector2 _pos = m_button_rect.position;
			_pos.x += _dist.x * level;
			_pos.y = _dist.y * -1.0f * (level % 2);
			_trans.anchoredPosition = _pos;
		}
	}

	// 指定されたボタンの座標を取得
	public RectTransform GetButtonRect(int _index)
	{
		return m_button_list[_index % m_button_list.Count].GetComponent<RectTransform>();
	}

}

