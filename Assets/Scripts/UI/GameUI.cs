/// <summary>
/// @file   GameUI.cs
/// @brief	仮のGameUI制御
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
public class GameUI : MonoBehaviour
{
    //! PauseMenu
    [SerializeField]
    private PauseMenu m_Pause;
    //! 入力
    [SerializeField]
    private PlayerInput m_Input;
    //! カメラ
    [SerializeField]
    private MainCamera m_Camera;
    //! 回転用
    private bool m_rotL;
    private bool m_rotR;

    // Start is called before the first frame update
    void Start()
    {
        m_Input.actions["Pause"].performed += PauseMenu;
        m_Input.actions["Rotate L"].performed += RotateL;
        m_Input.actions["Rotate L"].canceled += StopL;
        m_Input.actions["Rotate R"].performed += RotateR;
        m_Input.actions["Rotate R"].canceled += StopR;

        m_rotL = false;
        m_rotR = false;
    }

    void FixedUpdate()
    {
        if (m_rotL)
        {
            m_Camera.RotateCamera(true, 3);
        }
        if (m_rotR)
        {
            m_Camera.RotateCamera(false, 3);
        }
    }

    void PauseMenu(InputAction.CallbackContext ctx)
    {
        Debug.Log("GameUI: message received");
        if (!m_Pause.gameObject.activeSelf)
        {
            Debug.Log("Opening PauseMenu...");
            m_Pause.gameObject.SetActive(true);
        }
    }

    void RotateL(InputAction.CallbackContext ctx)
    {
        m_rotL = true;
    }
    void RotateR(InputAction.CallbackContext ctx)
    {
        m_rotR = true;
    }
    void StopL(InputAction.CallbackContext ctx)
    {
        m_rotL = false;
    }
    void StopR(InputAction.CallbackContext ctx)
    {
        m_rotR = false;
    }

}
