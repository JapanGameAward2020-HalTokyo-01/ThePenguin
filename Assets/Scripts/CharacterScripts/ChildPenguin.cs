/// <summary>
/// @file   ChildPenguin.cs
/// @brief	子ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildPenguin : Penguin
{
    [Space(10)]
    //! 移動の有効・無効
    //! 子ペンギンの群れ化
    [SerializeField, Tooltip("子ペンギンの群れ化")]
    private bool m_InPack = false;
    public bool InPack { get { return m_InPack; } }

    //! 群れ化する為の当たり判定
    [SerializeField]
    private GameObject m_PackCollider;

    [SerializeField, Tooltip("子ペンギンの移動方向を反転する")]
    private bool m_Reverse = false;
    
    //! 移動速度
    [SerializeField, Tooltip("子ペンギンの移動速度(1がベース)"), Range(0.0f, 4.0f), Space(20)]
    private float m_BaseSpeed = 1.0f;
    //! 移動遅延
    [SerializeField, Tooltip("子ペンギンの移動開始までの遅延"), Range(0.0f, 5.0f)]
    private float m_Delay = 1.0f;
    //! 移動遅延

    [LayerField]
    private int m_PackLayer = 8;

    //! 親ペンギン
    public ParentPenguin Parent { get; private set; } = null;

    public Action<ChildPenguin> onKillEvent = delegate (ChildPenguin child) { };
    public Action onPackEvent = delegate () { };

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public override void Kill()
    {
        //! ベースクラス
        base.Kill();
        onKillEvent(this);
    }

    /// <summary>
    /// @brief      親ペンギンの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    public void MoveHandler(Vector3 move)
    {
        //! m_Delayがあれば
        if (m_Delay != 0.0f)
        {
            //! 遅延用のCouroutine
            StartCoroutine(MoveCoroutine(move));
        }
        else
        {
            //! 重要な処理のため、分岐で共時性を保つためにまとめる。速度は変わらない。
            Move(move);
        }
    }

    /// <summary>
    /// @brief      遅延ありきの移動Coroutine
    /// @param      移動量(Vector3)
    /// </summary>
    IEnumerator MoveCoroutine(Vector3 move)
    {
        //! m_Delay分待つ
        yield return new WaitForSeconds(m_Delay);
        //! 重要な処理のため、分岐で共時性を保つためにまとめる。速度は変わらない。
        Move(move);
        yield break;
    }

    /// <summary>
    /// @brief      移動用関数
    /// @param      移動量(Vector3)
    /// </summary>
    private void Move(Vector3 move)
    {
        if (m_Reverse)
        {
            //! 親ペンギンから取得した移動量を反転して適用
            m_Rigidbody.AddForce(-move * m_Rigidbody.mass * m_BaseSpeed);
        }
        else
        {
            //! 親ペンギンから取得した移動量を適用
            m_Rigidbody.AddForce(move * m_Rigidbody.mass * m_BaseSpeed);
        }
    }

    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理
    /// @param (a)	群れに追加するか判定するcollision
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        if (!m_InPack)
        {
            if (other.gameObject.CompareTag("ChildPenguin"))
            {
                //! 群れの子ペンギンから親ペンギンを取得
                Parent = other.gameObject.GetComponent<ChildPenguin>().Parent;
            }
            else if (other.gameObject.CompareTag("ParentPenguin"))
            {
                //! 親ペンギンを取得
                Parent = other.gameObject.GetComponent<ParentPenguin>();
            }

            if (Parent)
            {
                //! 親ペンギンの群れに追加する
                Parent.AddToPack(this);
            }
        }
    }

    /// <summary>
    /// @brief      群れ化処理
    /// @param      親ペンギン(ParentPenguinMove)
    /// </summary>
    public void SetInPack(ParentPenguin parent)
    {
        //! 親ペンギンを取得
        this.Parent = parent;

        this.onPackEvent();

        //! collision layerをpack penguinにする
        gameObject.layer = m_PackLayer;

        //! packcolliderを削除 
        Destroy(m_PackCollider);

        //! 移動を有効にする
        m_InPack = true;
    }

}
