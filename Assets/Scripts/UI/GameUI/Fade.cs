/// <summary>
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
        m_FadeImage.CrossFadeAlpha(0, 0, true);
        m_FadeIcon.CrossFadeAlpha(0, 0, true);

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
    public void Fader(bool fadein)
    {
        StartCoroutine(FadeOut(fadein));
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
    IEnumerator FadeOut(bool fadein)
    { 
        m_FadeImage.CrossFadeAlpha(1, m_FadeDuration, true);
        m_FadeIcon.CrossFadeAlpha(1, m_FadeDuration, true);
        yield return new WaitForSecondsRealtime(m_FadeDuration);

        if (!this)
        {
            yield break;
        }

        m_DoneFadeout = true;

        yield return new WaitForSecondsRealtime(m_BlackScreenDuration);

        if (fadein)
        {
            StartCoroutine(FadeIn());
        }
        else
        {
            yield return new WaitForEndOfFrame();
            m_DoneFadeout = false;
        }
    }

    /// <summary>
    /// @brief      FadeIn処理Coroutine
    /// </summary>
    IEnumerator FadeIn()
    {
        m_DoneFadeout = false;
        m_FadeImage.CrossFadeAlpha(0, m_FadeDuration, true);
        m_FadeIcon.CrossFadeAlpha(0, m_FadeDuration, true);
        yield return new WaitForSecondsRealtime(m_FadeDuration);

        if (!this)
        {
            yield break;
        }

        yield break;
    }

}
