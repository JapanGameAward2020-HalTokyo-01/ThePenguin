using UnityEngine;
using UnityEngine.UI;

public class Select_ButtonUnit : MonoBehaviour
{
	//! 星画像のImageリスト
	[SerializeField, Tooltip("星の画像オブジェクト")]
	private Image[] m_score_image = new Image[3];

	//! スプライト
	[SerializeField, Tooltip("非選択状態スプライト")]
	private Sprite m_sprites;
	[SerializeField, Tooltip("選択状態スプライト")]
	private Sprite m_sprites_selected;

	//! アンロック状態
	[SerializeField, NonEditableField, Tooltip("ステージのアンロック状態")]
	private bool m_unlocked = false;


}
