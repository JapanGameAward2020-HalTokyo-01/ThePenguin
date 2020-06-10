using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class UIButton : MonoBehaviour, IDeselectHandler, ISelectHandler
{
    [SerializeField]
    private Image m_Normal;
    [SerializeField]
    private Image m_Selected;

    private Coroutine m_Instance;
    private float fadetime = 0.2f;
    private float waittime = 0.8f;
    public void OnEnable()
    {
        m_Selected.CrossFadeAlpha(0, 0, true);
        m_Normal.CrossFadeAlpha(1, 0, true);
    }

    void ISelectHandler.OnSelect(BaseEventData eventData)
    {
        //Debug.Log("Button Deselected");
        m_Selected.CrossFadeAlpha(1, 0, true);
        m_Normal.CrossFadeAlpha(0, 0, true);
        m_Instance = StartCoroutine(CrossFade(false));
    }

    void IDeselectHandler.OnDeselect(BaseEventData eventData)
    {
        //Debug.Log("Button Deselected");
        StopCoroutine(m_Instance);
        m_Selected.CrossFadeAlpha(0, 0, true);
        m_Normal.CrossFadeAlpha(1, 0, true);
    }

    IEnumerator CrossFade(bool fadein)
    {
        float fadeSel   = (fadein ? 0.5f : 1.0f);
        float fadeUnSel = (fadein ? 1.0f : 0.0f);
        //Debug.Log("CrossfadeIN: " + (fadein ? "true" : "false"));

        float totaltime = fadetime;
        if(fadein)
        {
            totaltime += waittime; 
        }

        m_Selected.CrossFadeAlpha(fadeSel, totaltime, true);
        m_Normal.CrossFadeAlpha(fadeUnSel, totaltime, true);

        yield return new WaitForSecondsRealtime(totaltime);

        yield return m_Instance = StartCoroutine(CrossFade(!fadein));
    }

}
