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
	private Text[] m_text_time = new Text[2];

	[SerializeField, Tooltip("クリア条件の表示用テキストオブジェクト")]
	private Text[] m_text_require = new Text[2];

	// 実績スター変更
	public void SetStar(bool[] _grade)
	{
		// 星の点灯
		for (int cnt = 0; cnt < Mathf.Min(3, _grade.Length); cnt++)
		{
			Color _c = m_stars[cnt].color;
			if (_grade[cnt]) _c.a = 1.0f;
			else _c.a = 0.0f;
			m_stars[cnt].color = _c;
		}
	}

	// クリアタイム変更
	public void SetTime(float _time)
	{
		m_text_time[0].text = Mathf.Min(999, Mathf.FloorToInt(_time)).ToString("D3");
		m_text_time[1].text = (Mathf.FloorToInt(_time * 10) % 10).ToString("D2");
	}

	// クリアタイム変更
	public void SetRequirement(int _req_count,int _req_time)
	{
		m_text_require[0].text = Mathf.Min(99, _req_count).ToString("D2");
		m_text_require[1].text = Mathf.Min(99, _req_time).ToString("D2");
	}
}
