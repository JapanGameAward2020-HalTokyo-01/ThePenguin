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
    //! 減速回転時間
    [SerializeField]
    private float m_DecelerateDuration;
    [SerializeField, NonEditableField]
    private float m_rotLspeed;
    [SerializeField, NonEditableField]
    private float m_rotRspeed;

    //! 回転用
    private bool m_rotL;
    private bool m_rotR;
    private bool m_LAccel;
    private bool m_RAccel;
    private bool m_LDecel;
    private bool m_RDecel;
    private bool m_RestartAccel = false;

    // Start is called before the first frame update
    void Start()
    {
        //! ボタンのEventDelegate
        m_Input.actions["Pause"].performed += PauseMenu;
        m_Input.actions["Rotate L"].performed += RotateL;
        m_Input.actions["Rotate L"].canceled += StopL;
        m_Input.actions["Rotate R"].performed += RotateR;
        m_Input.actions["Rotate R"].canceled += StopR;

        //!初期化処理
        m_rotL = false;
        m_rotR = false;
        m_LAccel = false;
        m_RAccel = false;
        m_LDecel = false;
        m_RDecel = false;
    }

    void FixedUpdate()
    {
        //! ペンギンの向いている方向へカメラをセット
        if (m_rotL && m_rotR && !m_LDecel && !m_RDecel)
        {
            m_Camera.LookToVec();
            m_RestartAccel = true;
        }
        //! 動いてなければカメラを回転
        else if (!m_ParentPenguin.IsMoving())
        {
            //! 回転速度リセット
            if(m_RestartAccel)
            {
                m_RestartAccel = false;
                ResetSpeed();
            }
            //! 反時計回り回転
            if (m_rotL)
            {
                m_Camera.RotateCamera(true, m_rotLspeed);
            }
            //! 時計回り回転
            if (m_rotR)
            {
                m_Camera.RotateCamera(false, m_rotRspeed);
            }
        }
    }

    /// <summary>
    /// @brief      R加速処理Coroutine
    /// </summary>
    IEnumerator AcceleratorL()
    {
        yield return new WaitForEndOfFrame();
        m_LAccel = true;
        for (float i = 0; i <= 1; )
        {
            Debug.Log("Accel L");
            if (!m_LAccel)
            {
                yield break;
            }
            i += (Time.deltaTime / m_DurationToMaxSpeed);
            m_rotLspeed = i * m_RotateMax;
            yield return null;
        }
        m_rotLspeed = m_RotateMax;
        yield break;
    }
    /// <summary>
    /// @brief      L加速処理Coroutine
    /// </summary>
    IEnumerator AcceleratorR()
    {
        yield return new WaitForEndOfFrame();
        m_RAccel = true;
        m_RDecel = false;
        for (float i = 0; i <= 1; )
        {
            Debug.Log("Accel R");
            if (!m_RAccel)
            {
                yield break;
            }
            i += (Time.deltaTime / m_DurationToMaxSpeed);
            m_rotRspeed = i * m_RotateMax;
            yield return null;
        }
        m_rotRspeed = m_RotateMax;
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

    /// <summary>
    /// @brief      L開始処理Event
    /// </summary>
    void RotateL(InputAction.CallbackContext ctx)
    {
        Debug.Log("Rotating Left...");
        m_rotL = true;
        m_rotLspeed = 0;
        StartCoroutine(AcceleratorL());
    }
    /// <summary>
    /// @brief      R開始処理Event
    /// </summary>
    void RotateR(InputAction.CallbackContext ctx)
    {
        Debug.Log("Rotating Right...");
        m_rotR = true;
        m_rotRspeed = 0;
        StartCoroutine(AcceleratorR());
    }
    /// <summary>
    /// @brief      L解除処理Event
    /// </summary>
    void StopL(InputAction.CallbackContext ctx)
    {
        Debug.Log("Stop Rotating Left...");
        StartCoroutine(DecceleratorL());
    }

    /// <summary>
    /// @brief      R解除処理Event
    /// </summary>
    void StopR(InputAction.CallbackContext ctx)
    {
        Debug.Log("Stop Rotating Right...");
        StartCoroutine(DecceleratorR());
    }

    /// <summary>
    /// @brief      回転初期化処理
    /// </summary>
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

    /// <summary>
    /// @brief      L減速処理Coroutine
    /// </summary>
    IEnumerator DecceleratorL()
    {
        yield return new WaitForEndOfFrame();
        m_LAccel = false;
        m_LDecel = true;
        float i = m_rotLspeed / m_RotateMax;
        for (; i >= 0; )
        {
            Debug.Log("Decel L");
            if (!m_LDecel)
            {
                yield break;
            }
            i -= (Time.deltaTime / m_DecelerateDuration);
            m_rotLspeed = i * m_RotateMax;
            yield return null;
        }
        m_rotLspeed = 0;
        m_rotL = false;
        yield break;
    }
    /// <summary>
    /// @brief      R減速処理Coroutine
    /// </summary>
    IEnumerator DecceleratorR()
    {
        yield return new WaitForEndOfFrame();
        m_RAccel = false;
        m_RDecel = true;
        float i = m_rotRspeed / m_RotateMax;
        for (; i >= 0; )
        {
            Debug.Log("Decel R");
            if (!m_RDecel)
            {
                yield break;
            }
            i -= (Time.deltaTime / m_DecelerateDuration);
            m_rotRspeed = i * m_RotateMax;
            yield return null;
        }
        m_rotRspeed = 0;
        m_rotR = false;
        yield break;
    }
}
