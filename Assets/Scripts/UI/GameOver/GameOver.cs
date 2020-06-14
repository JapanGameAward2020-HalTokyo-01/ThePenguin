using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameOver : MonoBehaviour
{
    [Header("Image List")]
    [SerializeField]
    private Sprite m_normal_stage;
    [SerializeField]
    private Sprite m_final_stage;

    private Sprite[] m_image_list;

    [Header("UI Objects")]
    [SerializeField]
    private UnityEngine.UI.Image m_Penguin;
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
    private Image m_Arrow;

    [Header("Scene Data")]

    [SerializeField, Tooltip("シーンリスト")]
    private StageMetaParam m_SceneList;

    //[SerializeField]
    //private SceneObject m_StageSelectScene = null;
    //[SerializeField]
    //private SceneObject m_TitleScene = null;

    private bool m_IsInputEnable = false;

    private int m_Past_H = 0;
    private int m_Past_V = 0;
    private int m_Current_H = 0;
    private int m_Current_V = 0;

    private int m_Select = 0;
    private bool m_Flag_FinalStage = false;

    ////他のシーンから引き継ぐ情報
    //private SceneObject m_PastScene;
    void Awake()
    {
        m_image_list = new Sprite[2] { m_normal_stage, m_final_stage };
        SoundEffect.Instance.StopLoopSEAll();
    }
    // Start is called before the first frame update
    void Start()
    {
        //他のシーンから情報を引き継ぐ
        m_Flag_FinalStage = m_SceneList.IsBossStage;

		////////////////////////////
		// BGM再生
		BGMManager.Instance.Play(BGMs.Index.None);

        m_Penguin.sprite = m_image_list[m_Flag_FinalStage ? 1 : 0];

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
                    SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cursor);
                    m_Select -= 1;
                }
                if(GetDownUp())
                {
                    SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cursor);
                    m_Select += 1;
                }
                m_Select = (m_Select + 3) % 3;

                Vector3 _ButtonPosition= m_Retry.transform.position;
                if(m_Select==0)
                {
                    m_Retry.SetActive(true);
                    m_StageSelect.SetActive(false);
                    m_Title.SetActive(false);
                    _ButtonPosition = m_Retry.transform.position;
                }
                else if(m_Select==1)
                {
                    m_Retry.SetActive(false);
                    m_StageSelect.SetActive(true);
                    m_Title.SetActive(false);
                    _ButtonPosition = m_StageSelect.transform.position;
                }
                else if (m_Select == 2)
                {
                    m_Retry.SetActive(false);
                    m_StageSelect.SetActive(false);
                    m_Title.SetActive(true);
                    _ButtonPosition = m_Title.transform.position;
                }
                //_ButtonPosition.x -= 230.0f;
                m_Arrow.gameObject.transform.position = new Vector2(m_Arrow.gameObject.transform.position.x, _ButtonPosition.y);

                if (GetAButtonUp())
                {
                    //Aボタン
                    SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Confirm);
                    if (m_Select==0)
                    {
                        Debug.Log("Retry");
                        StartCoroutine(SceneEnd(m_SceneList.CurrentLevelBuildIndex));
                    }
                    else if(m_Select==1)
                    {
                        Debug.Log("Stage Select");
                        StartCoroutine(SceneEnd(m_SceneList.m_StageSelect));
                    }
                    else if(m_Select==2)
                    {
                        Debug.Log("Title");
                        StartCoroutine(SceneEnd(m_SceneList.m_Title));
                    }
                }
                if(GetBButtonUp())
                {
                    //Bボタン
                    Debug.Log("Retry");
                    SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cancel);
                    StartCoroutine(SceneEnd(m_SceneList.CurrentLevelBuildIndex));
                }
            }
        }
    }

    //汎用的Fade
    private IEnumerator SceneStart()
    {
        yield return new WaitForSecondsRealtime(1.0f);

        // 効果音再生
        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.GameOver, 0.8f, 128);
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
