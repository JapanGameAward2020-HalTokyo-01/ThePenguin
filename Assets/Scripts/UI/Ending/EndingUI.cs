using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;

public class EndingUI : MonoBehaviour
{
    [Header("UI Objects")]
    [SerializeField]
    private UI_Component_Button m_Fade;

    [SerializeField, Tooltip("シーンリスト")]
    private StageMetaParam m_SceneList;

    private bool m_FirstFrame = true;
    private bool m_IsInputEnable = false;
    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        InputUpdate();

        if(m_FirstFrame)
        {
            StartCoroutine(SceneStart());
            m_FirstFrame = false;
        }

        if(m_IsInputEnable)
        {
            if(GetAButtonDown())
            {
                SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Confirm);
                StartCoroutine(SceneEnd(m_SceneList.m_Title));
            }
        }
    }

    IEnumerator SceneStart()
    {
        yield return new WaitForSecondsRealtime(1.0f);

        m_Fade.SetEnable(false);

        yield return new WaitForSecondsRealtime(0.5f);
        m_IsInputEnable = true;
    }
    private IEnumerator SceneEnd(SceneObject next)
    {
        m_IsInputEnable = false;
        m_Fade.SetEnable(true);

        yield return new WaitForSecondsRealtime(1.0f);

        if (next == null)
        {
            Debug.LogError("次のシーンが設定されてない");
            yield break;
        }

        SceneManager.LoadScene(next);
    }
    //汎用入力関数
    private bool GetAButtonDown()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKeyDown("joystick button 0") || Input.GetKeyDown(KeyCode.Return);
    }
    private bool GetAButtonUp()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKeyUp("joystick button 0") || Input.GetKeyUp(KeyCode.Return);
    }
    private bool GetAButton()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKey("joystick button 0") || Input.GetKey(KeyCode.Return);
    }
    private bool GetBButtonDown()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKeyDown("joystick button 1") || Input.GetKeyDown(KeyCode.Backspace);
    }
    private bool GetBButtonUp()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKeyUp("joystick button 1") || Input.GetKeyUp(KeyCode.Backspace);
    }
    private bool GetBButton()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return Input.GetKey("joystick button 1") || Input.GetKey(KeyCode.Backspace);
    }

    private void InputUpdate()
    {
        m_Past_H = m_Current_H;
        m_Past_V = m_Current_V;

        m_Current_H = (int)Input.GetAxis("HorizontalDPad") + -1 * (int)Input.GetAxis("Horizontal");
        m_Current_V = (int)Input.GetAxis("VerticalDPad") + -1 * (int)Input.GetAxis("Vertical");
    }
    private bool GetUpDown()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return (m_Current_V == -1 && m_Past_V != m_Current_V) || Input.GetKeyDown(KeyCode.W);
    }
    private bool GetUpUp()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return (m_Past_V == -1 && m_Past_V != m_Current_V) || Input.GetKeyUp(KeyCode.W);
    }
    private bool GetDownDown()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return (m_Current_V == 1 && m_Past_V != m_Current_V) || Input.GetKeyDown(KeyCode.S);
    }
    private bool GetDownUp()
    {
        /*if (!m_IsInputEnable)
        {
            return false;
        }*/
        return (m_Past_V == 1 && m_Past_V != m_Current_V) || Input.GetKeyUp(KeyCode.S);
    }
}
