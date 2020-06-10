/// <summary>
/// @file   PauseMenu.cs
/// @brief	Pause画面
/// @author	北林和哉
/// </summary>

using System.Collections;

using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.InputSystem;
using Effekseer;
 

public class PauseMenu : MonoBehaviour
{
    //! EventSystem格納
    private EventSystem m_EventSystem;

    ISelectHandler a;
    //! 選択用のボタン群
    [SerializeField]
    private UnityEngine.UI.Button m_RestartButton;
    [SerializeField]
    private UnityEngine.UI.Button m_StageButton;
    [SerializeField]
    private UnityEngine.UI.Button m_OptionButton;
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

    //! 選択用矢印
    [SerializeField]
    private UnityEngine.UI.Image m_Arrow;

    //! 最後に選択したボタン
    private GameObject m_LastSelected;
    //! 現在のシーン
    private string m_ActiveScene;

    //! メニュー群
    [SerializeField, Space(20)]
    private OptionMenu m_OptionMenu;
    //! Animator
    [SerializeField]
    private Animator m_Animator;
    //! 入力
    [SerializeField]
    private PlayerInput m_Input;

    [SerializeField, Space(20)]
    //! タイトルのシーン
    private string m_TitleScene;
    [SerializeField]
    //! ステージ選択のシーン
    private string m_StageSelectScene;

    private bool m_SetPauseEvent;



    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    private void Awake()
    {
        //! 現在のEventSystem取得
        m_EventSystem = EventSystem.current;

        //! 押したら実行する関数を設定
        m_RestartButton.onClick.AddListener(Restart);
        m_StageButton.onClick.AddListener(StageSelect);
        m_OptionButton.onClick.AddListener(Option);
        m_TitleButton.onClick.AddListener(Title);
        //! 現在のシーン取得
        m_ActiveScene = SceneManager.GetActiveScene().name;

        //! 使うまで無効にする
        this.gameObject.SetActive(false);
    }

    /// <summary>
    /// @brief      active時呼ばれるやつ
    /// </summary>
    public void OnEnable()
    {
        //! 初期選択ボタン
        m_LastSelected = m_RestartButton.gameObject;

        //! ABボタンの初期化
        m_CoroutineA = false;
        m_CoroutineB = false;
        //! ボタン解除処理
        m_AButtonImage.sprite = m_ADefault;
        m_BButtonImage.sprite = m_BDefault;

        m_AButtonImage.CrossFadeAlpha(1, 0, true);

        m_SetPauseEvent = false;
        //!　ゲームを止める
        Time.timeScale = 0;

        m_Animator.SetBool("Open", true);

        //! InputにBButtonのEventを追加
        m_Input.actions["B Button"].performed += BButtonPause;



        //! 初期選択ボタン設定
        StartCoroutine(SelectButton());
    }

    private void OnDisable()
    {
        //! InputにPauseのEventを追加
        m_Input.actions["Pause"].performed -= BButtonPause;
    }

    public void BButtonPause(InputAction.CallbackContext ctx)
    {
        Debug.Log("PauseMenu: message received");
        if(!m_CoroutineB)
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
        m_EventSystem.SetSelectedGameObject(m_RestartButton.gameObject);
        //! InputにPauseのEventを追加
        m_Input.actions["Pause"].performed += BButtonPause;
        m_SetPauseEvent = true;
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

            Vector3 a = m_LastSelected.transform.position;
            a.x -= 250.0f;
            m_Arrow.gameObject.transform.position = a;

        }
    }

    /// <summary>
    /// @brief      リスタートする関数
    /// </summary>
    void Restart()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(1));
        }
    }

    /// <summary>
    /// @brief      ステージ選択へ飛ばす関数
    /// </summary>
    void StageSelect()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(2));
        }
    }

    /// <summary>
    /// @brief      タイトルへ飛ばす関数
    /// </summary>
    void Option()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(3));
        }
    }

    /// <summary>
    /// @brief      起動時呼ばれるやつ
    /// </summary>
    void Title()
    {
        if (!m_CoroutineA)
        {
            //! Aボタンのスプライト変更処理
            StartCoroutine(ClickTimerA(4));
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
                yield return StartCoroutine(RestartCo());
                break;
            case 2:
                yield return StartCoroutine(StageSelectCo());
                break;
            case 3:
                yield return StartCoroutine(OptionCo());
                break;
            case 4:
                yield return StartCoroutine(TitleCo());
                break;
            default:
                break;
        }

        yield break;
    }

    /// <summary>
    /// @brief      Restart移行処理のCoroutine
    /// </summary>
    IEnumerator RestartCo()
    {
        this.gameObject.SetActive(false);
        //!　ゲームを再開
        Time.timeScale = 1;
        SceneManager.LoadScene(m_ActiveScene);

        yield break;
    }

    /// <summary>
    /// @brief      StageSelect移行処理のCoroutine
    /// </summary>
    IEnumerator StageSelectCo()
    {

        this.gameObject.SetActive(false);
        //!　ゲームを再開
        Time.timeScale = 1;
        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonPause;
        //! InputにPauseのEventを削除
        m_Input.actions["Pause"].performed -= BButtonPause;
        //!全エフェクト停止
        EffekseerSystem.StopAllEffects();
        SceneManager.LoadScene(m_StageSelectScene);
        yield break;
    }

    /// <summary>
    /// @brief      Option移行処理のCoroutine
    /// </summary>
    IEnumerator OptionCo()
    {
        //this.gameObject.SetActive(false);
        m_AButtonImage.CrossFadeAlpha(0, 0, true);
        m_OptionMenu.gameObject.SetActive(true);
        m_CoroutineB = true;
        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonPause;
        //! InputにPauseのEventを削除
        m_Input.actions["Pause"].performed -= BButtonPause;
        yield break;
    }

    /// <summary>
    /// @brief     Title移行処理のCoroutine
    /// </summary>
    IEnumerator TitleCo()
    {

        this.gameObject.SetActive(false);
        //!　ゲームを再開
        Time.timeScale = 1;
        //! InputからBButtonのEventを削除
        m_Input.actions["B Button"].performed -= BButtonPause;
        //! InputにPauseのEventを削除
        m_Input.actions["Pause"].performed -= BButtonPause;
        //!全エフェクト停止
        EffekseerSystem.StopAllEffects();
        SceneManager.LoadScene(m_TitleScene);
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
        m_Input.actions["B Button"].performed -= BButtonPause;
        if (m_SetPauseEvent)
        {
            //! InputにPauseのEventを削除
            m_Input.actions["Pause"].performed -= BButtonPause;
        }
        //! 0.4秒待つ
        yield return new WaitForSecondsRealtime(0.4f);

        //! ボタン解除処理
        m_BButtonImage.sprite = m_BDefault;
        m_CoroutineA = false;
        m_CoroutineB = false;

        var _cv = FindObjectOfType<ControllerVibration>();
        if (_cv)
            _cv.Pause(false);

        //!　ゲームを再開
        Time.timeScale = 1;

        m_Animator.SetBool("Open", false);
        yield return new WaitForSecondsRealtime(0.8f);

        //!　ポーズ画面を消す
        this.gameObject.SetActive(false);

        yield break;
    }
}