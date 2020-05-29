using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(RectTransform))]
public class Select_Button : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("ステージリスト")]
	private StageMetaParam m_stage_list;

	[SerializeField, Tooltip("プレイヤーからの入力")]
	private PlayerInput m_input;

	//! UIのボタンオブジェクトを使うため、選択状態の操作をEventSystemから行う
	private EventSystem m_event_system;

	//! 入力状態
	private bool m_is_input_A;
	private bool m_is_input_B;

	[SerializeField, Tooltip("コマンドエリア")]
	private Select_CommandMgr m_commnad_mgr;
	[SerializeField, Tooltip("背景")]
	private Select_Background m_background_obj;
	[SerializeField, Tooltip("クリアタイム・実績エリア")]
	private Select_Score m_score;
	[SerializeField, Tooltip("救出数ゲージエリア")]
	private Select_PenguinNum m_penguin_gauge;

	//! 自分のRectTransform
	private RectTransform m_self;
	//! カーソルの位置を記憶する変数(x：エリア y：レベル)
	private Vector2Int m_command_pos = new Vector2Int(0, 0);

	//! テスト用
	float _cnter = 1.0f;


	public void Awake()
	{
		m_self = GetComponent<RectTransform>();
		m_event_system = EventSystem.current;
	}

	public void Start()
	{
		SetPos();
		SetImage();

		m_input.actions["A Button"].performed += Cancel;
		m_input.actions["B Button"].performed += Decide;
	}

	// 選んだステージ読み込む
	private void Decide(InputAction.CallbackContext _context)
	{
		Debug.Log("AButton");
		StartCoroutine("TransitionToGame");
	}

	// キャンセル動作
	private void Cancel(InputAction.CallbackContext _context)
	{
		Debug.Log("BButton");
		StartCoroutine("TransitionToTitle");
	}

	private void SetPos()
	{
		// コマンドを選択中にする
		RectTransform _button_rect = m_commnad_mgr.GetButtonPos(m_command_pos.x, m_command_pos.y);
		m_self.position = _button_rect.position;
		m_event_system.SetSelectedGameObject(_button_rect.gameObject);

	}
	
	private void SetImage()
	{
		// 背景切り替え
		if (m_command_pos.x == (int)StageSelect_ImageList.AreaIndex.Snaw) m_background_obj.Change(0);
		if (m_command_pos.x == (int)StageSelect_ImageList.AreaIndex.Jungle) m_background_obj.Change(1);
		if (m_command_pos.x == (int)StageSelect_ImageList.AreaIndex.Desert) m_background_obj.Change(2);
		if (m_command_pos.x == (int)StageSelect_ImageList.AreaIndex.Volcano) m_background_obj.Change(3);

		// スコア読み込み
		m_score.LoadStar(m_command_pos.x, m_command_pos.y);
		m_score.LoadTime(m_command_pos.x, m_command_pos.y);

		// ゲージの整形
		m_penguin_gauge.SetGauge(m_command_pos.x, m_command_pos.y);
	}

	IEnumerator TransitionToTitle()
	{
		// フェードを待つ
		yield return new WaitForSecondsRealtime(0.1f);

		// シーン遷移
		SceneManager.LoadSceneAsync((int)KSceneIndex.Title);
		yield return null;
	}

	IEnumerator TransitionToGame()
	{
		// フェードを待つ
		yield return new WaitForSecondsRealtime(0.1f);

		// シーン遷移
		Select_ButtonUnit _select = m_event_system.currentSelectedGameObject.GetComponent<Select_ButtonUnit>();
		m_stage_list.m_current_area_index = _select.SelectingArea;
		m_stage_list.m_current_stage_index = _select.SelectingLevel;
		SceneManager.LoadSceneAsync(m_stage_list.CurrentLevelData.StageScene.name);
		yield return null;
	}


}
