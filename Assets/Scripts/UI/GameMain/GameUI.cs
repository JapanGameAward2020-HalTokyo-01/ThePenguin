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
    //! 親ペンギン
    [SerializeField]
    private ParentPenguin m_ParentPenguin;

    //! 最大回転速度
    [SerializeField, Space(20)]
    private float m_RotateMax;
    //! 最大回転までの時間
    [SerializeField]
    private float m_DurationToMaxSpeed;    



    //! 回転用
    private bool m_rotL;
    private bool m_rotR;
    [SerializeField, NonEditableField]
    private float m_rotLspeed;
    [SerializeField, NonEditableField]
    private float m_rotRspeed;
    private bool m_LAccel;
    private bool m_RAccel;

    // Start is called before the first frame update
    void Start()
    {
        m_Input.actions["Pause"].performed += PauseMenu;
        m_Input.actions["Rotate L"].performed += RotateL;
        m_Input.actions["Rotate L"].canceled += StopL;
        m_Input.actions["Rotate R"].performed += RotateR;
        m_Input.actions["Rotate R"].canceled += StopR;


        m_Input.actions["Y Button"].performed += ResetFocus;
        m_Input.actions["Y Button"].canceled += StopFocus;

        m_rotL = false;
        m_rotR = false;
        m_LAccel = false;
        m_RAccel = false;
    }

    bool temp = true;
    void FixedUpdate()
    {
        if (m_rotL && m_rotR)
        {
            m_Camera.LookToVec();
            if (temp)
            {
                temp = true;
                ResetSpeed();
            }
        }
        else if (!m_ParentPenguin.IsMoving())
        {
            temp = false;
            if (m_rotL)
            {
                m_Camera.RotateCamera(true, m_rotLspeed);
            }
            if (m_rotR)
            {
                m_Camera.RotateCamera(false, m_rotRspeed);
            }
        }
    }

    IEnumerator AcceleratorL()
    {
        yield return new WaitForEndOfFrame();
        m_LAccel = true;
        for (float i = 0; i <= 1; i += (Time.deltaTime / m_DurationToMaxSpeed))
        {
            if(!m_LAccel)
            {
                m_rotLspeed = 0;
                yield break;
            }
            m_rotLspeed = i * m_RotateMax;
            yield return null;
        }
        yield break;
    }

    IEnumerator AcceleratorR()
    {
        yield return new WaitForEndOfFrame();
        m_RAccel = true;
        for (float i = 0; i <= 1; i += (Time.deltaTime / m_DurationToMaxSpeed))
        {
            if (!m_RAccel)
            {
                m_rotRspeed = 0;
                yield break;
            }
            m_rotRspeed = i * m_RotateMax;
            yield return null;
        }
        yield break;
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
        Debug.Log("Rotating Left...");
        m_rotL = true;
        StartCoroutine(AcceleratorL());
    }
    void RotateR(InputAction.CallbackContext ctx)
    {
        Debug.Log("Rotating Right...");
        m_rotR = true;
        StartCoroutine(AcceleratorR());
    }
    void StopL(InputAction.CallbackContext ctx)
    {
        Debug.Log("Stop Rotating Left...");
        m_rotL = false;
        m_LAccel = false;
    }
    void StopR(InputAction.CallbackContext ctx)
    {
        Debug.Log("Stop Rotating Right...");
        m_rotR = false;
        m_RAccel = false;
    }

    void ResetFocus(InputAction.CallbackContext ctx)
    {
        Debug.Log("Setting Focus to Player...");
        m_Camera.LookToVec();
    }

    void StopFocus(InputAction.CallbackContext ctx)
    {
        ResetSpeed();
    }

    private void ResetSpeed()
    {
        if(m_rotL)
        {
            m_LAccel = false;
            StartCoroutine(AcceleratorL());
        }
        if (m_rotR)
        {
            m_RAccel = false;
            StartCoroutine(AcceleratorR());
        }
    }
}
