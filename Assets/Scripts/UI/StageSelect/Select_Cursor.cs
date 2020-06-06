﻿/**
 * @file    Select_Cursor.cs
 * @brief   ステージセレクトのコマンド変更、カーソル移動、コマンド実行処理
 * @author  谷沢 瑞己
 */
using System.Collections;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

/**
 * @class   Select_Cursorクラス
 * @brief   ステージセレクトのコマンド変更、カーソル移動、コマンド実行処理
 */
[RequireComponent(typeof(RectTransform))]
public class Select_Cursor : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("ステージリスト")]
	private StageMetaParam m_stage_list;

	[SerializeField, Tooltip("プレイヤーからの入力")]
	private PlayerInput m_input;
	//! UIのボタンオブジェクトを使うため、選択状態の操作をEventSystemから行う
	private EventSystem m_event_system;
	//! カーソルが指す初期オブジェクト
	private Button m_last_selected = null;

	[Header("UIParts")]

	[SerializeField, Tooltip("コマンドエリア")]
	private Select_CommandMgr m_commnad_mgr;
	[SerializeField, Tooltip("背景")]
	private Select_Background m_background_obj;
	[SerializeField, Tooltip("クリアタイム・実績エリア")]
	private Select_Score m_score;
	[SerializeField, Tooltip("救出数ゲージエリア")]
	private Select_PenguinNum m_penguin_gauge;

	[Header("Parameter")]

	[SerializeField, Tooltip("カーソルの移動速度"), Range(0.0001f, 0.03f)]
	private float m_cursor_speed = 0.005f;

	//! 自分のRectTransform
	private RectTransform m_self;
	//! 画面上の移動先RectTransform
	private RectTransform m_selecting_pos;

	// セーブデータ(DDOLより)
	private SaveSystem m_save;

	/**
	 * @brief	初期化(参照回収)
	 */
	public void Awake()
	{
		m_save = FindObjectOfType<SaveSystem>();

		m_event_system = EventSystem.current;
		m_last_selected = m_commnad_mgr.GetButtonPos(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index).GetComponent<Button>();

		m_self = GetComponent<RectTransform>();
	}

	/**
	 * @brief	初期化(設定)
	 */
	public void Start()
	{
	}

	/**
	 * @brief	更新
	 */
	public void Update()
	{
		// インプットチェック(GameOver, Resultと操作を合わせる)
		if (Input.GetKeyDown("joystick button 0") || Input.GetKeyDown(KeyCode.Space))
		{
			Decide();
		}
		else if (Input.GetKeyDown("joystick button 1") || Input.GetKeyDown(KeyCode.Space))
		{
			Cancel();
		}

		// 選択中のオブジェクトが無ければ初期選択コマンドを選択する
		if (m_event_system.currentSelectedGameObject == null)
		{
			m_event_system.SetSelectedGameObject(m_last_selected.gameObject);
			return;
		}
		// 選択中ボタンの変数を更新する
		m_last_selected = m_event_system.currentSelectedGameObject.GetComponent<Button>();

		SetPos();
		SetImage();
	}

	// 選んだステージ読み込む
	private void Decide()
	{
		// 選択したステージが挑戦可能か
		GameData _level_data = m_save.Stages1[m_stage_list.CurrentLevelIndex];

		if (_level_data.m_Unlocked)
		{
			StartCoroutine("TransitionToGame");
		}
		else
		{
			Vector2 _v = new Vector2(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index);
			Debug.Log("The level " + _v.ToString() + " is not available.");
		}
	}

	// キャンセル動作
	private void Cancel()
	{
		StartCoroutine("TransitionToTitle");
	}

	/**
	 * @brief	カーソルをコマンドの座標に移動開始させる
	 */
	private void SetPos()
	{
		// コマンドを選択中にする
		Select_ButtonUnit _select = m_event_system.currentSelectedGameObject.GetComponent<Select_ButtonUnit>();

		m_stage_list.m_current_area_index = _select.SelectingArea;
		m_stage_list.m_current_stage_index = _select.SelectingLevel;

		RectTransform _button_rect = m_commnad_mgr.GetButtonPos(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index);
		m_selecting_pos = _button_rect;
		m_event_system.SetSelectedGameObject(_button_rect.gameObject);
		StartCoroutine("MoveCursor");
	}

	/**
	 * @brief	選択中コマンドに合わせて対応する画像を変更する
	 */
	private void SetImage()
	{
		// 背景切り替え
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Snaw) m_background_obj.Change(0);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Jungle) m_background_obj.Change(1);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Desert) m_background_obj.Change(2);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Volcano) m_background_obj.Change(3);

		// スコア読み込み
		GameData _data = m_save.Stages1[m_stage_list.CurrentLevelIndex];
		m_score.SetStar(new bool[3] { _data.m_Star1, _data.m_Star2, _data.m_Star3 });
		m_score.SetTime(_data.m_Time);

		// ゲージの整形
		m_penguin_gauge.SetGauge(m_save, m_stage_list.CurrentLevelIndex);
	}

	/**
	 * @brief	カーソルの座標移動処理
	 */
	IEnumerator MoveCursor()
	{
		while(Vector2.Distance(m_self.position, m_selecting_pos.position) > 0.01f)
		{
			Vector2 _pos;
			_pos.x = Mathf.Lerp(m_self.position.x, m_selecting_pos.position.x, m_cursor_speed);
			_pos.y = Mathf.Lerp(m_self.position.y, m_selecting_pos.position.y, m_cursor_speed);
			m_self.position = _pos;

			yield return null;
		}
	}

	/**
	 * @brief	タイトル画面への遷移処理
	 */
	IEnumerator TransitionToTitle()
	{
		// フェードを待つ
		yield return new WaitForSecondsRealtime(0.1f);

		// シーン遷移
		yield return SceneManager.LoadSceneAsync(m_stage_list.m_Title.name);
		yield return null;
	}

	/**
	 * @brief	ゲームメインシーンへの遷移処理
	 */
	IEnumerator TransitionToGame()
	{
		// フェードを待つ
		yield return new WaitForSecondsRealtime(0.1f);

		// シーン遷移
		yield return SceneManager.LoadSceneAsync(m_stage_list.CurrentLevelBuildIndex);
		yield return null;
	}


}
