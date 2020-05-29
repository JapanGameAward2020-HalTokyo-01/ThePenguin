/**
 * @file    Select_ButtonUnit.cs
 * @brief   ステージセレクトのコマンドとなる画像群
 *			ステージ数に合わせてSelect_ButtonLineUpクラスで必要な数生成されることになる
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
	[SerializeField, NonEditableField, Tooltip("画像リスト")]
	private StageSelect_ImageList m_image_list;

	[SerializeField, Space(10), Tooltip("星の画像オブジェクト")]
	private Image[] m_score_image = new Image[3];
	[SerializeField, Tooltip("ステージ番号の表示オブジェクト")]
	private Text[] m_num_text = new Text[2];

	//! このボタンが担当するエリア、レベルインデックス
	[SerializeField, NonEditableField]
	private  Vector2Int m_command_index = new Vector2Int(0, 0);
	public int SelectingArea { get { return m_command_index.x; } }
	public int SelectingLevel { get { return m_command_index.y; } }

	// ボタン背景イメージの変更
	public void SetButtonImage(StageSelect_ImageList.AreaIndex _area_index, bool _is_unlocked)
	{
		// 背景画像
		Image _background = GetComponent<Image>();
		_background.sprite = m_image_list.GetImage_ButtonBase(_area_index);

		//! ボタンとしての状態ごとの画像設定
		Button m_button = GetComponent<Button>();
		SpriteState _sprite = m_button.spriteState;
		_sprite.highlightedSprite = m_image_list.GetImage_SelectingButtonBase(_area_index);
		_sprite.pressedSprite = m_image_list.GetImage_SelectingButtonBase(_area_index);
		_sprite.selectedSprite = m_image_list.GetImage_SelectingButtonBase(_area_index);
		m_button.spriteState = _sprite;

		// ロックされていれば暗くなる
		if (!_is_unlocked) _background.color = UnityEngine.Color.gray;
	}

	// エリア-レベル表記の変更
	public void SetStageNumber(StageSelect_ImageList.AreaIndex _area_index, int _stage_index)
	{
		m_num_text[0].text = ((int)_area_index + 1).ToString();
		m_num_text[1].text = (_stage_index + 1).ToString();
		m_command_index = new Vector2Int((int)_area_index, _stage_index);
	}

	// 実績スター変更
	public void SetStar(bool[] _grade)
	{
		// 星の点灯
		for (int cnt = 0; cnt < _grade.Length; cnt++)
		{
			if (_grade[cnt]) m_score_image[cnt].sprite = m_image_list.ImageLightStar;
			else m_score_image[cnt].sprite = m_image_list.ImageDarkStar;
		}
	}

}
