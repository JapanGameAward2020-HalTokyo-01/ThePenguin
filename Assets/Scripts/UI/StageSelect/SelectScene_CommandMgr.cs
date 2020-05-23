using System;
using UnityEngine;
using UnityEngine.UIElements;

public class SelectScene_CommandMgr : MonoBehaviour
{
	/**
	 * やる事メモ
	 * ・カーソル位置を決める(エリア何のステージ何 で保持、カーソルには座標を伝える)
	 * ・各ボタンの座標を読み取れる (カーソルに渡せる)
	 * ・ステージシーンに遷移する
	 */

	//! ステージデータの把握の為のリスト
	[SerializeField, Tooltip("ScriptableObjectのStageMetaParamを与える\nステージデータの把握")]
	private StageMetaParam m_stage_list = null;

	//! カーソルの座標情報
	[SerializeField, Tooltip("カーソルの座標情報")]
	private Transform m_cursor;

	//! エリア毎のリスト
	//[SerializeField, Tooltip("エリア毎に区切られたコマンドの集合をリスト化する")]

	//! コマンドの位置を記憶する変数
	private Vector2Int m_command_pos;


	public void Awake()
	{
		m_command_pos = new Vector2Int(0, 0);

	}

}
