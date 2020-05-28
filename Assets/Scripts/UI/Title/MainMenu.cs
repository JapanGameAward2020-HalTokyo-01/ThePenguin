using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    [SerializeField]
    private UI_Component_Button m_GameStart;
    [SerializeField]
    private UI_Component_Button m_StageSelect;
    [SerializeField]
    private UI_Component_Button m_Option;
    [SerializeField]
    private UI_Component_Button m_Finish;
    [SerializeField]
    private UI_Component_Button m_Fade;
    [SerializeField]
    private Animator m_OpenAnimator;
    [SerializeField]
    private Animator m_IconAnimator;

    private bool m_IsInputEnable = false;

    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    private int m_Select = 0;
    private int m_SelectPrev = -1;

    enum MenuState
    {
        LOGO = 0,
        MAIN
    }
    MenuState m_State;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(SceneStart());
        m_State = MenuState.LOGO;
        m_OpenAnimator.enabled = false;
        //m_IconAnimator.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        InputUpdate();
        if (!m_IsInputEnable)
            return;

        //ロゴ画面処理
        if(m_State== MenuState.LOGO&& GetAnyKeyDown())
        {
            m_State = MenuState.MAIN;
            m_OpenAnimator.enabled = true;
        }

        //メインメニュー処理
        if (m_State == MenuState.MAIN)
        {
            MainMenuUpdate();
        }
    }

    /// <summary>
    /// @brief      メインメニュー処理
    /// </summary>
    /// 
    void MainMenuUpdate()
    {
        //アニメーション完了判断
        AnimatorStateInfo info = m_OpenAnimator.GetCurrentAnimatorStateInfo(0);
        if (info.normalizedTime < 1.0f)
            return;

        m_SelectPrev = m_Select;
        if (!GetAButton() && !GetBButton())
        {
            

            //ABボタンが押されてない
            if (GetUpUp())
            {
                m_Select -= 1;
            }
            if (GetDownUp())
            {
                m_Select += 1;
            }
            m_Select = (m_Select + 4) % 4;

            m_IconAnimator.SetInteger("CurrentButton", m_SelectPrev);
            m_IconAnimator.SetInteger("NextButton", m_Select);

            if (m_Select == 0)
            {
                m_GameStart.SetActive(true);
                m_StageSelect.SetActive(false);
                m_Option.SetActive(false);
                m_Finish.SetActive(false);
            }
            else if (m_Select == 1)
            {
                m_GameStart.SetActive(false);
                m_StageSelect.SetActive(true);
                m_Option.SetActive(false);
                m_Finish.SetActive(false);
            }
            else if (m_Select == 2)
            {
                m_GameStart.SetActive(false);
                m_StageSelect.SetActive(false);
                m_Option.SetActive(true);
                m_Finish.SetActive(false);
            }
            else if (m_Select == 3)
            {
                m_GameStart.SetActive(false);
                m_StageSelect.SetActive(false);
                m_Option.SetActive(false);
                m_Finish.SetActive(true);
            }

            if (GetAButtonUp())
            {
                //Aボタン
                if (m_Select == 0)
                {
                    Debug.Log("Game Start");
                }
                else if (m_Select == 1)
                {
                    Debug.Log("Stage Select");
                }
                else if (m_Select == 2)
                {
                    Debug.Log("Option");
                }
                else if (m_Select == 2)
                {
                    Debug.Log("Finish");
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
        if (!m_IsInputEnable)
        {
            return false;
        }
        return Input.GetKeyDown("joystick button 0") || Input.GetKeyDown(KeyCode.Space);
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
        if (!m_IsInputEnable)
        {
            return false;
        }
        return (m_Current_V == -1 && m_Past_V != m_Current_V) || Input.GetKeyDown(KeyCode.UpArrow);
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

    private bool GetAnyKeyDown()
    {
        if (!m_IsInputEnable)
        {
            return false;
        }
        return (Input.anyKeyDown);
    }
}
