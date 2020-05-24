using EffekseerTool.Data.Value;
using System;
using System.Globalization;
using System.Runtime.InteropServices;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class Select_ButtonUnit : MonoBehaviour
{
	[Header("Necessary Outer Data")]

	[SerializeField, Tooltip("エリアインデックス")]
	private StageSelect_ImageList.AreaIndex m_area_index;

	[SerializeField, Tooltip("ステージ番号")]
	private int m_stage_index;

	[Tooltip("ステージのアンロック状態")]
	public bool m_unlocked = false;

	[Tooltip("取得できたグレードリスト")]
	public bool[] m_Grade = new bool[3];

	[Header("Resource and Components")]

	[SerializeField, NonEditableField, Tooltip("画像リスト")]
	private StageSelect_ImageList m_image_list;

	[SerializeField, Tooltip("星の画像オブジェクト")]
	private Image[] m_score_image = new Image[3];

	[SerializeField, Tooltip("ステージ番号の表示オブジェクト")]
	private Text m_num_text;
	private readonly string m_format = "{0}-{1}";


	public void Awake()
	{
		// 背景画像
		Image _background = GetComponent<Image>();
		_background.sprite = m_image_list.GetImage_ButtonBase(m_area_index);

		// ロックされていれば暗くなる
		if(!m_unlocked) _background.color = UnityEngine.Color.gray;

		// 星の点灯
		for (int cnt = 0; cnt < m_Grade.Length; cnt++)
		{
			if (m_Grade[cnt]) m_score_image[cnt].sprite = m_image_list.ImageLightStar;
			else m_score_image[cnt].sprite = m_image_list.ImageDarkStar;
		}

		// エリア-レベル表記の変更
		m_num_text.text = string.Format(m_format, (int)m_area_index + 1, m_stage_index);

	}

}
