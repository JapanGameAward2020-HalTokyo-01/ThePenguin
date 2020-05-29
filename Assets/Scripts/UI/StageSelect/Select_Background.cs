using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class Select_Background : MonoBehaviour
{
	//! 背景画像のオブジェクト(Imageコンポーネント)
	[SerializeField, NonEditableField, Tooltip("子要素のImageコンポーネント")]
	private Image[] m_image_list;

	//! 現在はっきり見えるべきオブジェクトインデックス
	private int m_select_index = 0;

	//! フェード速度
	[SerializeField, Tooltip("フェードの速度")]
	private float m_fade_speed = 0.02f;

	public void Awake()
	{
		m_image_list = GetComponentsInChildren<Image>();
	}

	public void Change(int _index)
	{
		m_select_index = _index % m_image_list.Length;
		StartCoroutine("UpdateBGIAlpha");
	}

	IEnumerator UpdateBGIAlpha()
	{
		Color _main_color = m_image_list[m_select_index].color;

		while(_main_color.a < 1.0f)
		{
			_main_color.a = Mathf.Min(1.0f, _main_color.a + m_fade_speed);
			m_image_list[m_select_index].color = _main_color;

			for (int cnt = 1; cnt < m_image_list.Length; cnt++)
			{
				int _index = (m_select_index + cnt) % m_image_list.Length;
				Color _sub_color = m_image_list[_index].color;
				_sub_color.a = Mathf.Max(0.0f, _sub_color.a - m_fade_speed);
				m_image_list[_index].color = _sub_color;
			}
			yield return null;
		}
	}
}
