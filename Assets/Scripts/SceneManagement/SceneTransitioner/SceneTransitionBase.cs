/**
 * @file    SceneTransitionBase.cs
 * @brief   シーン遷移周りの処理を担当するクラスのベースクラス
 * @author  谷沢 瑞己
 */
using UnityEngine;
using Assets.Scripts.SceneManagement;

/**
 * @class   SceneTransitionBaseクラス
 * @brief   シーン遷移周りの処理を担当するクラスのベースクラス
 */
public class SceneTransitionBase : MonoBehaviour
{
    //! シーン遷移オブジェクト
    protected TransScene m_transitioner = null;
}
