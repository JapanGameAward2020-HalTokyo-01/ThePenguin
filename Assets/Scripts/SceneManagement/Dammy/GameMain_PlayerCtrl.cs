/**
 * @file    GameMain_PlayerCtrl.cs
 * @brief   仮挙動のゲームメインシーンの中でPlayerに相当するSphearを操作するやつ
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class   GameMain_PlayerCtrlクラス
 * @brief   ちゃんとしたシーンには不要なので、不要になり次第削除する
 */
public class GameMain_PlayerCtrl : MonoBehaviour
{
    //! 遷移すべきシーンインデックス
    private KSceneIndex m_next_scene = KSceneIndex.None;
    public KSceneIndex NextSceneIndex
    {
        get { return m_next_scene; }
    }

    //! 遷移すべき状態インデックス
    private KGameMainStateIndex m_next_state = KGameMainStateIndex.None;
    public KGameMainStateIndex NextStateIndex
    {
        get { return m_next_state; }
    }

    /**
     * @brief   フレーム更新
     */
    public void OnUpdate()
    {
        Vector3 _moveto = Vector3.zero;
        _moveto.x = Input.GetAxis("Horizontal");
        _moveto.y = Input.GetAxis("Vertical");
        gameObject.transform.position += _moveto.normalized * 0.05f;
    }

    /**
     * @brief   トリガー衝突時(雑実装)
     */
    public void OnTriggerEnter(Collider other)
    {
        //! 衝突したオブジェクトから遷移先シーンを受け取る
        GameMain_ReturnIndex _ret = other.gameObject.GetComponent<GameMain_ReturnIndex>();
        if (_ret == null) return;
        m_next_scene = _ret.NextScene;
        m_next_state = _ret.NextStateIndex;
    }
}
