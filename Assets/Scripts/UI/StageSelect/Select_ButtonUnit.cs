/**
 * @file    Select_ButtonUnit.cs
 * @brief   ステージセレクトのコマンドとなる画像群
 *			(ステージ数に合わせてSelect_ButtonLineUpクラスで必要な数生成されることになる)
 *			↑最初っから並べることになった
 * @author  谷沢 瑞己
 */
using UnityEngine;
using UnityEngine.UI;

/**
 * @class   Select_ButtonUnitクラス
 * @brief   ステージセレクトのコマンドとなる画像群
 */
[RequireComponent(typeof(Image))]
public class Select_ButtonUnit : MonoBehaviour
{
	[SerializeField, Tooltip("アンロック状態")]
	public bool m_unlocked = false;

	[Header("Image List")]

	[SerializeField, Tooltip("ボタン画像(非選択)")]
	private Sprite m_unselected = null;
	[SerializeField, Tooltip("ボタン画像(選択)")]
	private Sprite m_selected = null;

	[SerializeField, Space(10), Tooltip("星の画像オブジェクト")]
	private Image[] m_score_image = new Image[3];

	//! ボタン背景
	private Image m_bg;

	//! このボタンが担当するエリア、レベルインデックス
	[SerializeField, NonEditableField]
	private  Vector2Int m_command_index = new Vector2Int(0, 0);
	public int SelectingArea { get => m_command_index.x; set => m_command_index.x = value; }
	public int SelectingLevel { get => m_command_index.y; set => m_command_index.y = value; }

	public void Awake()
	{
		// 背景画像
		m_bg = GetComponent<Image>();
		m_bg.sprite = m_unselected;

		//! ボタンハイライト
		Button _btn = GetComponent<Button>();
		SpriteState _sprite = _btn.spriteState;
		_sprite.highlightedSprite = m_selected;
		_sprite.pressedSprite = m_selected;
		_sprite.selectedSprite = m_selected;
		_btn.spriteState = _sprite;

	}

	// ロック時色変更
	public void SetUnlockState(bool _b)
	{
		// ロックされていれば暗くなる
		if (_b) m_bg.color = Color.white;
		else m_bg.color = Color.gray;
	}

	// 実績スター変更
	public void SetStar(bool[] _grade)
	{
		// 星の点灯
		for (int cnt = 0; cnt < _grade.Length; cnt++)
		{
			Color _c = m_score_image[cnt].color;
			if (_grade[cnt]) _c.a = 1.0f;
			else _c.a = 0.0f;
			m_score_image[cnt].color = _c;
		}
	}
}
