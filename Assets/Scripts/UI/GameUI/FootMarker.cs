/**
 * @file	FootMarker.cs
 * @brief	親ペンギンの足元のマーカー
 * @auther	谷沢　瑞己
 */
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

/**
 * @file	FootMarkerクラス
 * @brief	親ペンギンの足元のマーカー
 */
public class FootMarker : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("インプット")]
	private PlayerInput m_input = null;

	// 親
	private ParentPenguin m_parent;

	[SerializeField, Tooltip("矢の部分")]
	private SpriteRenderer m_arrow = null;

	public Transform m_deb;

	public void Awake()
	{
		m_input = FindObjectOfType<PlayerInput>();
		m_parent = FindObjectOfType<ParentPenguin>();
	}

	public void Start()
	{
		m_input.actions["Move"].performed += CursorRotate;
	}

	// 選んだステージ読み込む
	private void CursorRotate(InputAction.CallbackContext _context)
	{
		Vector2 _in_dir = _context.ReadValue<Vector2>();

		if (_in_dir.magnitude > 0)
		{
			// 表示する
			Color _col = m_arrow.color;
			_col.a = 1.0f;
			m_arrow.color = _col;

			// 回転する
			Vector3 _dir = Camera.main.transform.forward;
			_dir.y = 0.0f;
			transform.LookAt(transform.position + _dir);
			m_deb.transform.position = transform.position + _dir.normalized;
		}
		else
		{
			// 非表示にする
			Color _col = m_arrow.color;
			_col.a = 0.0f;
			m_arrow.color = _col;
		}
	}
}
