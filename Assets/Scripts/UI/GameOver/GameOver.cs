using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour
{
    [SerializeField]
    private UI_Component_Button m_GameOver;
    [SerializeField]
    private UI_Component_Button m_MenuBack;
    [SerializeField]
    private UI_Component_Button m_Retry;
    [SerializeField]
    private UI_Component_Button m_StageSelect;
    [SerializeField]
    private UI_Component_Button m_Title;
    [SerializeField]
    private UI_Component_Button m_A_Button;
    [SerializeField]
    private UI_Component_Button m_B_Button;
    [SerializeField]
    private UI_Component_Button m_Fade;
    [SerializeField]
    private SceneObject m_StageSelectScene = null;
    [SerializeField]
    private SceneObject m_TitleScene = null;

    private bool m_IsInputEnable = false;

    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    private int m_Select = 0;

    //他のシーンから引き継ぐ情報
    private SceneObject m_PastScene;

    // Start is called before the first frame update
    void Start()
    {
        //他のシーンから情報を引き継ぐ
        m_PastScene = SceneData.GetCurrentScene();


        ////////////////////////////

        StartCoroutine(SceneStart());
    }

    // Update is called once per frame
    void Update()
    {
        InputUpdate();

        if(m_IsInputEnable)
        {
            m_A_Button.SetActive(GetAButton());
            m_B_Button.SetActive(GetBButton());

            if (!GetAButton()&&!GetBButton())
            {
                //ABボタンが押されてない
                if(GetUpUp())
                {
                    m_Select -= 1;
                }
                if(GetDownUp())
                {
                    m_Select += 1;
                }
                m_Select = (m_Select + 3) % 3;

                if(m_Select==0)
                {
                    m_Retry.SetActive(true);
                    m_StageSelect.SetActive(false);
                    m_Title.SetActive(false);
                }
                else if(m_Select==1)
                {
                    m_Retry.SetActive(false);
                    m_StageSelect.SetActive(true);
                    m_Title.SetActive(false);
                }
                else if (m_Select == 2)
                {
                    m_Retry.SetActive(false);
                    m_StageSelect.SetActive(false);
                    m_Title.SetActive(true);
                }

                if(GetAButtonUp())
                {
                    //Aボタン
                    if(m_Select==0)
                    {
                        Debug.Log("Retry");
                        StartCoroutine(SceneEnd(m_PastScene));
                    }
                    else if(m_Select==1)
                    {
                        Debug.Log("Stage Select");
                        StartCoroutine(SceneEnd(m_StageSelectScene));
                    }
                    else if(m_Select==2)
                    {
                        Debug.Log("Title");
                        StartCoroutine(SceneEnd(m_TitleScene));
                    }
                }
                if(GetBButtonUp())
                {
                    //Bボタン
                    Debug.Log("Retry");
                    StartCoroutine(SceneEnd(m_PastScene));
                }
            }
        }
    }

    //汎用的Fade
    private IEnumerator SceneStart()
    {
        yield return new WaitForSecondsRealtime(1.0f);

        m_Fade.SetActive(false);

        yield return new WaitForSecondsRealtime(1.0f);

        m_IsInputEnable = true;
    }
    private IEnumerator SceneEnd(SceneObject next)
    {
        m_IsInputEnable = false;
        m_Fade.SetActive(true);

        yield return new WaitForSecondsRealtime(1.0f);

        if(next　== null)
        {
            Debug.LogError("次のシーンが設定されてない");
            yield break;
        }

        SceneManager.LoadScene(next);
    }

    //汎用入力関数
    private bool GetAButtonDown()
    {
        if(!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKeyDown("joystick button 0")||Input.GetKeyDown(KeyCode.Space);
    }
    private bool GetAButtonUp()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKeyUp("joystick button 0") || Input.GetKeyUp(KeyCode.Space);
    }
    private bool GetAButton()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKey("joystick button 0") || Input.GetKey(KeyCode.Space);
    }
    private bool GetBButtonDown()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKeyDown("joystick button 1") || Input.GetKeyDown(KeyCode.Escape);
    }
    private bool GetBButtonUp()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKeyUp("joystick button 1") || Input.GetKeyUp(KeyCode.Escape);
    }
    private bool GetBButton()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKey("joystick button 1") || Input.GetKey(KeyCode.Escape);
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
        if(!m_IsInputEnable)
        {
            return false;
        }
        return (m_Current_V == -1 && m_Past_V != m_Current_V)||Input.GetKeyDown(KeyCode.UpArrow);
    }
    private bool GetUpUp()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return (m_Past_V == -1 && m_Past_V != m_Current_V) || Input.GetKeyUp(KeyCode.UpArrow);
    }
    private bool GetDownDown()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return (m_Current_V == 1 && m_Past_V != m_Current_V) || Input.GetKeyDown(KeyCode.DownArrow);
    }
    private bool GetDownUp()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return (m_Past_V == 1 && m_Past_V != m_Current_V) || Input.GetKeyUp(KeyCode.DownArrow);
    }
}
