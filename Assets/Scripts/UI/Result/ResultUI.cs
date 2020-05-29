using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;

public class ResultUI : MonoBehaviour
{
    [SerializeField]
    private UI_Component_Button m_Page1_MenuBack;
    [SerializeField]
    private UI_Component_Button m_Page1_StageClear;
    [SerializeField]
    private UI_Component_Button m_Page1_Count;
    [SerializeField]
    private UI_Component_Button m_Page1_Time;
    [SerializeField]
    private UI_Component_Button m_Page1_Clear;
    [SerializeField]
    private UI_Component_Button m_Page1_Slash;
    [SerializeField]
    private UI_Component_Button m_Page1_Minute;
    [SerializeField]
    private UI_Component_Button m_Page1_Second;
    [SerializeField]
    private UI_Component_Button m_Page1_SmallStar1;
    [SerializeField]
    private UI_Component_Button m_Page1_SmallStar2;
    [SerializeField]
    private UI_Component_Button m_Page1_SmallStar3;
    [SerializeField]
    private UI_Component_Button m_Page1_BigStar1;
    [SerializeField]
    private UI_Component_Button m_Page1_BigStar2;
    [SerializeField]
    private UI_Component_Button m_Page1_BigStar3;
    [SerializeField]
    private UI_Component_Button m_Page1_A_Button;
    [SerializeField]
    private UI_Component_Counter m_Page1_ClearCounter;
    [SerializeField]
    private UI_Component_Counter m_Page1_StarCounter;
    [SerializeField]
    private UI_Component_Counter m_Page1_MinuteCounter;
    [SerializeField]
    private UI_Component_Counter m_Page1_SecondCounter;
    [SerializeField]
    private UI_Component_Counter m_Page1_MiliSecondCounter;
    [SerializeField]
    private UI_Component_Button m_Page2_MenuBack;
    [SerializeField]
    private UI_Component_Button m_Page2_Continue;
    [SerializeField]
    private UI_Component_Button m_Page2_StageSelect;
    [SerializeField]
    private UI_Component_Button m_Page2_Retry;
    [SerializeField]
    private UI_Component_Button m_Page2_A_Button;
    [SerializeField]
    private UI_Component_Button m_Page2_B_Button;
    [SerializeField]
    private UI_Component_Button m_Fade;

    [SerializeField]
    private SceneObject m_StageSelectScene = null;
    

    private bool m_IsInputEnable = false;

    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    private int m_Select = 0;
    private bool m_Page1_Flag = true;

    //他のシーンから引き継ぐ情報
    private SceneObject m_PastScene;
    private SceneObject m_NextScene;
    //星を獲得する必要なペンギン数とクリア情報
    private int m_StarCount;
    private float m_StarTime;
    //クリア時実際のペンギン数と時間
    private int m_ClearCount;
    private float m_ClearTime;

    //星獲得フラグ
    private bool m_Flag_Count = false;
    private bool m_Flag_Time = false;

    // Start is called before the first frame update
    void Start()
    {
        //他のシーンから情報を引き継ぐ
        m_PastScene = SceneData.GetCurrentScene();
        m_NextScene = SceneData.GetNextScene();
        m_StarCount = (int)SceneData.GetStarClearCount();
        m_StarTime = SceneData.GetStarClearTime();
        m_ClearCount = (int)SceneData.m_Static_ClearCount;
        m_ClearTime = SceneData.m_Static_ClearTime;


        ////////////////////////////////////////////////
        m_Flag_Count = (m_ClearCount >= m_StarCount);
        m_Flag_Time = (m_ClearTime <= m_StarTime);
        m_Page1_StarCounter.SetCount(m_StarCount);
        m_Page1_StarCounter.SetCurrentCount(m_StarCount);

        StartCoroutine(SceneStart());
    }

