/**
 * @file    d_Opening.cs
 * @brief   ダミーオープニング
 * @author  谷沢 瑞己
 */
using System.Collections;
using UnityEditor;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

/**
 * @class   d_Opening
 * @brief   キー入力→Levei1-1へ雑遷移
 */
public class d_Opening : MonoBehaviour
{
    [SerializeField]
    private SceneAsset m_next;

    [SerializeField]
    private Image m_fade_image;

    [SerializeField]
    private PlayerInput m_input;

    private void Start()
    {
        StartCoroutine("FadeIn");
        m_input.actions["A Button"].performed += Decide;

    }

    private void Decide(InputAction.CallbackContext _context)
    {
        StartCoroutine("SceneEnd");
    }

    private IEnumerator SceneEnd()
    {
        StartCoroutine("FadeOut");
        yield return new WaitForSecondsRealtime(1.0f);

        SceneManager.LoadScene(m_next.name);
    }

    private IEnumerator FadeIn()
    {
        Color _color = m_fade_image.color;
        yield return new WaitForEndOfFrame();

        while (m_fade_image.color.a > 0)
        {
            _color.a = Mathf.Max(0.0f, _color.a - 0.017f);
            m_fade_image.color = _color;
            yield return null;
        }
    }

    private IEnumerator FadeOut()
    {
        Color _color = m_fade_image.color;
        yield return new WaitForEndOfFrame();

        while (m_fade_image.color.a < 1)
        {
            _color.a = Mathf.Min(1.0f, _color.a + 0.017f);
            m_fade_image.color = _color;
            yield return null;
        }
    }
}
