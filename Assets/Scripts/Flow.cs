/**
 * @file    Flow.cs
 * @brief   指定したタグを持つものだけを選択的に吹き飛ばす空間
 * @author  谷沢 瑞己
 */
using System;
using UnityEngine;

/**
 * @enum    kDirection列挙子
 * @brief   方向に対する選択肢
 */
[Serializable]
enum kDirection { None = -1, Up, Down, Front, Back, Right, Left };

/**
 * @class   Flowクラス
 * @brief   指定した方向にペンギンを移動させる空間
 */
public class Flow : MonoBehaviour
{
    //! 影響を与えるタグ名
    [SerializeField, Tooltip("影響を与える対象のレイヤー")]
    private LayerMask m_layer;

    //! 風の吹く方向(列挙)
    [SerializeField, Tooltip("流れ向き")]
    private kDirection m_direction = kDirection.Up;

    //! 流れが影響する距離
    [SerializeField, Range(1, 20), Tooltip("影響範囲(長さ：タイル単位)")]
    private int m_distance = 1;

    //! 流れの強さ
    [SerializeField, Range(0.0f, 1.0f) , Tooltip("流速(影響範囲の中では均一の強さ)\n目安：0.02")]
    private float m_force = 0.0f;

    //! 流れる方向(ベクトル)
    private Vector3 m_forcedir = Vector3.zero;

    //! コライダ
    private BoxCollider m_collider = null;

    //! オブジェクト参照
    [SerializeField, Tooltip("子要素として配置したゲームオブジェクトの検索を省略するためのもの\n基本的に変更不要")]
    private GameObject m_visual_obj = null;

    //! 子要素(見た目担当)のマテリアル参照
    Material m_material = null;

    /**
     * @brief   (override)Gizmoへの描画を行う(風向き)
     */
    private void OnDrawGizmos()
    {
        // 実行中でなければインスペクタの値反映をここで行う
        if (!Application.isPlaying)
        {
            SubmitStatus();
            SetGraphTransform();
        }

        if (m_collider == null) return;

        // 元の色を保持、描画後に戻す為
        Color color = Gizmos.color;

        Gizmos.color = Color.green;
        Vector3 center = m_collider.center + gameObject.transform.position;
        Gizmos.DrawWireCube(center, m_collider.size);

        // 風向きの描画
        if (Mathf.Abs(m_force) > 0.0f)
        {
            Gizmos.color = Color.white;
            Gizmos.DrawLine(center - m_forcedir * 0.5f, center + m_forcedir * 0.5f);
            Gizmos.color = Color.red;
            Gizmos.DrawWireSphere(center + m_forcedir * 0.5f, 0.2f);
        }

        Gizmos.color = color;
    }

    /**
     * @brief   (override)スクリプトがロードされたときに呼び出される
     */
    public void Awake()
    {
        SubmitStatus();
        SetGraphTransform();
        SetGraphMaterial();
    }

    /**
     * @brief   (override)フレーム更新処理
     */
#if UNITY_EDITOR
    private void Update()
    {
        // エディターからのパラメータ変更をエディタ時のみチェックする
        SubmitStatus();
        SetGraphTransform();
        SetGraphMaterial();

    }
#endif

    /**
     * @brief           (override)トリガーに触れているコライダーに対し実行する
     * @param(other)    衝突を検知したコライダー
     */
    private void OnTriggerStay(Collider other)
    {
        // 影響するオブジェクトであるか判定
        if ( (m_layer.value & (1 << other.gameObject.layer)) != 0 )
            other.transform.position += m_forcedir * m_force;
    }

    /**
     * @brief   インスペクターの値を反映させる
     */
    private void SubmitStatus()
    {
        // ボックスコライダの有無チェック(無ければ自動付与)
        m_collider = gameObject.GetComponent<BoxCollider>();
        if (m_collider == null) m_collider = gameObject.AddComponent<BoxCollider>();

        m_collider.isTrigger = true;

        // 向きと大きさに応じてコライダの大きさ、オフセットを計算する
        Vector3 scale = new Vector3(1.0f, 1.0f, 1.0f);
        Vector3 center = Vector3.zero;
        if (m_direction == kDirection.Right){ scale.x *= m_distance; center.x += 0.5f * (m_distance - 1); m_forcedir = Vector3.right; }
        if (m_direction == kDirection.Left) { scale.x *= m_distance; center.x -= 0.5f * (m_distance - 1); m_forcedir = Vector3.left; }
        if (m_direction == kDirection.Up)   { scale.y *= m_distance; center.y += 0.5f * (m_distance - 1); m_forcedir = Vector3.up; }
        if (m_direction == kDirection.Down) { scale.y *= m_distance; center.y -= 0.5f * (m_distance - 1); m_forcedir = Vector3.down; }
        if (m_direction == kDirection.Front){ scale.z *= m_distance; center.z += 0.5f * (m_distance - 1); m_forcedir = Vector3.forward; }
        if (m_direction == kDirection.Back) { scale.z *= m_distance; center.z -= 0.5f * (m_distance - 1); m_forcedir = Vector3.back; }
        m_collider.size = scale;
        m_collider.center = center;
    }


    /**
     * @brief   子要素のグラフィックスオブジェクトの変形修正する
     */
    private void SetGraphTransform()
    {
        if (m_visual_obj == null) return;

        // 整形
        m_visual_obj.transform.localPosition = m_collider.center;
        m_visual_obj.transform.localScale = m_collider.size;
    }

    /**
     * @brief   子要素のグラフィックスオブジェクトのマテリアルにパラメータを渡す
     */
    private void SetGraphMaterial()
    {
        if (m_material == null)
        {
            //! 視覚用オブジェクトのメッシュレンダラーコンポーネント(無ければ処理しない)
            MeshRenderer _mesh = m_visual_obj.GetComponent<MeshRenderer>();
            if (_mesh == null) return;

            m_material = _mesh.material;
        }

        // 向きに応じて円の中心をずらす
        Vector4 _effect_center = Vector4.zero;
        if (m_direction == kDirection.Right) { _effect_center = gameObject.transform.position + Vector3.right * -0.5f; }
        if (m_direction == kDirection.Left) { _effect_center = gameObject.transform.position + Vector3.left * -0.5f; }
        if (m_direction == kDirection.Up) { _effect_center = gameObject.transform.position + Vector3.up * -0.5f; }
        if (m_direction == kDirection.Down) { _effect_center = gameObject.transform.position + Vector3.down * -0.5f; }
        if (m_direction == kDirection.Front) { _effect_center = gameObject.transform.position + Vector3.forward * -0.5f; }
        if (m_direction == kDirection.Back) { _effect_center = gameObject.transform.position + Vector3.back * -0.5f; }

        // 円の中心
        if (!_effect_center.Equals(m_material.GetVector("_Center"))) m_material.SetVector("_Center", _effect_center);

        // 流れの速さ
        float val = Mathf.Abs((m_force - m_material.GetFloat("_WindForce")));
        if (val > 0.00001f) m_material.SetFloat("_WindForce", m_force);
    }
}

