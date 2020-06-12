﻿/// <summary>
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
    //! ライト
    [SerializeField]
    private Light m_DirLight;
    //! 親ペンギン
    [SerializeField]
    private ParentPenguin m_ParentPenguin;
    [SerializeField]
    private ChargeGaugeMgr m_ChargeGaugeMgr;

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

    // 開始直後のカメラ演出
    private StartCameraSystem m_StartSystem;

    [SerializeField]
    private PenguinManager m_PenguinManager;

    [SerializeField, Tooltip("現在のレベルインデックス")]
    private StageMetaParam m_level_param;

    [SerializeField, Tooltip("環境音代わりのペンギンボイス")]
    private SE_Voice m_pen_voices = null;

    //! 回転用
    private bool m_rotL;
    private bool m_rotR;
    private bool m_LAccel;
    private bool m_RAccel;
    private bool m_LDecel;
    private bool m_RDecel;
    private bool m_RestartAccel = false;

	public void Awake()
	{
        if(!m_StartSystem)
            m_StartSystem = FindObjectOfType<StartCameraSystem>();

        if (!m_PenguinManager)
            m_PenguinManager = FindObjectOfType<PenguinManager>();

        // 前シーンからBGMを引っ張らないように
        BGMManager.Instance.Play(BGMs.Index.None);
    }

    // Start is called before the first frame update
    void Start()
    {
        if(!m_DirLight)
        {
            m_DirLight = Light.GetLights(LightType.Directional, 0)[0];
        }

        //! ボタンのEventDelegate
        m_Input.actions["Pause"].performed += PauseMenu;
        m_Input.actions["Pause"].performed += Skip;
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

    private void OnDisable()
    {
        //! ボタンのEventDelegate
        m_Input.actions["Pause"].performed -= PauseMenu;
        m_Input.actions["Pause"].performed -= Skip;
        m_Input.actions["Rotate L"].performed -= RotateL;
        m_Input.actions["Rotate L"].canceled -= StopL;
        m_Input.actions["Rotate R"].performed -= RotateR;
        m_Input.actions["Rotate R"].canceled -= StopR;
    }
    void FixedUpdate()
    {
        m_DirLight.transform.rotation = m_Camera.transform.Find("PlayerCamera").transform.rotation;

        // クリア時
        if (m_ParentPenguin.manager.m_settings.m_clear_flag)
        {
            m_ChargeGaugeMgr.HideGauge();
            m_ChargeGaugeMgr.UnRegisterInputEvent();
            return;
        }

        // 開始アニメーション待ち
        if (m_StartSystem.GetNowPlaying())
        {
            return;
        }
        else
        {
            // BGM再生
            if(!BGMManager.Instance.IsPlay)
			{
                if (m_level_param.IsBossStage)
                    BGMManager.Instance.Play(BGMs.Index.BossBattle);
                else
                    BGMManager.Instance.Play(BGMs.Index.GamePlay, m_level_param.m_current_area_index);
			}
            if (!m_pen_voices.m_is_play)
                m_pen_voices.m_is_play = true;

            m_ChargeGaugeMgr.RegisterInputEvent();
        }

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
            if (!m_LAccel | !this)
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
            if (!m_RAccel | !this)
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

    IEnumerator SkipEnshutsu()
    {
        Fade _fade = FindObjectOfType<Fade>();

        //フェードアウト待機
        _fade.Fader(true);

        while (!_fade.CheckFadedout())
        {
            yield return null;
        }

        //yield return new WaitForSecondsRealtime(_fade.BlackScreenDuration);
    }

    void PauseMenu(InputAction.CallbackContext ctx)
    {
        if (!this)
            return;

        // 開始アニメーション待ち
        if (m_StartSystem.GetNowPlaying() || m_ParentPenguin.manager.m_settings.m_clear_flag || m_ParentPenguin.manager.m_settings.m_failure_flag)
            return;

        var _cv = FindObjectOfType<ControllerVibration>();
        if(_cv)
            _cv.Pause(false);

        Debug.Log("GameUI: message received");
        if (!m_Pause.gameObject.activeSelf)
        {
            if (_cv)
                _cv.Pause(true);

            Debug.Log("Opening PauseMenu...");
            m_Pause.gameObject.SetActive(true);
        }
    }

    /// <summary>
    /// @brief      演出スキップ処理
    /// </summary>
    void Skip(InputAction.CallbackContext ctx)
    {
        //！プレイ中
        if (!m_StartSystem.GetNowPlaying() && !m_ParentPenguin.manager.m_settings.m_clear_flag)
        {
            return;
        }
        //！スタート演出中
        else if(m_StartSystem.GetNowPlaying())
        {
            m_StartSystem.StopPlaying();
            StartCoroutine(SkipEnshutsu());
        }
        //！ゴール演出中
        else if(m_ParentPenguin.ClearAnimation)//m_ParentPenguin.manager.m_settings.m_clear_flag)
        {
            //m_PenguinManager.StopGoalPlaying();

            m_PenguinManager.SkipGoalAnimation();
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
            if (!m_LDecel | !this)
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
            if (!m_RDecel | !this)
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
