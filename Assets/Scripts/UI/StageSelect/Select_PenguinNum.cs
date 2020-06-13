/**
 * @file    Select_PenguinNum.cs
 * @brief   ステージセレクトで選択中のステージの救出ペンギン数を表現する
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;

/**
 * @file    Select_PenguinNumクラス
 * @brief   ステージセレクトで選択中のステージの救出ペンギン数を表現する
 */
public class Select_PenguinNum : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("セレクト画面画像リスト")]
	private StageSelect_ImageList m_image_list;
	[SerializeField, NonEditableField, Tooltip("ステージのパラメータオブジェクト")]
	private StageMetaParam m_stage_param;

	[SerializeField, Tooltip("顔部分のImageコンポーネント")]
	private FaceIcon m_face;

	[SerializeField, Tooltip("ゲージ部分の変形コンポーネント")]
	private RectTransform m_gauge_rect;
	[SerializeField, NonEditableField, Tooltip("ゲージ部分のマテリアル")]
	private Material m_gauge_mat;

	[SerializeField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の左端座標")]
	private Vector2 m_left_pos;
	//! ゲージ部分の大きさ
	private Vector2 m_gauge_max_size;

	[SerializeField, Tooltip("ペンギン数の表示用テキストオブジェクト")]
	private Text[] m_text = new Text[2];

	/**
	 * @brief	初期化
	 */
	public void Awake()
	{
		// ゲージからマテリアルの取得
		Image _image = m_gauge_rect.gameObject.GetComponent<Image>();
		m_gauge_mat = _image.material;
		m_gauge_max_size = m_gauge_rect.sizeDelta;
        m_gauge_max_size.y = 67.0f;

    }

	/**
	 * @brief	ゲージのパラメータや見た目変更
	 */
	public void SetGauge(SaveSystem _save, int _level)
	{
		Vector4 _tiling = new Vector4();
		//StageData _data = m_stage_param.GetAreaList(_area).GetListItem(_level);

		var _data = _save.Stages1[_level];

		// 群れに加わったペンギンゲージ
		{
			// 救出率 = 救出ペン数 / 全ペン数 (0.0 ~ 1.0)
			float m_ratio = (float)_data.m_SavedPenguins / (float)_data.m_TotalPenguins;
			_tiling.x = Mathf.Clamp(m_ratio, 0.0f, 1.0f);
			_tiling.y = 1.0f;

			// テクスチャのuv値更新(テクスチャが引き延ばされないように)
			m_gauge_mat.SetVector("_Tiling", _tiling);

			// 群れゲージ画像自体の長さ変更
			m_gauge_rect.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gauge_max_size;

			// 群れゲージの座標変更
			Vector2 _pos = m_left_pos;
			_pos.x += m_gauge_rect.sizeDelta.x * 0.5f;
			m_gauge_rect.anchoredPosition = _pos;
		}

		// テキスト部分
		{
			m_text[0].text = _data.m_SavedPenguins.ToString("D2");
			m_text[1].text = _data.m_TotalPenguins.ToString("D2");
		}

		// 顔グラ
		{
			m_face.ChangeState(_data.m_FaceIcon);
		}
	}
}
