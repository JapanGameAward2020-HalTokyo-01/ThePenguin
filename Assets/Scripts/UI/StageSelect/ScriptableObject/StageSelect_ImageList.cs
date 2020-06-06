/**
 * @file    StageSelect_ImageList.cs
 * @brief   ステージセレクト画面で使われる、動的な切り替えが発生する画像のリスト
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class   StageSelect_ImageListクラス
 * @brief   ステージセレクト画面で使われる、動的な切り替えが発生する画像のリスト
 */
[CreateAssetMenu(menuName = "CreateData/Select/ImageList", fileName = "StageSelect_ImageList")]
public class StageSelect_ImageList : ScriptableObject
{
	/**
	 * @enum    AreaIndex列挙型
	 */
	public enum AreaIndex { Snaw, Jungle, Desert, Volcano, Max }


	[Header("Grade Symbol")]

	[SerializeField, Tooltip("評価の星/影")]
	private Sprite m_star_dark;
	public Sprite ImageDarkStar { get { return m_star_dark; } }

	[SerializeField, Tooltip("評価の星/明")]
	private Sprite m_star_light;
	public Sprite ImageLightStar { get { return m_star_light; } }


	//[Header("Button Base")]

	//[SerializeField, Tooltip("エリア別ボタン背景リスト")]
	//private Sprite[] m_button_list = new Sprite[(int)AreaIndex.Max];
	//public Sprite GetImage_ButtonBase(AreaIndex index)
	//{
	//	return m_button_list[(int)index];
	//}

	//[SerializeField, Tooltip("エリア別ボタン背景リスト")]
	//private Sprite[] m_button_selecting_list = new Sprite[(int)AreaIndex.Max];
	//public Sprite GetImage_SelectingButtonBase(AreaIndex index)
	//{
	//	return m_button_selecting_list[(int)index];
	//}

	[Header("Area Background")]

	[SerializeField, Tooltip("エリア別背景イメージ")]
	private Sprite[] m_bgi_list = new Sprite[(int)AreaIndex.Max];
	public Sprite GetImage_BackgroundImage(AreaIndex index)
	{
		return m_bgi_list[(int)index];
	}
}
