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
	private Select_CommandMgr m_command_mgr;
	[SerializeField, Tooltip("背景")]
	private Select_Background m_background_obj;
	[SerializeField, Tooltip("クリアタイム・実績エリア")]
	private Select_Score m_score;
	[SerializeField, Tooltip("救出数ゲージエリア")]
	private Select_PenguinNum m_penguin_gauge;

    //! Aボタン群
    [SerializeField]
    private UnityEngine.UI.Image m_AButtonImage;
    [SerializeField]
    private Sprite m_AClicked;
    [SerializeField]
    private Sprite m_ADefault;

    //! Bボタン群
    [SerializeField]
    private UnityEngine.UI.Image m_BButtonImage;
    [SerializeField]
    private Sprite m_BClicked;
    [SerializeField]
    private Sprite m_BDefault;

    [Header("Parameter")]

	[SerializeField, Tooltip("カーソルの移動速度"), Range(0.03f, 0.1f)]
	private float m_cursor_speed = 0.005f;

	//! 自分のRectTransform
	private RectTransform m_self;
	//! 画面上の移動先RectTransform
	private RectTransform m_selecting_pos;

	// セーブデータ(DDOLより)
	[SerializeField,NonEditableField]
	private SaveSystem m_save;

    [SerializeField]
    private UI_Component_Button m_Fade;

    [Header("キーボード入力時UI画像")]
    [SerializeField]
    private Sprite m_A_Clicked;
    [SerializeField]
    private Sprite m_A_Default;
    [SerializeField]
    private Sprite m_B_Clicked;
    [SerializeField]
    private Sprite m_B_Default;
    [SerializeField]
    private Sprite m_Enter_Clicked;
    [SerializeField]
    private Sprite m_Enter_Default;
    [SerializeField]
    private Sprite m_Backspace_Clicked;
    [SerializeField]
    private Sprite m_Backspace_Default;
    /**
	 * @brief	初期化(参照回収)
	 */
    public void Awake()
	{
        m_event_system = EventSystem.current;
		SoundEffect.Instance.StopLoopSEAll();

        //GamePadが接続していない
        if (Input.GetJoystickNames().Length > 0 && Input.GetJoystickNames()[0] != "")
        {
            m_AClicked = m_A_Clicked;
            m_ADefault = m_A_Default;
            m_BClicked = m_B_Clicked;
            m_BDefault = m_B_Default;
            m_AButtonImage.sprite = m_ADefault;
            m_BButtonImage.sprite = m_BDefault;
        }
        else
        {
            m_AClicked = m_Enter_Clicked;
            m_ADefault = m_Enter_Default;
            m_BClicked = m_Backspace_Clicked;
            m_BDefault = m_Backspace_Default;
            m_AButtonImage.sprite = m_ADefault;
            m_BButtonImage.sprite = m_BDefault;

        }
    }

	public void Start()
	{
        m_last_selected = m_command_mgr.GetButtonPos(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index).GetComponent<Button>();

        m_self = GetComponent<RectTransform>();

        // BGM再生
        BGMManager.Instance.Play(BGMs.Index.Select);

        StartCoroutine(FadeOut());
    }

	/**
	 * @brief	更新
	 */
	public void Update()
	{
		// インプットチェック(GameOver, Resultと操作を合わせる)
		if (Input.GetKeyDown("joystick button 0") || Input.GetKeyDown(KeyCode.Return))
		{
			Decide(m_save);
		}
		else if (Input.GetKeyDown("joystick button 1") || Input.GetKeyDown(KeyCode.Escape))
		{
			Cancel();
		}

        // 選択中のオブジェクトが無ければ初期選択コマンドを選択する
        if (m_event_system.currentSelectedGameObject == null)
        {
            m_event_system.SetSelectedGameObject(m_last_selected.gameObject);
        }
        else
        {
			if(m_last_selected.gameObject != m_event_system.currentSelectedGameObject)
				SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cursor);

			// 選択中ボタンの変数を更新する
			m_last_selected = m_event_system.currentSelectedGameObject.GetComponent<Button>();
        }
        SetPos();
        // 参照切れ対策
        if (m_save == null) m_save = FindObjectOfType<SaveSystem>();
        SetImage(m_save);
    }

	// 選んだステージ読み込む
	private void Decide(SaveSystem _save)
	{
		// 選択したステージが挑戦可能か
		Debug.Log(m_stage_list.CurrentLevelIndex);
		GameData _level_data = _save.Stages1[m_stage_list.CurrentLevelIndex];

        if (_level_data.m_Unlocked)
		{
			SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Confirm);
			StartCoroutine(TransitionToGame());
		}
		else
		{
			SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cancel);
			Vector2 _v = new Vector2(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index);
			Debug.Log("The level " + _v.ToString() + " is not available.");
		}
	}

	// キャンセル動作
	private void Cancel()
	{
		SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cancel);
		StartCoroutine(TransitionToTitle());
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

		RectTransform _button_rect = m_command_mgr.GetButtonPos(m_stage_list.m_current_area_index, m_stage_list.m_current_stage_index);
		m_selecting_pos = _button_rect;
		m_event_system.SetSelectedGameObject(_button_rect.gameObject);
		StartCoroutine(MoveCursor());
	}

	/**
	 * @brief	選択中コマンドに合わせて対応する画像を変更する
	 */
	private void SetImage(SaveSystem _save)
	{
		// 背景切り替え
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Snaw) m_background_obj.Change(0);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Jungle) m_background_obj.Change(1);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Desert) m_background_obj.Change(2);
		if (m_stage_list.m_current_area_index == (int)StageSelect_ImageList.AreaIndex.Volcano) m_background_obj.Change(3);

		// スコア読み込み
		GameData _data = _save.Stages1[m_stage_list.CurrentLevelIndex];
		m_score.SetStar(new bool[3] { _data.m_Star1, _data.m_Star2, _data.m_Star3 });
		m_score.SetTime(_data.m_Time);
		m_score.SetRequirement(_data.m_StarPenguin, _data.m_StarTime);

		// ゲージの整形
		m_penguin_gauge.SetGauge(_save, m_stage_list.CurrentLevelIndex);
	}

	/**
	 * @brief	カーソルの座標移動処理
	 */
	IEnumerator MoveCursor()
	{
		while(Vector2.Distance(m_self.position, m_selecting_pos.position) > 0.01f)
		{
			Vector2 _pos;
			_pos.x = Mathf.Lerp(m_self.position.x, m_selecting_pos.position.x, Mathf.SmoothStep(0.0f, 1.0f, m_cursor_speed));
			_pos.y = Mathf.Lerp(m_self.position.y, m_selecting_pos.position.y, Mathf.SmoothStep(0.0f, 1.0f, m_cursor_speed));
			m_self.position = _pos;

			yield return null;
		}
    }

	/**
	 * @brief	タイトル画面への遷移処理
	 */
	IEnumerator TransitionToTitle()
	{
        m_Fade.SetActive(true);
        m_BButtonImage.sprite = m_BClicked;

        //! 0.4秒待つ
        yield return new WaitForSecondsRealtime(0.4f);

        //! ボタン解除処理
        m_BButtonImage.sprite = m_BDefault;

		// シーン遷移
		SceneManager.LoadScene(m_stage_list.m_Title);
		yield return null;
	}

	/**
	 * @brief	ゲームメインシーンへの遷移処理
	 */
	IEnumerator TransitionToGame()
	{
        m_Fade.SetActive(true);
        m_AButtonImage.sprite = m_AClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.4f);

        //! ボタン解除処理
        m_AButtonImage.sprite = m_ADefault;

		// シーン遷移
		SceneManager.LoadScene(m_stage_list.CurrentLevelBuildIndex);
		yield return null;
	}

    private IEnumerator FadeOut()
    {
        yield return new WaitForSecondsRealtime(0.1f);
        m_Fade.SetActive(false);
    }
}
