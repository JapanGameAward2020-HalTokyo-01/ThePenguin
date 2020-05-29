/**
 * @file    TransScene.cs
 * @brief   シーンを遷移するだけのクラス
 * @author  谷沢 瑞己
 */
using UnityEditor;
using UnityEngine.SceneManagement;

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

        //! ゲームシーンの場合はシーンアセットを直接指定
        private SceneAsset m_next_scene_asset = null;

        /**
         * @brief   遷移先シーンインデックスを必ず持って生成するようにする
         * @param   遷移先シーンインデックス
         */
        public TransScene(KSceneIndex next_scene)
        {
            m_next_scene = next_scene;
        }

        /**
         * @brief   遷移先シーンインデックスを必ず持って生成するようにする
         * @param   (_scene) シーンアセット直接指定
         */
        public TransScene(SceneAsset _scene)
        {
            m_next_scene = KSceneIndex.None;
            m_next_scene_asset = _scene;
        }

        /**
         * @brief   メンバのインデックスが指定するシーンに遷移する
         */
        public void Transition()
        {
            // 非同期読み込みによるシーン遷移
            if(m_next_scene == KSceneIndex.None)
            {
                SceneManager.LoadSceneAsync(m_next_scene_asset.name, LoadSceneMode.Single);
            }
            else
            {
                SceneManager.LoadSceneAsync((int)m_next_scene, LoadSceneMode.Single);
            }
        }
    }
}

