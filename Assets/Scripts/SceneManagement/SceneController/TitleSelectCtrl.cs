/**
 * @file	TitleSelectCtrl.cs
 * @brief	タイトル画面の選択肢に関わるUIの操作クラス
 * @auther	谷沢　瑞己
 */
using System.Collections.Generic;
using UnityEngine;

/**
 * @class	TitleSelectCtrlクラス
 * @brief	タイトル画面の選択肢に関わるUIの操作クラス
 */
public class TitleSelectCtrl : MonoBehaviour
{
	//! 選択肢が表示されているか
	private bool m_is_active = false;
	public bool ActiveSelect
	{
		private set { m_is_active = value; }
		get { return m_is_active; }
	}

	//! セーブデータがあるかどうか
	public bool m_exist_data = false;

	//! カーソルオブジェクト(instanciateするのではなく既にインスペクタ上にあるもののActiveを切り替えるだけ)
	[SerializeField, Tooltip("カーソルオブジェクト(UI)")]
	private RectTransform m_cursor;

	//! 選択肢オブジェクトリスト(仕組みは同上)
	[SerializeField, Tooltip("選択肢オブジェクト(UI)")]
	private List<RectTransform> m_list_panel;

	//! 現在カーソルが差している選択肢
	private int m_cursor_pos = 0;
	public int SelectIndex
	{
		get { return m_cursor_pos; }
	}

	//! 前回のカーソルインデックス
	private int m_cursor_prev = -1;

	//! カーソルインターバル
	private float m_cursor_interval = 0.0f;

	//! カーソルインターバル初期値
	private static float KCursorInterval = 0.3f;

	/**
	 * @brief	初期化
	 */
	public void Start()
	{
		Activate(false);
		FixCursor();
	}

	/**
	 * @brief	フレーム更新
	 */
	public void Update()
	{
		CursorMoveInput();
		FixCursor();
	}

	/**
	 * @brief	選択肢のアクティブ状態を切り替える
	 */
	public void Activate(bool isActive)
	{
		// 選択肢パネルのアクティブ状態を変更する
		foreach (RectTransform panel in m_list_panel)
		{
			panel.gameObject.SetActive(isActive);

			// 選択肢１は子要素を複数持っている
			if(panel.childCount > 1)
			{
				// データがある場合最初の選択肢は"つづきから"となる
				if (m_exist_data)
				{
					panel.GetChild(0).gameObject.SetActive(false);
					panel.GetChild(1).gameObject.SetActive(true);
				}
				// データがある場合最初の選択肢は"はじめから"となる
				else
				{
					panel.GetChild(0).gameObject.SetActive(true);
					panel.GetChild(1).gameObject.SetActive(false);
				}
			}
		}

		// カーソルパネルのアクティブ状態を変更する
		m_cursor.gameObject.SetActive(isActive);

		//! カーソルの位置を初期化する
		m_cursor_pos = 0;
		ActiveSelect = isActive;
	}

	/**
	 * @brief	カーソル位置を上に移動させる
	 */
	public void MoveCursorUp()
	{
		if (m_list_panel.Count > 0)
		{
			m_cursor_pos = (m_cursor_pos + m_list_panel.Count - 1) % m_list_panel.Count;
			m_cursor_interval = KCursorInterval;
		}
	}

	/**
	 * @brief	カーソル位置を下に移動させる
	 */
	public void MoveCursorDown()
	{
		if (m_list_panel.Count > 0)
		{
			m_cursor_pos = (m_cursor_pos + 1) % m_list_panel.Count;
			m_cursor_interval = KCursorInterval;
		}
	}

	/**
	 * @brief	カーソルオブジェクトを移動させる
	 */
	private void FixCursor()
	{
		// カーソル位置が変わった時だけ画面用パラメータ更新
		if (m_cursor_prev != m_cursor_pos)
		{
			m_cursor.gameObject.transform.position = m_list_panel[m_cursor_pos].transform.position;
			m_cursor_prev = m_cursor_pos;
		}
	}

	/**
	 * @brief	インプットからカーソル操作
	 */
	 private void CursorMoveInput()
	{
		//! 縦方向の入力を取得
		if (m_cursor_interval > 0)
		{
			m_cursor_interval -= Time.deltaTime;
		}
		else
		{
			float _input = Input.GetAxis("Vertical");
			if (_input > 0.9f) MoveCursorUp();
			if (_input < -0.9f) MoveCursorDown();
		}
	}
}
