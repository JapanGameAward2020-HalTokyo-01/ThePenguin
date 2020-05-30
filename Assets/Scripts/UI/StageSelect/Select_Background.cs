/**
 * @file    Select_Background.cs
 * @brief   ステージセレクトの背景
 * @author  谷沢 瑞己
 */
using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/**
 * @class   Select_Backgroundクラス
 * @brief   ステージセレクトの背景
 */
public class Select_Background : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("子要素のImageコンポーネント")]
	private Image[] m_image_list;

	//! 現在はっきり見えるべきオブジェクトインデックス
	private int m_select_index = 0;

	//! フェード速度
	[SerializeField, Tooltip("フェードの速度")]
	private float m_fade_speed = 0.02f;

	/**
	 * @brief	初期化
	 */
	public void Awake()
	{
		m_image_list = GetComponentsInChildren<Image>();
	}

	/**
	 * @brief	背景画像の変更開始
	 */
	public void Change(int _index)
	{
		m_select_index = _index % m_image_list.Length;
		StartCoroutine("UpdateBGIAlpha");
	}

	/**
	 * @brief	背景画像のフェード更新処理
	 */
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
