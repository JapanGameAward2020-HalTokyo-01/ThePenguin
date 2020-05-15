using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class OptionMenu : MonoBehaviour
{
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

    [SerializeField, Space(20)]
    private PauseMenu m_PauseMenu;
    [SerializeField]
    private ConfirmMenu m_ConfirmMenu;

    [Space(20)]
    public float m_VolumeValue;
    public float m_BGMValue;


    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    private void Awake()
    {
        m_EventSystem = EventSystem.current;

        //! 押したら実行する関数を設定
        m_ControlButton.onClick.AddListener(Control);
        m_VolumeSlider.onValueChanged.AddListener(delegate { VolumeChange(); });
        m_BGMSlider.onValueChanged.AddListener(delegate { BGMChange(); });
        m_DeleteButton.onClick.AddListener(Confirm);

        this.gameObject.SetActive(false);
    }

    /// <summary>
    /// @brief      active時呼ばれるやつ
    /// </summary>
    public void OnEnable()
    {
        m_LastSelected = m_ControlButton.gameObject;

        m_CoroutineA = false;
        m_CoroutineB = false;


        //!　ゲームを止める
        Time.timeScale = 0;

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
            m_LastSelected = m_EventSystem.currentSelectedGameObject;
        }
    }


    /// <summary>
    /// @brief      リスタートする関数
    /// </summary>
    void Control()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA());
        }

    }

    /// <summary>
    /// @brief      ステージ選択へ飛ばす関数
    /// </summary>
    void VolumeChange()
    {
        m_VolumeValue = m_VolumeSlider.value;
    }

    /// <summary>
    /// @brief      タイトルへ飛ばす関数
    /// </summary>
    void BGMChange()
    {
        m_BGMValue = m_BGMSlider.value;
    }

    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    void Confirm()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA());
        }

        m_ConfirmMenu.gameObject.SetActive(true);
    }

    /// <summary>
    /// @brief      Aボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerA()
    {
        m_CoroutineA = true;
        Debug.Log("A Button");
        m_AButtonImage.sprite = m_AClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);


        m_AButtonImage.sprite = m_ADefault;
        m_CoroutineA = false;

        yield break;
    }

    /// <summary>
    /// @brief      Bボタンが押された時のCoroutine
    /// </summary>
    IEnumerator ClickTimerB()
    {
        m_CoroutineB = true;
        Debug.Log("B Button");
        m_BButtonImage.sprite = m_BClicked;

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);


        m_BButtonImage.sprite = m_BDefault;
        m_CoroutineB = false;

        //!　ゲームを再開
        Time.timeScale = 1;
        //!　ポーズ画面を消す
        this.gameObject.SetActive(false);

        m_PauseMenu.gameObject.SetActive(true);

        yield break;
    }
}
