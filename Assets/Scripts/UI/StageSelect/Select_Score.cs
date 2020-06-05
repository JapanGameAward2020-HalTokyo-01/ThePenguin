/**
 * @file    Select_Score.cs
 * @brief   ステージセレクトで選択中のステージの実績、クリアタイムを表現する
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;

/**
 * @file    Select_Scoreクラス
 * @brief   ステージセレクトで選択中のステージの実績、クリアタイムを表現する
 */
public class Select_Score : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("セレクト画面画像リスト")]
	private StageSelect_ImageList m_image_list;

	[SerializeField, NonEditableField, Tooltip("ステージのパラメータオブジェクト")]
	private StageMetaParam m_stage_param;

	[SerializeField, Tooltip("実績の星の画像オブジェクト")]
	private Image[] m_stars = new Image[3];

	[SerializeField, Tooltip("クリアタイムの表示用テキストオブジェクト")]
	private Text[] m_text = new Text[3];

	// 実績スター変更
	public void LoadStar(SaveSystem _save, int _level)
	{
		_save = FindObjectOfType<SaveSystem>();
		bool[] _grade_star = new bool[3]
		{
				_save.Stages1[_level].m_Star1,
				_save.Stages1[_level].m_Star2,
				_save.Stages1[_level].m_Star3,
		};
		// 星の点灯
		for (int cnt = 0; cnt < _grade_star.Length; cnt++)
		{
			if (_grade_star[cnt]) m_stars[cnt].sprite = m_image_list.ImageLightStar;
			else m_stars[cnt].sprite = m_image_list.ImageDarkStar;
		}
	}

	// クリアタイム変更
	public void LoadTime(SaveSystem _save, int _level)
	{
		float _time = _save.Stages1[_level].m_Time;
		m_text[0].text = Mathf.Min(999, Mathf.FloorToInt(_time) % 60).ToString("D3");
		m_text[1].text = (Mathf.FloorToInt(_time * 100) % 100).ToString("D3");
	}
}