    // Update is called once per frame
    void Update()
    {
        InputUpdate();

        if (m_IsInputEnable)
        {
            if (m_Page1_Flag)
            {
                m_Page1_A_Button.SetActive(GetAButton());
                if (GetAButtonUp())
                {
                    StartCoroutine(SwitchToPage2());
                }
            }
            else
            {
                //Page2処理
                m_Page2_A_Button.SetActive(GetAButton());
                m_Page2_B_Button.SetActive(GetBButton());
                if (!GetAButton() && !GetBButton())
                {
                    if (GetUpUp())
                    {
                        m_Select -= 1;
                    }
                    if (GetDownUp())
                    {
                        m_Select += 1;
                    }
                    m_Select = (m_Select + 3) % 3;

                    if (m_Select == 0)
                    {
                        m_Page2_Continue.SetActive(true);
                        m_Page2_StageSelect.SetActive(false);
                        m_Page2_Retry.SetActive(false);
                    }
                    else if (m_Select == 1)
                    {
                        m_Page2_Continue.SetActive(false);
                        m_Page2_StageSelect.SetActive(true);
                        m_Page2_Retry.SetActive(false);
                    }
                    else if (m_Select == 2)
                    {
                        m_Page2_Continue.SetActive(false);
                        m_Page2_StageSelect.SetActive(false);
                        m_Page2_Retry.SetActive(true);
                    }

                    if(GetAButtonUp())
                    {
                        //選択
                        if (m_Select == 0)
                        {
                            Debug.Log("Next");
                            StartCoroutine(SceneEnd(m_NextScene));
                        }
                        else if (m_Select == 1)
                        {
                            Debug.Log("Stage Select");
                            StartCoroutine(SceneEnd(m_StageSelectScene));
                        }
                        else if (m_Select == 2)
                        {
                            Debug.Log("Retry");
                            StartCoroutine(SceneEnd(m_PastScene));
                        }
                    }

                    if (GetBButtonUp())
                    {
                        //戻る
                        StartCoroutine(SwitchToPage1());
                    }
                }
            }
        }

        
    }

