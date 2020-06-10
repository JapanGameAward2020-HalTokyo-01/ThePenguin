/// <summary>
/// @file   GameOverUIGame.cs
/// @brief	ゲームオーバー時の演出
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class GameOverUIGame : MonoBehaviour
{
    [SerializeField]
    private Image m_Timeup;
    [SerializeField]
    private Image m_GenericFailure;
    [SerializeField]
    private float m_FadeTime;

    // Start is called before the first frame update
    void Start()
    {
        m_Timeup.CrossFadeAlpha(0, 0, true);
        m_GenericFailure.CrossFadeAlpha(0, 0, true);
    }

    public void ShowGameOver(bool istime)
    {
        StartCoroutine(Gameover(istime));
    }

    IEnumerator Gameover(bool istime)
    {
        if (istime)
        {
            m_Timeup.CrossFadeAlpha(1, m_FadeTime, true);
        }
        else
        {
            m_GenericFailure.CrossFadeAlpha(1, m_FadeTime, true);
        }
        yield return new WaitForSecondsRealtime(1.8f);

        if (istime)
        {
            m_Timeup.CrossFadeAlpha(0, m_FadeTime, true);
        }
        else
        {
            m_GenericFailure.CrossFadeAlpha(0, m_FadeTime, true);
        }

        yield break;
    }
}
