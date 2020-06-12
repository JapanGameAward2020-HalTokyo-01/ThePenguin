/// <summary>
/// @file   ConfirmMenu.cs
/// @brief	確認画面
/// @author	北林和哉
/// </summary>

using System.Collections;

using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class ConfirmMenu : MonoBehaviour
{
    //! EventSystem格納
    private EventSystem m_EventSystem;

    //! 選択用のボタン群
    [SerializeField]
    private UnityEngine.UI.Button m_YesButton;
    [SerializeField]
    private UnityEngine.UI.Button m_NoButton;
    [SerializeField]
    private UnityEngine.UI.Button m_TitleButton;

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
    [SerializeField]
    private UnityEngine.UI.Image m_DeleteMessage;

    //! 最後に選択したボタン
    private GameObject m_LastSelected;

    //! メニュー群
    [SerializeField, Space(20)]
    private OptionMenu m_OptionMenu;

    //! 入力
    [SerializeField]
    private PlayerInput m_Input;

    SaveSystem m_SaveSystem;

    //! 現在のシーン
    private string m_ActiveScene;


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
        m_TitleButton.onClick.AddListener(Title);
        m_SaveSystem = FindObjectOfType<SaveSystem>();

        //! 現在のシーン取得
        m_ActiveScene = SceneManager.GetActiveScene().name;

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

        m_DeleteMessage.CrossFadeAlpha(0, 0, true);
        m_DeleteMessage.gameObject.SetActive(false);


        //!　ゲームを止める
        //Time.timeScale = 0;

        //! InputにBButtonのEventを追加
        m_Input.actions["B Button"].performed += BButtonConfirm;

        //! 初期選択ボタン設定
        StartCoroutine(SelectButton());
    }

    private void BButtonConfirm(InputAction.CallbackContext ctx)
    {
        Debug.Log("ConfirmMenu: message received");
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
        m_EventSystem.SetSelectedGameObject(m_NoButton.gameObject);
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
    /// @brief      キャンセルする関数
    /// </summary>
    void Title()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(3));
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
        m_CoroutineB = true;
        m_AButtonImage.sprite = m_AClicked;
        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Confirm);

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_AButtonImage.sprite = m_ADefault;
        m_CoroutineA = false;
        m_CoroutineB = false;

        //! 処理の分岐
        switch (a)
        {
            case 1:
                yield return StartCoroutine(YesCo());
                break;
            case 2:
                yield return StartCoroutine(NoCo());
                break;
            case 3:
                yield return StartCoroutine(TitleCo());
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
        m_SaveSystem.ClearData();

        m_DeleteMessage.gameObject.SetActive(true);
        m_DeleteMessage.CrossFadeAlpha(1, 0.6f, true);

        m_LastSelected = m_TitleButton.gameObject;
        m_EventSystem.SetSelectedGameObject(m_LastSelected);

        yield break;
    }

    IEnumerator TitleCo()
    {
        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonConfirm;

        SceneManager.LoadScene(m_ActiveScene);

        yield break;
    }

    /// <summary>
    /// @brief     No移行処理のCoroutine
    /// </summary>
    IEnumerator NoCo()
    {
        //!　Option画面にfocusを戻す
        m_OptionMenu.OnEnable();

        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonConfirm;

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

        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonConfirm;

        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Cancel);

        //! 0.3秒待つ
        yield return new WaitForSecondsRealtime(0.3f);

        //! ボタン解除処理
        m_BButtonImage.sprite = m_BDefault;
        m_CoroutineB = false;

        yield return StartCoroutine(NoCo());

        yield break;
    }
}
