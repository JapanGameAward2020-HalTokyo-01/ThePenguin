using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class Select_Background : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("画像リスト")]
	private StageSelect_ImageList m_image_list;

	//! イメージコンポーネント
	private Image m_image;

	public void Awake()
	{
		m_image = GetComponent<Image>();
	}

	public void Change(StageSelect_ImageList.AreaIndex _type)
	{
		m_image.sprite = m_image_list.GetImage_BackgroundImage(_type);
	}

}
