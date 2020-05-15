/**
 * @file    PenguinGageMgr.cs
 * @brief   ペンギンの数に関する状況を示すゲージUIの操作クラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;

/**
 * @class   PenguinGageMgrクラス
 * @brief   ペンギンの数に関する状況を示すゲージUIの操作クラス
 */
public class PenguinGageMgr : MonoBehaviour
{
	//! 左上端の座標
	[SerializeField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の左端座標")]
	private Vector2 m_left_pos;
	//! 最大の大きさ
	[SerializeField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の大きさ")]
	private Vector2 m_gage_max_size;

	//! UIオブジェクト
	[SerializeField, Tooltip("群れペンギンゲージ画像のオブジェクト")]
	private GameObject m_living_gage;
	[SerializeField, Tooltip("死んだペンギンゲージ画像のオブジェクト")]
	private GameObject m_death_gage;
	[SerializeField, Tooltip("クリア目標ライン画像のオブジェクト")]
	private GameObject m_deadline;
	[SerializeField, Tooltip("ステージ内のペンギン数を表示するテキストオブジェクト")]
	private Text m_total_text;

	//! 座標情報 
	private RectTransform m_living_pos;
	private RectTransform m_death_pos;
	private RectTransform m_deadline_pos;

	//! マテリアル
	private Material m_living_mat;
	private Material m_death_mat;

	//! ペンギンの数を管理しているもの
	[SerializeField]
	private PenguinManager m_penguin_mgr;

	//! それぞれの状態のペンギン数
	private float m_living_ratio = 0.0f;
	private float m_death_ratio = 0.0f;

	//! クリアのボーダーラインペンギン数
	[SerializeField, NonEditableField, Tooltip("クリアに必要な群れペンギンの数\nステージ情報から設定するので、今後表示しない予定")]
	private int m_clear_num;

	/**
	 * @brief	初期化
	 */
	public void Start()
	{
		m_living_pos = m_living_gage.GetComponent<RectTransform>();
		m_death_pos = m_death_gage.GetComponent<RectTransform>();
		m_deadline_pos = m_deadline.GetComponent<RectTransform>();

		Image _image = m_living_gage.GetComponent<Image>();
		m_living_mat = _image.material;
		_image = m_death_gage.GetComponent<Image>();
		m_death_mat = _image.material;

		// ゲージの座標変更(なんで左端アンカーみたいな機能がないのか ｺﾚｶﾞﾜｶﾗﾅｲ)
		Vector2 _pos = m_left_pos;
		_pos.x += m_gage_max_size.x * (float)m_clear_num / (float)m_penguin_mgr.m_TotalCount;
		m_deadline_pos.anchoredPosition = _pos;

		// ステージ上のペンギン数
		m_total_text.text = m_penguin_mgr.m_TotalCount.ToString();
	}

	/**
	 * @brief	更新
	 */
	public void Update()
	{
		Vector4 _tiling = new Vector4();

		// 群れに加わったペンギンゲージ
		{
			// 群れ率 = 現在の群れペン数 / 全ペン数 (0.0 ~ 1.0)
			m_living_ratio = (float)m_penguin_mgr.m_NomadCount / (float)m_penguin_mgr.m_TotalCount;
			_tiling.x = Mathf.Clamp(m_living_ratio, 0.0f, 1.0f);
			_tiling.y = 1.0f;

			// テクスチャのuv値更新(テクスチャが引き延ばされないように)
			m_living_mat.SetVector("_Tiling", _tiling);

			// 群れゲージ画像自体の長さ変更
			m_living_pos.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gage_max_size;

			// 群れゲージの座標変更
			Vector2 _pos = m_left_pos;
			_pos.x += m_living_pos.sizeDelta.x * 0.5f;
			m_living_pos.anchoredPosition = _pos;
		}

		// 死んだペンギンゲージ
		{
			// 死亡率 = 現在の死ペン数 / 全ペン数 (0.0 ~ 1.0)
			m_death_ratio = (float)m_penguin_mgr.m_DeadCount / (float)m_penguin_mgr.m_TotalCount;
			_tiling.x = Mathf.Clamp(m_death_ratio, 0.0f, 1.0f);

			// テクスチャのuv値更新(テクスチャが引き延ばされないように)
			m_death_mat.SetVector("_Tiling", _tiling);

			// 死亡ゲージ画像自体の長さ変更
			m_death_pos.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gage_max_size;

			// 右端座標にする
			Vector2 _right_pos = m_left_pos;
			_right_pos.x += m_gage_max_size.x - m_death_pos.sizeDelta.x * 0.5f;

			// 死亡ゲージの座標変更
			m_death_pos.anchoredPosition = _right_pos;
		}
	}
}
