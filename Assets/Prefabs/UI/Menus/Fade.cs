using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Fade : MonoBehaviour
{
    [SerializeField]
    private Image m_FadeImage;
    [SerializeField, Range(0.1f, 5.0f)]
    private float FadeDuration;
    [SerializeField, Range(0.1f, 5.0f)]
    private float BlackScreenDuration;

    // Start is called before the first frame update
    void Start()
    {
        m_FadeImage.color = new Color(0, 0, 0, 0);

        Fader();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void Fader()
    {
        StartCoroutine(FadeOut());
    }

    IEnumerator FadeOut()
    {
        for (float i = 0; i <= 1; i += (Time.deltaTime / FadeDuration))
        {
            m_FadeImage.color = new Color(0, 0, 0, i);
            yield return null;
        }
        yield return new WaitForSecondsRealtime(BlackScreenDuration);
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        for (float i = 1; i >= 0; i -= (Time.deltaTime / FadeDuration))
        {
            m_FadeImage.color = new Color(0, 0, 0, i);
            yield return null;
        }

        yield break;
    }

}
