﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;

public class ResultUI : MonoBehaviour
{
    [Header("UI Objects")]

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

    [Header("Scene Data")]
    
    [SerializeField, Tooltip("シーンリスト")]
    private StageMetaParam m_SceneList;    

    private bool m_IsInputEnable = false;

    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    private int m_Select = 0;
    private bool m_Page1_Flag = true;

    //星を獲得する必要なペンギン数とクリア情報
    private int m_StarCount = 0;
    private float m_StarTime = 0.0f;
    //クリア時実際のペンギン数と時間
    private int m_ClearCount = 0;
    private float m_ClearTime = 0;

    //星獲得フラグ
    private bool m_Flag_Count = false;
    private bool m_Flag_Time = false;

    // Start is called before the first frame update
    void Start()
    {
        // セーブデータ取り出し
        CurrentScore _score = FindObjectOfType<CurrentScore>();

        //他のシーンから情報を引き継ぐ
        if(_score != null)
		{
            // クリア条件：ペンギン数
            m_StarCount = _score.m_total_count;
            // クリア条件：時間
            m_StarTime = _score.m_limit_time;
            // 結果：ペンギン数
            m_ClearCount = _score.m_saved_count;
            // 結果：時間
            m_ClearTime = _score.m_clear_time;
		}

        ////////////////////////////////////////////////
        m_Flag_Count = (m_ClearCount >= m_StarCount);
        m_Flag_Time = (m_ClearTime >= m_StarTime);
        m_Page1_StarCounter.SetCount(m_StarCount);
        m_Page1_StarCounter.SetCurrentCount(m_StarCount);

        // BGM再生
        BGMManager.Instance.Play(BGMs.Index.Result);

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
                            m_SceneList.LevelIncrement();
                            StartCoroutine(SceneEnd(m_SceneList.CurrentLevelBuildIndex));
                        }
                        else if (m_Select == 1)
                        {
                            Debug.Log("Stage Select");
                            StartCoroutine(SceneEnd(m_SceneList.m_StageSelect));
                        }
                        else if (m_Select == 2)
                        {
                            Debug.Log("Retry");
                            StartCoroutine(SceneEnd(m_SceneList.CurrentLevelBuildIndex));
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
        m_Page1_Second.SetCrossTime(new_time);
        m_Page1_A_Button.SetCrossTime(new_time);
        m_Page2_MenuBack.SetCrossTime(new_time);
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

    // インデックス指定方式
    private IEnumerator SceneEnd(int next_index = -1)
    {
        m_IsInputEnable = false;
        m_Fade.SetActive(true);

        yield return new WaitForSecondsRealtime(1.0f);

        if (next_index < 0)
        {
            Debug.LogError("次のシーンが設定されてない");
            yield break;
        }

        SceneManager.LoadScene(next_index);
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
        int second = (int)(time);
        int milisecond = (int)((time - second) * 100);

        m_Page1_SecondCounter.SetEnable(true);
        m_Page1_Second.SetEnable(true);
        m_Page1_Second.SetActive(true);
        m_Page1_SecondCounter.SetCount(second);
        yield return new WaitForSeconds(0.2f);
        m_Page1_MiliSecondCounter.SetEnable(true);
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
