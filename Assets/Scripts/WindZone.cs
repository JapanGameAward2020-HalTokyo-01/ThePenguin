/**
 * @file    WindZone.cs
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
enum kDirection { Up, Down, Front, Back, Right, Left };

/**
 * @class   WindZoneクラス
 * @brief   指定した方向にペンギンを移動させる空間
 */
public class WindZone : MonoBehaviour
{
    //! 影響を与えるタグ名
    [SerializeField, Tooltip("影響を与える対象のタグ")]
    private string m_tag;

    //! 風の吹く方向(列挙)
    [SerializeField, Tooltip("風向き")]
    private kDirection m_direction = kDirection.Up;

    //! 風が影響する距離
    [SerializeField, Range(1, 10), Tooltip("風の影響範囲(長さ：タイル単位)")]
    private int m_distance = 1;

    //! 風の強さ
    [SerializeField, Tooltip("風速(影響範囲の中では均一の強さ)\n目安：座標操作時(0.02), 物理挙動時(20.0)")]
    private float m_force = 0.0f;

    //! 物理ベースの挙動に切り替える
    [SerializeField, Tooltip("物理ベースの挙動(つまりAddForce)させる場合はここにチェックを入れる")]
    private bool m_isphysical = false;

    //! 風の吹く方向(ベクトル)
    private Vector3 m_forcedir = Vector3.zero;

    //! コライダ
    private BoxCollider m_collider = null;

    /**
     * @brief   (override)Gizmoへの描画を行う(風向き)
     */
    private void OnDrawGizmos()
    {
        SubmitStatus();
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
    }

    /**
     * @brief   (override)トリガーに触れているコライダーに対し実行する
     */
    private void OnTriggerStay(Collider other)
    {
        // 影響するオブジェクトであるか判定
        if (other.gameObject.tag != m_tag.ToString()) return;
        if (other.attachedRigidbody == null) return;

        // 座標を直接操作するか物理ベースの挙動にするか切り替えられるように(将来的に択一)
        if (m_isphysical)
            other.attachedRigidbody.AddForce(m_forcedir * m_force, ForceMode.Force);
        else
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
}

