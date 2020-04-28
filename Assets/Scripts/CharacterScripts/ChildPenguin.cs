/// <summary>
/// @file   ChildPenguin.cs
/// @brief	子ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildPenguin : Penguin
{
    //! 群れ化する為の当たり判定
    private GameObject m_PackCollider;
    //! 親ペンギン
    private ParentPenguin m_Parent;
    //! 親ペンギンの参照用
    public ParentPenguin Parent { get { return m_Parent; } }

    //! 子ペンギンの群れ化
    [SerializeField, Tooltip("子ペンギンの群れ化")]
    private bool m_InPack = false;
    //! 移動速度
    [SerializeField, Tooltip("子ペンギンの移動速度(1がベース)"), Range(0.0f, 4.0f)]
    private float m_BaseSpeed = 1.0f;
    //! 移動遅延
    [SerializeField, Tooltip("子ペンギンの移動開始までの遅延"), Range(0.0f, 5.0f)]
    private float m_Delay = 1.0f;
    //! 移動遅延
    [SerializeField, Tooltip("子ペンギンの移動方向を反転する")]
    private bool m_Reverse = false;

    [LayerField]
    private int m_PackLayer = 8;

    // Start is called before the first frame update
    protected override void Start()
    {
        //! ベースクラスの初期設定
        base.Start();

        //! はぐれペンギンならm_PackColliderを取得
        if (!m_InPack)
        {
            m_PackCollider = transform.GetChild(0).gameObject;
        }
    }

    // Update is called once per frame
    protected override void Update()
    {
        //! ベースクラスの更新設定
        base.Update();
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public override void Kill()
    {
        //! ベースクラス
        base.Kill();


        //!ここにアニメーション処理など入れる予定

    }


    /// <summary>
    /// @brief      群れに入っているかを渡す
    /// @return     群れ変数(bool)
    /// </summary>
    public bool InPack()
    {
        return m_InPack;
    }

    /// <summary>
    /// @brief      親ペンギンの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    public void MoveHandler(Vector3 move)
    {
        //System.Diagnostics.Stopwatch stopwatch = new System.Diagnostics.Stopwatch();
        //stopwatch.Start();
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
        //stopwatch.Stop();
        //Debug.Log(stopwatch.ElapsedTicks);
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
    private void OnTriggerEnter(Collider a)
    {
        if (!m_InPack)
        {
            if (a.gameObject.CompareTag("ChildPenguin"))
            {
                //! 群れの子ペンギンから親ペンギンを取得
                m_Parent = a.gameObject.GetComponent<ChildPenguin>().Parent;
            }
            else if (a.gameObject.CompareTag("ParentPenguin"))
            {
                //! 親ペンギンを取得
                m_Parent = a.gameObject.GetComponent<ParentPenguin>();
            }

            //! 親ペンギンの群れに追加する
            m_Parent.AddToPack(this);
            //! collision layerをpack penguinにする
            gameObject.layer = m_PackLayer;
            //! 移動を有効にする
            m_InPack = true;
            //! packcolliderを削除 
            Destroy(m_PackCollider);            
        }
    }

    /// <summary>
    /// @brief      親ペンギンから群れ化する
    /// @param      親ペンギン(ParentPenguinMove)
    /// </summary>
    public void SetInPack(ParentPenguin parent)
    {
        //! 親ペンギンを取得
        this.m_Parent = parent;
    }
}
