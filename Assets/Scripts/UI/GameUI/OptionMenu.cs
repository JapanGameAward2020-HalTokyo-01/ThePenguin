/// <summary>
/// @file   OptionMenu.cs
/// @brief	Option画面
/// @author	北林和哉
/// </summary>

using System.Collections;

using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

public class OptionMenu : MonoBehaviour
{
    //! EventSystem格納
    private EventSystem m_EventSystem;

    //! 選択用のボタン群
    [SerializeField]
    private UnityEngine.UI.Slider m_VolumeSlider;
    [SerializeField]
    private UnityEngine.UI.Slider m_BGMSlider;
    [SerializeField]
    private UnityEngine.UI.Button m_DeleteButton;

    //! Aボタン群
    [SerializeField]
    private UnityEngine.UI.Image m_AButtonImage;
    [SerializeField]
    private Sprite m_AClicked;
    [SerializeField]
    private Sprite m_ADefault;
    private bool m_CoroutineA = false;

    //! Bボタン群
    [SerializeField]
    private UnityEngine.UI.Image m_BButtonImage;
    [SerializeField]
    private Sprite m_BClicked;
    [SerializeField]
    private Sprite m_BDefault;
    private bool m_CoroutineB = false;

    //! 最後に選択したボタン
    private GameObject m_LastSelected;

    //! 選択用矢印
    [SerializeField]
    private UnityEngine.UI.Image m_Arrow;

    //! メニュー群
    [SerializeField, Space(20)]
    private PauseMenu m_PauseMenu;
    [SerializeField]
    private ConfirmMenu m_ConfirmMenu;
    [Header("↓これ前のメインのUIに変えて"),SerializeField]
    private MainMenu m_MainMenu;

    //! 入力
    [SerializeField]
    private PlayerInput m_Input;

    //! 音設定格納
    [Space(20),SerializeField, NonEditableField]
    Sounddata m_SoundData;

    private SaveSystem m_SaveSystem;


    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    private void Awake()
    {
        //! 現在のEventSystem取得
        m_EventSystem = EventSystem.current;

        m_SaveSystem = FindObjectOfType<SaveSystem>();

        //! 押したら実行する関数を設定
        m_VolumeSlider.onValueChanged.AddListener(delegate { VolumeChange(); });
        m_BGMSlider.onValueChanged.AddListener(delegate { BGMChange(); });
        if (m_DeleteButton != null)
        {
            m_DeleteButton.onClick.AddListener(Confirm);
        }
        //! 使うまで無効にする
        this.gameObject.SetActive(false);
    }

    /// <summary>
    /// @brief      active時呼ばれるやつ
    /// </summary>
    public void OnEnable()
    {
        //! 初期選択ボタン
        m_LastSelected = m_VolumeSlider.gameObject;

        //! ABボタンの初期化
        m_CoroutineA = false;
        m_CoroutineB = false;

        m_SoundData = m_SaveSystem.VolumeData;
        m_VolumeSlider.value = m_SaveSystem.VolumeData.m_Music;
        m_BGMSlider.value = m_SaveSystem.VolumeData.m_Soundeffects;

        if (m_DeleteButton != null)
        {
            m_AButtonImage.CrossFadeAlpha(1, 0, true);
        }
        else
        {
            m_CoroutineA = true;
            m_AButtonImage.CrossFadeAlpha(0, 0, true);
        }

        //!　ゲームを止める(呼び出しアニメーション演出のためコメントアウトしました)
        //Time.timeScale = 0;

        //! InputにBButtonのEventを追加
        m_Input.actions["B Button"].performed += BButtonOption;

        //! 初期選択ボタン設定
        StartCoroutine(SelectButton());
    }

    private void BButtonOption(InputAction.CallbackContext ctx)
    {
        Debug.Log("OptionMenu: message received");
        if (!m_CoroutineB)
        {
            StartCoroutine(ClickTimerB());
        }
    }

    /// <summary>
    /// @brief      初期ボタン選択のCoroutine(1Frame後ではないとボタンがactiveにならないためHighlightされない)
    /// </summary>
    IEnumerator SelectButton()
    {
        yield return new WaitForEndOfFrame();
        m_EventSystem.SetSelectedGameObject(null);
        m_EventSystem.SetSelectedGameObject(m_LastSelected);
        yield break;
    }

    // Update is called once per frame
    void Update()
    {
        //! focusがボタンから外れた時の処理
        if (m_EventSystem.currentSelectedGameObject == null)
        {
            m_EventSystem.SetSelectedGameObject(m_LastSelected);
        }
        else
        {
            //! 現在のボタンを登録
            m_LastSelected = m_EventSystem.currentSelectedGameObject;

            if (m_DeleteButton == null)
            {
                Vector3 a = m_LastSelected.transform.position;
                a.x -= 305.0f;
                m_Arrow.gameObject.transform.position = a;
            }
            else
            {
                if (m_LastSelected == m_BGMSlider.gameObject | m_LastSelected == m_VolumeSlider.gameObject)
                {
                    Vector3 a = m_LastSelected.transform.position;
                    a.x -= 305.0f;
                    m_Arrow.gameObject.transform.position = a;
                    Debug.Log(m_LastSelected.gameObject);
                }
                else if(m_LastSelected == m_DeleteButton.gameObject)
                {
                    Vector3 a = m_LastSelected.transform.position;
                    a.x -= 210.0f;
                    m_Arrow.gameObject.transform.position = a;
                    Debug.Log(m_LastSelected.gameObject);
                }
            }
        }
    }

    /// <summary>
    /// @brief      Volume変更関数
    /// </summary>
    void VolumeChange()
    {
        m_SoundData.m_Music = m_VolumeSlider.value;
    }

    /// <summary>
    /// @brief      BGM変更関数
    /// </summary>
    void BGMChange()
    {
        m_SoundData.m_Soundeffects = m_BGMSlider.value;
    }

    /// <summary>
    /// @brief      確認画面移行関数
    /// </summary>
    void Confirm()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA());
        }
    }

    /// <summary>
    /// @brief      Aボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerA()
    {
        //! ボタン選択処理
        Debug.Log("A Button");
        m_CoroutineA = true;
        m_CoroutineB = true;
        m_AButtonImage.sprite = m_AClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_AButtonImage.sprite = m_ADefault;
        m_CoroutineA = true;
        m_CoroutineB = true;

        yield return StartCoroutine(ConfirmCo());

        yield break;
    }

    /// <summary>
    /// @brief      確認画面移行処理のCoroutine
    /// </summary>
    IEnumerator ConfirmCo()
    {
        m_ConfirmMenu.gameObject.SetActive(true);
        m_CoroutineB = true;

        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonOption;

        yield break;
    }

    /// <summary>
    /// @brief      Bボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerB()
    {
        //! ボタン選択処理
        Debug.Log("B Button");
        m_CoroutineA = true;
        m_CoroutineB = true;
        m_BButtonImage.sprite = m_BClicked;

        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonOption;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_BButtonImage.sprite = m_BDefault;
        m_CoroutineA = true;
        m_CoroutineB = true;

        m_SaveSystem.SetSoundData(m_SoundData);

        //!　ゲームを再開
        Time.timeScale = 1;


        if (m_MainMenu != null)
        {
            m_MainMenu.ReturnByOption();
            yield return new WaitForSecondsRealtime(2.0f/3.0f);
            //!　Option画面を消す
            this.gameObject.SetActive(false);
        }
        if (m_PauseMenu != null)
        {
            //!　Option画面を消す
            this.gameObject.SetActive(false);
            //!　Pause画面を有効
            m_PauseMenu.OnEnable();
        }

        yield break;
    }
}
