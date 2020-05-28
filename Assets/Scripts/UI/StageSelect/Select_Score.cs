using UnityEngine;
using UnityEngine.UI;

public class Select_Score : MonoBehaviour
{
	//! セレクト画面画像リスト
	[SerializeField, NonEditableField, Tooltip("セレクト画面画像リスト")]
	private StageSelect_ImageList m_image_list;

	//! ステージパラメータ
	[SerializeField, NonEditableField, Tooltip("ステージのパラメータオブジェクト")]
	private StageMetaParam m_stage_param;

	//! 実績星の画像用
	[SerializeField, Tooltip("実績の星の画像オブジェクト")]
	private Image[] m_stars = new Image[3];

	//! タイムテキストのオブジェクト
	[SerializeField, Tooltip("クリアタイムの表示用テキストオブジェクト")]
	private Text m_text;
	private readonly string m_format = "{0}'{1}\"{2}";

	// 実績スター変更
	public void LoadStar(int _area, int _level)
	{
		bool[] _grade = m_stage_param.GetAreaList(_area).GetListItem(_level).m_grade;
		// 星の点灯
		for (int cnt = 0; cnt < _grade.Length; cnt++)
		{
			if (_grade[cnt]) m_stars[cnt].sprite = m_image_list.ImageLightStar;
			else m_stars[cnt].sprite = m_image_list.ImageDarkStar;
		}
	}

	// クリアタイム変更
	public void LoadTime(int _area, int _level)
	{
		float _time = m_stage_param.GetAreaList(_area).GetListItem(_level).ClearTime;
		m_text.text = string.Format(m_format, (Mathf.FloorToInt(_time) / 60).ToString("D2"), (Mathf.FloorToInt(_time) % 60).ToString("D2"), (Mathf.FloorToInt(_time * 100) % 100).ToString("D2"));
	}
}
