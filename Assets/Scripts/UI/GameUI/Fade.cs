﻿/// <summary>
/// @file   Fade.cs
/// @brief	画面遷移のFade制御
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Fade : MonoBehaviour
{
    [SerializeField]
    private Image m_FadeImage;
    [SerializeField]
    private Image m_FadeIcon;
    [SerializeField, Range(0.1f, 5.0f)]
    private float m_FadeDuration;
    [SerializeField, Range(0.1f, 5.0f)]
    private float m_BlackScreenDuration;

    private bool m_DoneFadeout;

    public float BlackScreenDuration { get => m_BlackScreenDuration; set => m_BlackScreenDuration = value; }

    // Start is called before the first frame update
    void Start()
    {
        m_FadeImage.color = new Color(0, 0, 0, 0);
        m_FadeIcon.color = new Color(255, 255, 255, 0);

        m_DoneFadeout = false;
        //Fader();
    }

    // Update is called once per frame
    void Update()
    {

    }

    /// <summary>
    /// @brief      FadeIn/Out処理Coroutine
    /// </summary>
    public void Fader()
    {
        StartCoroutine(FadeOut());
    }

    /// <summary>
    /// @brief      FadeOut処理が完了しているか返す
    /// </summary>
    public bool CheckFadedout()
    {
        return m_DoneFadeout;
    }

    /// <summary>
    /// @brief      FadeOut処理Coroutine
    /// </summary>
    IEnumerator FadeOut()
    {
        for (float i = 0; i <= 1; i += (Time.deltaTime / m_FadeDuration))
        {
            m_FadeImage.color = new Color(0, 0, 0, i);
            m_FadeIcon.color = new Color(255, 255, 255, i);
            if (!this)
            {
                yield break;
            }
            yield return null;
        }
        m_DoneFadeout = true;
        yield return new WaitForSecondsRealtime(m_BlackScreenDuration);
        StartCoroutine(FadeIn());
    }

    /// <summary>
    /// @brief      FadeIn処理Coroutine
    /// </summary>
    IEnumerator FadeIn()
    {
        for (float i = 1; i >= 0; i -= (Time.deltaTime / m_FadeDuration))
        {
            m_FadeImage.color = new Color(0, 0, 0, i);
            m_FadeIcon.color = new Color(255, 255, 255, i);
            if(!this)
            {
                yield break;
            }
            yield return null;
        }

        yield break;
    }

}