    IEnumerator SceneStart()
    {
        yield return new WaitForSecondsRealtime(1.0f);

        m_Fade.SetActive(false);

        //yield return new WaitForSecondsRealtime(0.5f);

        m_Page1_MenuBack.SetEnable(true);
        m_Page1_MenuBack.SetActive(true);

        yield return new WaitForSecondsRealtime(1.0f);

        m_Page1_StageClear.SetEnable(true);
        m_Page1_StageClear.SetActive(true);
        m_Page1_Count.SetEnable(true);
        m_Page1_Count.SetActive(true);
        m_Page1_Time.SetEnable(true);
        m_Page1_Time.SetActive(true);

        m_Page1_SmallStar1.SetEnable(true);
        m_Page1_SmallStar2.SetEnable(true);
        m_Page1_SmallStar3.SetEnable(true);

        m_Page1_BigStar1.SetEnable(true);
        m_Page1_BigStar2.SetEnable(true);
        m_Page1_BigStar3.SetEnable(true);

        yield return new WaitForSecondsRealtime(1.0f);

        m_Page1_Clear.SetEnable(true);
        m_Page1_Clear.SetActive(true);

        yield return new WaitForSecondsRealtime(0.5f);

        
        m_Page1_SmallStar1.SetActive(true);

        yield return new WaitForSecondsRealtime(0.5f);

        m_Page1_Slash.SetEnable(true);
        m_Page1_Slash.SetActive(true);
        m_Page1_StarCounter.SetEnable(true);
        m_Page1_ClearCounter.SetEnable(true);
        m_Page1_ClearCounter.SetCount(m_ClearCount);

        yield return new WaitForSecondsRealtime(0.5f);

        m_Page1_SmallStar2.SetActive(m_Flag_Count);

        yield return new WaitForSecondsRealtime(0.5f);

        StartCoroutine(SetClearTimeDigit(m_ClearTime));

        yield return new WaitForSecondsRealtime(0.5f);

        m_Page1_SmallStar3.SetActive(m_Flag_Time);

        yield return new WaitForSecondsRealtime(1.0f);

        //大きな星
        m_Page1_BigStar1.SetActive(true);
        yield return new WaitForSecondsRealtime(0.05f);
        m_Page1_BigStar2.SetActive(m_Flag_Count);
        yield return new WaitForSecondsRealtime(0.05f);
        m_Page1_BigStar3.SetActive(m_Flag_Time);
        yield return new WaitForSecondsRealtime(1.0f);

        //次へ
        m_Page1_A_Button.SetEnable(true);

        yield return new WaitForSecondsRealtime(0.5f);

        m_IsInputEnable = true;

        //演出スピード調整
        float new_time = 0.2f;
        m_Page1_MenuBack.SetEnableTime(new_time);
        m_Page1_StageClear.SetEnableTime(new_time);
        m_Page1_Count.SetEnableTime(new_time);
        m_Page1_Time.SetEnableTime(new_time);
        m_Page1_SmallStar1.SetEnableTime(new_time);
        m_Page1_SmallStar2.SetEnableTime(new_time);
        m_Page1_SmallStar3.SetEnableTime(new_time);
        m_Page1_BigStar1.SetEnableTime(new_time);
        m_Page1_BigStar2.SetEnableTime(new_time);
        m_Page1_BigStar3.SetEnableTime(new_time);
        m_Page1_Clear.SetEnableTime(new_time);
        m_Page1_Slash.SetEnableTime(new_time);
        m_Page1_StarCounter.SetEnableTime(new_time);
        m_Page1_ClearCounter.SetEnableTime(new_time);
        m_Page1_MinuteCounter.SetEnableTime(new_time);
        m_Page1_Minute.SetEnableTime(new_time);
        m_Page1_SecondCounter.SetEnableTime(new_time);
        m_Page1_Second.SetEnableTime(new_time);
        m_Page1_MiliSecondCounter.SetEnableTime(new_time);
        m_Page1_A_Button.SetEnableTime(new_time);
        m_Page2_MenuBack.SetEnableTime(new_time);
        m_Page2_Continue.SetEnableTime(new_time);
        m_Page2_StageSelect.SetEnableTime(new_time);
        m_Page2_Retry.SetEnableTime(new_time);
        m_Page2_A_Button.SetEnableTime(new_time);
        m_Page2_B_Button.SetEnableTime(new_time);

        m_Page1_MenuBack.SetCrossTime(new_time);
        m_Page1_StageClear.SetCrossTime(new_time);
        m_Page1_Count.SetCrossTime(new_time);
        m_Page1_Time.SetCrossTime(new_time);
        m_Page1_SmallStar1.SetCrossTime(new_time);
        m_Page1_SmallStar2.SetCrossTime(new_time);
        m_Page1_SmallStar3.SetCrossTime(new_time);
        m_Page1_BigStar1.SetCrossTime(new_time);
        m_Page1_BigStar2.SetCrossTime(new_time);
        m_Page1_BigStar3.SetCrossTime(new_time);
        m_Page1_Clear.SetCrossTime(new_time);
        m_Page1_Slash.SetCrossTime(new_time);
        m_Page1_Minute.SetCrossTime(new_time);
        m_Page1_Second.SetCrossTime(new_time);
        m_Page1_A_Button.SetCrossTime(new_time);
        m_Page2_MenuBack.SetCrossTime(new_time);
        //m_Page2_Continue.SetCrossTime(new_time);
        //m_Page2_StageSelect.SetCrossTime(new_time);
        //m_Page2_Retry.SetCrossTime(new_time);
        m_Page2_A_Button.SetCrossTime(new_time);
        m_Page2_B_Button.SetCrossTime(new_time);
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

    IEnumerator SwitchToPage1()
    {
        m_IsInputEnable = false;
        m_Page1_Flag = true;
        m_Select = 0;

        //Page2を閉じる
        m_Page2_MenuBack.SetEnable(false);
        m_Page2_Continue.SetEnable(false);
        m_Page2_StageSelect.SetEnable(false);
        m_Page2_Retry.SetEnable(false);
        m_Page2_A_Button.SetEnable(false);
        m_Page2_B_Button.SetEnable(false);

        yield return new WaitForSecondsRealtime(0.15f);

        //Page1を開く
        m_Page1_MenuBack.SetEnable(true);
        m_Page1_MenuBack.SetActive(true);
        m_Page1_StageClear.SetEnable(true);
        m_Page1_StageClear.SetActive(true);
        m_Page1_Count.SetEnable(true);
        m_Page1_Count.SetActive(true);
        m_Page1_Time.SetEnable(true);
        m_Page1_Time.SetActive(true);

        m_Page1_SmallStar1.SetEnable(true);
        m_Page1_SmallStar2.SetEnable(true);
        m_Page1_SmallStar3.SetEnable(true);

        m_Page1_BigStar1.SetEnable(true);
        m_Page1_BigStar2.SetEnable(true);
        m_Page1_BigStar3.SetEnable(true);


        m_Page1_Clear.SetEnable(true);
        m_Page1_Clear.SetActive(true);



        m_Page1_SmallStar1.SetActive(true);


        m_Page1_Slash.SetEnable(true);
        m_Page1_Slash.SetActive(true);
        m_Page1_StarCounter.SetEnable(true);
        m_Page1_ClearCounter.SetEnable(true);


        m_Page1_SmallStar2.SetActive(m_Flag_Count);


        m_Page1_MinuteCounter.SetEnable(true);
        m_Page1_Minute.SetEnable(true);
        m_Page1_Minute.SetActive(true);
        m_Page1_SecondCounter.SetEnable(true);
        m_Page1_Second.SetEnable(true);
        m_Page1_Second.SetActive(true);
        m_Page1_MiliSecondCounter.SetEnable(true);


        m_Page1_SmallStar3.SetActive(m_Flag_Time);


        //大きな星
        m_Page1_BigStar1.SetActive(true);
        m_Page1_BigStar2.SetActive(m_Flag_Count);
        m_Page1_BigStar3.SetActive(m_Flag_Time);

        yield return new WaitForSecondsRealtime(0.5f);

        //次へ
        m_Page1_A_Button.SetEnable(true);
        
        yield return new WaitForSecondsRealtime(0.25f);

        m_IsInputEnable = true;
    }

    IEnumerator SwitchToPage2()
    {
        m_IsInputEnable = false;
        m_Page1_Flag = false;
        m_Select = 0;

        //page1閉じる
        m_Page1_MenuBack.SetEnable(false);
        m_Page1_StageClear.SetEnable(false);
        m_Page1_Count.SetEnable(false);
        m_Page1_Time.SetEnable(false);
        m_Page1_SmallStar1.SetEnable(false);
        m_Page1_SmallStar2.SetEnable(false);
        m_Page1_SmallStar3.SetEnable(false);
        m_Page1_BigStar1.SetEnable(false);
        m_Page1_BigStar2.SetEnable(false);
        m_Page1_BigStar3.SetEnable(false);
        m_Page1_Clear.SetEnable(false);
        m_Page1_Slash.SetEnable(false);
        m_Page1_StarCounter.SetEnable(false);
        m_Page1_ClearCounter.SetEnable(false);
        m_Page1_MinuteCounter.SetEnable(false);
        m_Page1_Minute.SetEnable(false);
        m_Page1_SecondCounter.SetEnable(false);
        m_Page1_Second.SetEnable(false);
        m_Page1_MiliSecondCounter.SetEnable(false);
        m_Page1_A_Button.SetEnable(false);

        yield return new WaitForSecondsRealtime(0.15f);

        //Page2を開く
        m_Page2_MenuBack.SetEnable(true);
        m_Page2_MenuBack.SetActive(true);
        m_Page2_Continue.SetEnable(true);
        m_Page2_Continue.SetActive(true);
        m_Page2_StageSelect.SetEnable(true);
        m_Page2_Retry.SetEnable(true);
        yield return new WaitForSecondsRealtime(0.5f);

        m_Page2_A_Button.SetEnable(true);
        m_Page2_B_Button.SetEnable(true);

        yield return new WaitForSecondsRealtime(0.25f);

        m_IsInputEnable = true;
    }

    IEnumerator SetClearTimeDigit(float time)
    {
        int minute = (int)(time / 60);
        int second = (int)(time - minute*60);
        int milisecond = (int)((time - minute * 60 - second) * 100);

        m_Page1_MinuteCounter.SetEnable(true);
        m_Page1_Minute.SetEnable(true);
        m_Page1_Minute.SetActive(true);
        yield return new WaitForSeconds(0.2f);
        m_Page1_SecondCounter.SetEnable(true);
        m_Page1_Second.SetEnable(true);
        m_Page1_Second.SetActive(true);
        m_Page1_SecondCounter.SetCount(second);
        yield return new WaitForSeconds(0.2f);
        m_Page1_MiliSecondCounter.SetEnable(true);
        m_Page1_MinuteCounter.SetCount(minute);
        m_Page1_MiliSecondCounter.SetCount(milisecond);
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
}
