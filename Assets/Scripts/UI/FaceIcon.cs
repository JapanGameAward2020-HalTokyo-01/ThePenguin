/**
 * @file    FaceIcon.cs
 * @brief   ステージの進行度を顔で表現する
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;

/**
 * @class   FaceIconクラス
 * @brief   ステージの進行度を顔で表現する
 */
[RequireComponent(typeof(Image))]
public class FaceIcon : MonoBehaviour
{
	/**
	 * @enum    kState列挙型
	 * @brief   顔の種類
	 */
	public enum kState
	{
		None = -1,  // コード規約より

		// (以下、条件に関しては暫定)
		Normal,     // 通常状態
		Good,       // クリア条件達成状態
		Max,        // 最高スコア達成可能状態
		Danger,     // クリア不可状態

		Enum_Max    // コード規約より(命名被り回避)
	}

	[Header("Face List")]
	//! 顔画像リスト(リストの何番目が何に相当するのか分かりにくいので配列使用していない)
	[SerializeField]
	private Sprite m_normal_face;
	[SerializeField]
	private Sprite m_good_face;
	[SerializeField]
	private Sprite m_max_face;
	[SerializeField]
	private Sprite m_danger_face;

	//! 実行中はこちらからアクセスする
	private Sprite[] m_face_list;

	//! ゲームオブジェクトが持つImageコンポーネント
	private Image m_self_image;

	/**
	 * @brief	Spriteのリスト化
	 */
	public void Awake()
	{
		m_self_image = GetComponent<Image>();
		m_face_list = new Sprite[(int)kState.Enum_Max] { m_normal_face, m_good_face, m_max_face, m_danger_face };
	}

	/**
	 * @brief	画像を変更する
	 * @param	(_state)	画像のインデックスに相当
	 */
	public void ChangeState(kState _state)
	{
		if(m_face_list != null) m_self_image.sprite = m_face_list[(int)_state];
	}
}
