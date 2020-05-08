/**
 * @file    TransScene.cs
 * @brief   シーンを遷移するだけのクラス
 * @author  谷沢 瑞己
 */
using UnityEngine.SceneManagement;
using UnityEngine;

namespace Assets.Scripts.SceneManagement
{
    /**
     * @class   TransSceneクラス
     * @brief   Transition()に遷移先シーンを渡すことでそのシーンに遷移する
     *          もしフェード処理を書くのであればこれを拡張する(FadeType列挙型をコンストラクタで受け取ってFadeStart()tkってUpdate()回してIsFadingプロパティで判断して...)
     */
    public class TransScene
    {
        //! 遷移先シーンインデックス
        private KSceneIndex m_next_scene;

        //! 音管理
        [SerializeField]
        private AudioManager m_audio;

        /**
         * @brief   遷移先シーンインデックスを必ず持って生成するようにする
         * @param   遷移先シーンインデックス
         */
        public TransScene(KSceneIndex next_scene)
        {
            m_next_scene = next_scene;
        }

        /**
         * @brief   メンバのインデックスが指定するシーンに遷移する
         */
        public void Transition()
        {
            // 非同期読み込みによるシーン遷移
            SceneManager.LoadSceneAsync((int)m_next_scene, LoadSceneMode.Single);
        }

        /**
         * @brief   シーン遷移スタイル(未作成)を指定してシーン遷移する(予定)
         */
        public void Transition(int transition_style)
        {
            Transition();
        }
    }
}

