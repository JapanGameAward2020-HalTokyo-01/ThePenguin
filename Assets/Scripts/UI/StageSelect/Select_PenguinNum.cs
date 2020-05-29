using UnityEngine;
using UnityEngine.UI;

public class Select_PenguinNum : MonoBehaviour
{
	//! セレクト画面画像リスト
	[SerializeField, NonEditableField, Tooltip("セレクト画面画像リスト")]
	private StageSelect_ImageList m_image_list;

	//! ステージパラメータ
	[SerializeField, NonEditableField, Tooltip("ステージのパラメータオブジェクト")]
	private StageMetaParam m_stage_param;

	//! ペンギンの顔部分
	[SerializeField, Tooltip("顔部分のImageコンポーネント")]
	private FaceIcon m_face;

	//! ゲージ部分の変形、マテリアルコンポーネント
	[SerializeField, Tooltip("ゲージ部分の変形コンポーネント")]
	private RectTransform m_gauge_rect;
	[SerializeField, NonEditableField, Tooltip("ゲージ部分のマテリアル")]
	private Material m_gauge_mat;

	//! ゲージ部分座標(左端)
	[SerializeField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の左端座標")]
	private Vector2 m_left_pos;
	//! ゲージ部分の大きさ
	private Vector2 m_gauge_max_size;

	//! ペンギン数テキストのオブジェクト
	[SerializeField, Tooltip("ペンギン数の表示用テキストオブジェクト")]
	private Text[] m_text = new Text[2];
	private readonly string m_format = "{0}/{1}";

	public void Awake()
	{
		// ゲージからマテリアルの取得
		Image _image = m_gauge_rect.gameObject.GetComponent<Image>();
		m_gauge_mat = _image.material;
		m_gauge_max_size = m_gauge_rect.sizeDelta;
	}

	public void SetGauge(int _area, int _level)
	{
		Vector4 _tiling = new Vector4();
		StageData _data = m_stage_param.GetAreaList(_area).GetListItem(_level);

		// 群れに加わったペンギンゲージ
		{
			// 救出率 = 救出ペン数 / 全ペン数 (0.0 ~ 1.0)
			float m_ratio = (float)_data.RescuedNum / (float)_data.MaxPenguinNum;
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
			m_text[0].text = _data.RescuedNum.ToString("D3");
			m_text[1].text = _data.MaxPenguinNum.ToString("D3");
		}

		// 顔グラ
		{
			// 救出数が ボーダー未満
			if (_data.RescuedNum < _data.ClearBorder) m_face.ChangeState(FaceIcon.kState.Normal);
			// 救出数が ボーダー以上 Max 未満
			else if (_data.RescuedNum < _data.MaxPenguinNum) m_face.ChangeState(FaceIcon.kState.Good);
			// 群れ数が Max以上
			else m_face.ChangeState(FaceIcon.kState.Max);
		}
	}
}
