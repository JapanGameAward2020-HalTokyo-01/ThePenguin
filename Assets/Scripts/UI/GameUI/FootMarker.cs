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

	public void Awake()
	{
		m_input = FindObjectOfType<PlayerInput>();
		m_parent = FindObjectOfType<ParentPenguin>();
	}

	public void Start()
	{
        if(m_input)
		    m_input.actions["Move"].performed += CursorRotate;
	}

    //private void OnDestroy()
    //{
    //    if (m_input)
    //        m_input.actions["Move"].performed -= CursorRotate;
    //}

    // 選んだステージ読み込む
    private void CursorRotate(InputAction.CallbackContext _context)
	{
        if(!this)
        {
            if (m_input)
                m_input.actions["Move"].performed -= CursorRotate;

            return;
        }

        Vector2 _in_dir = _context.ReadValue<Vector2>();

		if (_in_dir.magnitude > 0)
		{
            if (m_arrow)
            {
                // 表示する
                Color _col = m_arrow.color;
                _col.a = 1.0f;
                m_arrow.color = _col;
            }
			// 回転する
			transform.LookAt(transform.position + m_parent.m_ModelForward);
		}
		else
		{
            if (m_arrow)
            {
                // 非表示にする
                Color _col = m_arrow.color;
                _col.a = 0.0f;
                m_arrow.color = _col;
            }
		}
	}
}
