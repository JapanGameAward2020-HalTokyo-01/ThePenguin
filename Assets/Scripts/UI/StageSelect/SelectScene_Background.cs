using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class SelectScene_Background : MonoBehaviour
{
	public enum Type { None = -1, Area1, Area2, Area3, Area4, Max }

	//! スプライトリスト
	[SerializeField]
	private Sprite[] m_bgi_list = new Sprite[(int)Type.Max];

	//! イメージコンポーネント
	private Image m_image;

	public void Awake()
	{
		m_image = GetComponent<Image>();
	}

	public void Change(SelectScene_Background.Type _type)
	{
		m_image.sprite = m_bgi_list[(int)_type];
	}

}
