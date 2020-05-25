/**
 * @file    PenguinGaugeMgr.cs
 * @brief   ペンギンの数に関する状況を示すゲージUIの操作クラス
 * @author  谷沢 瑞己
 */

using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/**
 * @class   PenguinGaugeMgrクラス
 * @brief   ペンギンの数に関する状況を示すゲージUIの操作クラス
 */
public class PenguinGaugeMgr : MonoBehaviour
{
	//! 左上端の座標
	[SerializeField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の左端座標")]
	private Vector2 m_left_pos;
	//! 最大の大きさ
	[SerializeField, NonEditableField, Tooltip("画像(Scale=(1, 1)の時)におけるゲージ部分の大きさ\n子オブジェクトから読み取り")]
	private Vector2 m_gauge_max_size;

	[Header("UI objects")]

	//! UIオブジェクト
	[SerializeField, Tooltip("群れペンギンゲージ画像のオブジェクト")]
	private GameObject m_living_gauge;
	[SerializeField, Tooltip("死んだペンギンゲージ画像のオブジェクト")]
	private GameObject m_death_gauge;
	[SerializeField, Tooltip("クリア目標ライン画像のオブジェクト")]
	private GameObject m_deadline;

	[SerializeField, Tooltip("群れのペンギン数を表示するテキストオブジェクト")]
	private Text m_pack_num_text;
	[SerializeField, Tooltip("死んだペンギン数を表示するテキストオブジェクト")]
	private Text m_dead_num_text;
	[SerializeField, Tooltip("ステージ内のペンギン数を表示するテキストオブジェクト")]
	private Text m_total_text;

	[SerializeField, Tooltip("群れの数の状況を顔で表現するオブジェクト")]
	private FaceIcon m_face_icon;

	[Header("outer object")]

	//! ペンギンの数を管理しているもの
	[SerializeField]
	private PenguinManager m_penguin_mgr;

    //! クリアのボーダーラインペンギン数
    [SerializeField, NonEditableField, Tooltip("クリアに必要な群れペンギンの数\nステージ情報から設定するので、今後表示しない予定")]
    private int m_clear_num;

	[Header("Dammy Parameters")]
	//! 各種閾値(ステージのメタデータから読み取りになるため仮配置)
	[SerializeField, Tooltip("Goodの顔に変化する群れ数の閾値であり、\nクリア条件とは現状関係ない")]
	private int m_border_good;
	[SerializeField, Tooltip("Maxの顔に変化する群れ数の閾値であり、\nステージ上のペンギン総数とは現状関係ない")]
	private int m_border_max;
	[SerializeField, Tooltip("Dangerの顔に変化する死亡数の閾値")]
	private int m_border_danger;

	//! 座標情報 
	private RectTransform m_living_pos;
	private RectTransform m_death_pos;
	private RectTransform m_deadline_pos;

	//! マテリアル
	private Material m_living_mat;
	private Material m_death_mat;

    //! それぞれの状態のペンギン数
    private float m_living_ratio = 0.0f;
	private float m_death_ratio = 0.0f;


    /**
	 * @brief	初期化
	 */
    public void Start()
	{
		m_living_pos = m_living_gauge.GetComponent<RectTransform>();
		m_death_pos = m_death_gauge.GetComponent<RectTransform>();
		m_deadline_pos = m_deadline.GetComponent<RectTransform>();

		Image _image = m_living_gauge.GetComponent<Image>();
		m_living_mat = _image.material;
		_image = m_death_gauge.GetComponent<Image>();
		m_death_mat = _image.material;

		RectTransform _gauge_rect = m_living_gauge.GetComponent<RectTransform>();
		m_gauge_max_size = _gauge_rect.sizeDelta;

		StartCoroutine(DelayStart());
	}

    /// <summary>
    /// @brief      PenguinManagerの起動を待つ処理のCoroutine
    /// </summary>
    IEnumerator DelayStart()
    {
        yield return new WaitForEndOfFrame();

        // ゲージの座標変更
        Vector2 _pos = m_left_pos;

        _pos.x += m_gauge_max_size.x * (float)(m_penguin_mgr.m_TotalCount - m_penguin_mgr.m_MaxDead) / (float)m_penguin_mgr.m_TotalCount;
        m_deadline_pos.anchoredPosition = _pos;

        // ステージ上のペンギン数
        m_total_text.text = m_penguin_mgr.m_TotalCount.ToString();

        yield break;
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
			m_living_ratio = (float)m_penguin_mgr.m_PackCount / (float)m_penguin_mgr.m_TotalCount;
			_tiling.x = Mathf.Clamp(m_living_ratio, 0.0f, 1.0f);
			_tiling.y = 1.0f;

			// テクスチャのuv値更新(テクスチャが引き延ばされないように)
			m_living_mat.SetVector("_Tiling", _tiling);

			// 群れゲージ画像自体の長さ変更
			m_living_pos.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gauge_max_size;

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
			m_death_pos.sizeDelta = new Vector2(_tiling.x, _tiling.y) * m_gauge_max_size;

			// 右端座標にする
			Vector2 _right_pos = m_left_pos;
			_right_pos.x += m_gauge_max_size.x - m_death_pos.sizeDelta.x * 0.5f;

			// 死亡ゲージの座標変更
			m_death_pos.anchoredPosition = _right_pos;
		}

		// テキスト
		{
			m_pack_num_text.text = m_penguin_mgr.m_PackCount.ToString();

			if (m_penguin_mgr.m_DeadCount > 0)
				m_dead_num_text.text = m_penguin_mgr.m_DeadCount.ToString();
			else
				m_dead_num_text.text = "";
		}

		// 顔グラ
		{
			// 死亡数が基準未満
			if(m_penguin_mgr.m_DeadCount < m_border_danger)
			{
				// 群れ数が Good未満
				if (m_penguin_mgr.m_PackCount < m_border_good)		m_face_icon.ChangeState(FaceIcon.kState.Normal);
				// 群れ数が Good以上 Max 未満
				else if (m_penguin_mgr.m_PackCount < m_border_max)	m_face_icon.ChangeState(FaceIcon.kState.Good);
				// 群れ数が Max以上
				else												m_face_icon.ChangeState(FaceIcon.kState.Max);
			}
			// 死亡数が基準超え
			else
			{
				m_face_icon.ChangeState(FaceIcon.kState.Danger);
			}
		}

	}
}
