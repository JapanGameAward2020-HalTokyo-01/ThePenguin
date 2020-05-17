using UnityEngine;
using UnityEngine.UI;

public class ChargeGaugeProc : MonoBehaviour
{
	//! 追従ターゲット
	[SerializeField]
	private ParentPenguin m_target_obj;
	private InputHandler m_input;

	//! キャンバスのRectTransform
	[SerializeField]
	private RectTransform m_camvas_rect;

	//! 自分のRectTransform
	private RectTransform m_self_rect;

	//! ゲージオブジェクト
	[SerializeField]
	private GameObject m_gauge_obj;
	private RectTransform m_gauge_rect;
	private Material m_gauge_mat;

	//! ゲージ部分の座標と大きさ
	[SerializeField]
	private Vector2 m_gauge_left;
	[SerializeField]
	private Vector2 m_gauge_size;

	//! ターゲットのスクリーン座標からのオフセット
	[SerializeField]
	private Vector2 m_offset;


	public void Awake()
	{
		m_self_rect = gameObject.GetComponent<RectTransform>();
		m_gauge_rect = m_gauge_obj.GetComponent<RectTransform>();
		Image _image = m_gauge_obj.GetComponent<Image>();
		m_gauge_mat = _image.material;

		m_input = m_target_obj.GetInputHandler();
	}

	public void Update()
	{
		//! ターゲットのスクリーン座標取得
		Vector2 _screen_pos = RectTransformUtility.WorldToScreenPoint(Camera.main, m_target_obj.transform.position);

		// ターゲット追従座標更新
		Vector2 output;
		RectTransformUtility.ScreenPointToLocalPointInRectangle(m_camvas_rect, _screen_pos, Camera.main, out output);
		m_self_rect.localPosition = output + m_offset;

		// ゲージの長さ、テクスチャuv再計算
		Vector4 _tiling = new Vector4();
		_tiling.x = Mathf.Clamp(m_input.Power / m_input.PowerMax, 0.0f, 1.0f);
		_tiling.y = 1.0f;

		// テクスチャのuv値更新(テクスチャが引き延ばされないように)
		m_gauge_mat.SetVector("_Tiling", _tiling);

		// 群れゲージ画像自体の長さ変更
		m_gauge_rect.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gauge_size;

		// 群れゲージの座標変更
		Vector2 _pos = m_gauge_left;
		_pos.x += m_gauge_rect.sizeDelta.x * 0.5f;
		m_gauge_rect.anchoredPosition = _pos;

	}
}
