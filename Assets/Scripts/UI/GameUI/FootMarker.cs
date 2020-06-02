/**
 * @file	FootMarker.cs
 * @brief	親ペンギンの足元のマーカー
 * @auther	谷沢　瑞己
 */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

/**
 * @file	FootMarkerクラス
 * @brief	親ペンギンの足元のマーカー
 */
public class FootMarker : MonoBehaviour
{
	[SerializeField, NonEditableField, Tooltip("インプット")]
	private PlayerInput m_input = null;

	public void Awake()
	{
		m_input = FindObjectOfType<PlayerInput>();
	}

	public void Start()
	{
		m_input.actions["Move"].performed += CursorRotate;
	}

	// 選んだステージ読み込む
	private void CursorRotate(InputAction.CallbackContext _context)
	{
		Vector3 _pos = transform.position;
		Vector2 _in_dir = _context.ReadValue<Vector2>();
		_pos.x -= _in_dir.x;
		_pos.z -= _in_dir.y;

		transform.LookAt(_pos);
	}

}
