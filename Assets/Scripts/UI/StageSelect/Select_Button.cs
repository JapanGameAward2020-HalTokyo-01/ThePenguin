using UnityEngine;

[RequireComponent(typeof(RectTransform))]
public class Select_Button : MonoBehaviour
{
	//! 自分のRectTransform
	private RectTransform m_self;

	//! カーソルの位置を記憶する変数(x：エリア y：レベル)
	private Vector2Int m_command_pos = new Vector2Int(0, 0);

	// コマンドエリア
	[SerializeField]
	private Select_CommandMgr m_commnad_mgr;

	//! テスト用
	float _cnter = 1.0f;


	public void Awake()
	{
		m_self = GetComponent<RectTransform>();
	}

	public void Update()
	{
		_cnter -= Time.deltaTime;
		if(_cnter < 0)
		{
			_cnter = 1.0f;
			m_command_pos.y++;
			if(m_command_pos.y > 4)
			{
				m_command_pos.y = 0;
				m_command_pos.x = (m_command_pos.x + 1) % 4;
			}
			SetPos();
		}

	}

	private void SetPos()
	{
		RectTransform _button_rect = m_commnad_mgr.GetButtonPos(m_command_pos.x, m_command_pos.y);
		m_self.position = _button_rect.position;
	}

}
