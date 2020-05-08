/**
 * @file    TransitionCtrlBase.cs
 * @brief   シーン遷移周りの処理を担当するクラスのベースクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using Assets.Scripts.SceneManagement;

/**
 * @class   TransitionCtrlBaseクラス
 * @brief   シーン遷移周りの処理を担当するクラスのベースクラス
 */
public class TransitionCtrlBase : MonoBehaviour
{
    //! シーン遷移オブジェクト
    protected TransScene m_transitioner = null;

    //! BGMオブジェクト
    [SerializeField]
    protected AudioManager m_bgm_mgr;

    /**
     * @brief	アプリケーション終了処理
     */
    protected void ExitApp()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#elif UNITY_STANDALONE
		UnityEngine.Application.Quit();
#endif
    }


}
