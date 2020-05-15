using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.EventSystems;

public class ConfirmMenu : MonoBehaviour
{
    //! EventSystem格納
    private EventSystem m_EventSystem;

    //! 選択用のボタン群
    [SerializeField]
    private UnityEngine.UI.Button m_YesButton;
    [SerializeField]
    private UnityEngine.UI.Button m_NoButton;

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
    private OptionMenu m_OptionMenu;


    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    private void Awake()
    {
        //! 現在のEventSystem取得
        m_EventSystem = EventSystem.current;

        //! 押したら実行する関数を設定
        m_YesButton.onClick.AddListener(Yes);
        m_NoButton.onClick.AddListener(No);

        //! 使うまで無効にする
        this.gameObject.SetActive(false);
    }

    /// <summary>
    /// @brief      active時呼ばれるやつ
    /// </summary>
    private void OnEnable()
    {
        //! 初期選択ボタン
        m_LastSelected = m_NoButton.gameObject;

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
        m_EventSystem.SetSelectedGameObject(m_NoButton.gameObject);
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
    /// @brief      削除承認する関数
    /// </summary>
    void Yes()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(1));
        }
    }

    /// <summary>
    /// @brief      キャンセルする関数
    /// </summary>
    void No()
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
                yield return StartCoroutine(YesCo());
                break;
            case 2:
                yield return StartCoroutine(NoCo());
                break;
            default:
                break;
        }

        yield break;
    }

    /// <summary>
    /// @brief      Yes移行処理のCoroutine
    /// </summary>
    IEnumerator YesCo()
    {


        yield break;
    }

    /// <summary>
    /// @brief     No移行処理のCoroutine
    /// </summary>
    IEnumerator NoCo()
    {
        //!　Option画面にfocusを戻す
        m_OptionMenu.OnEnable();

        //!　確認画面を消す
        this.gameObject.SetActive(false);

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

        yield return StartCoroutine(NoCo());

        yield break;
    }
}
