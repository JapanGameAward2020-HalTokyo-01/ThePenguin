using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class OptionMenu : MonoBehaviour
{
    //! EventSystem格納
    private EventSystem m_EventSystem;

    //! 選択用のボタン群
    [SerializeField]
    private UnityEngine.UI.Button m_ControlButton;
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

    //! メニュー群
    [SerializeField, Space(20)]
    private PauseMenu m_PauseMenu;
    [SerializeField]
    private ConfirmMenu m_ConfirmMenu;

    //! 音設定格納
    [Space(20)]
    public float m_VolumeValue;
    public float m_BGMValue;


    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    private void Awake()
    {
        //! 現在のEventSystem取得
        m_EventSystem = EventSystem.current;

        //! 押したら実行する関数を設定
        m_ControlButton.onClick.AddListener(Control);
        m_VolumeSlider.onValueChanged.AddListener(delegate { VolumeChange(); });
        m_BGMSlider.onValueChanged.AddListener(delegate { BGMChange(); });
        m_DeleteButton.onClick.AddListener(Confirm);

        //! 使うまで無効にする
        this.gameObject.SetActive(false);
    }

    /// <summary>
    /// @brief      active時呼ばれるやつ
    /// </summary>
    public void OnEnable()
    {
        //! 初期選択ボタン
        m_LastSelected = m_ControlButton.gameObject;

        //! ABボタンの初期化
        m_CoroutineA = false;
        m_CoroutineB = false;


        //!　ゲームを止める
        Time.timeScale = 0;

        //! 初期選択ボタン設定
        StartCoroutine(SelectButton());
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
        //! 戻る(Bボタン)処理
        if (Input.GetKeyDown("joystick button 1") && !m_CoroutineB)
        {
            StartCoroutine(ClickTimerB());
        }

        //! focusがボタンから外れた時の処理
        if (m_EventSystem.currentSelectedGameObject == null)
        {
            m_EventSystem.SetSelectedGameObject(m_LastSelected);
        }
        else
        {
            //! 現在のボタンを登録
            m_LastSelected = m_EventSystem.currentSelectedGameObject;
        }
    }


    /// <summary>
    /// @brief      操作説明する関数
    /// </summary>
    void Control()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(1));
        }
    }

    /// <summary>
    /// @brief      Volume変更関数
    /// </summary>
    void VolumeChange()
    {
        m_VolumeValue = m_VolumeSlider.value;
    }

    /// <summary>
    /// @brief      BGM変更関数
    /// </summary>
    void BGMChange()
    {
        m_BGMValue = m_BGMSlider.value;
    }

    /// <summary>
    /// @brief      確認画面移行関数
    /// </summary>
    void Confirm()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(2));
        }
    }

    /// <summary>
    /// @brief      Aボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerA(int a)
    {
        //! ボタン選択処理
        Debug.Log("A Button");
        m_CoroutineA = true;
        m_AButtonImage.sprite = m_AClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_AButtonImage.sprite = m_ADefault;
        m_CoroutineA = false;

        //! 処理の分岐
        switch (a)
        {
            case 1:
                yield return StartCoroutine(ControlCo());
                break;
            case 2:
                yield return StartCoroutine(ConfirmCo());
                break;
            default:
                break;
        }

        yield break;
    }

    /// <summary>
    /// @brief      操作説明処理のCoroutine
    /// </summary>
    IEnumerator ControlCo()
    {

        yield break;
    }

    /// <summary>
    /// @brief      確認画面移行処理のCoroutine
    /// </summary>
    IEnumerator ConfirmCo()
    {
        m_ConfirmMenu.gameObject.SetActive(true);
        m_CoroutineB = true;

        yield break;
    }

    /// <summary>
    /// @brief      Bボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerB()
    {
        //! ボタン選択処理
        Debug.Log("B Button");
        m_CoroutineB = true;
        m_BButtonImage.sprite = m_BClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_BButtonImage.sprite = m_BDefault;
        m_CoroutineB = false;

        //!　ゲームを再開
        Time.timeScale = 1;
        //!　Option画面を消す
        this.gameObject.SetActive(false);

        //!　Pause画面を有効
        m_PauseMenu.gameObject.SetActive(true);

        yield break;
    }
}
