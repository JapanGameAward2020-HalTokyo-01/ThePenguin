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
    //! 移動の有効・無効
    private bool m_InPack = false;
    //! 親ペンギン
    private ParentPenguin m_Parent;
    //! 親ペンギンの参照用
    public ParentPenguin Parent { get { return m_Parent; } }

    //! 移動速度
    [SerializeField, Tooltip("子ペンギンの移動速度(1がベース)"), Range(0.0f, 2.0f)]
    private float m_BaseSpeed = 1.0f;
    //! 移動遅延
    [SerializeField, Tooltip("子ペンギンの移動開始までの遅延"), Range(0.0f, 5.0f)]
    private float m_Delay = 1.0f;

    private GameObject m_PackCollider;

    // Start is called before the first frame update
    protected override void Start()
    {
        //ベースクラスの初期設定
        base.Start();

        if (!m_InPack)
        {
            m_PackCollider = transform.GetChild(0).gameObject;
        }
    }
    // Update is called once per frame
    protected override void Update()
    {
        //ベースクラスの更新設定
        base.Update();
    }


    /// <summary>
    /// @brief      親ペンギンの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    public void MoveHandler(Vector3 move)
    {
        //System.Diagnostics.Stopwatch stopwatch = new System.Diagnostics.Stopwatch();
        //stopwatch.Start();

        if (m_Delay != 0.0f)
        {
            //! 遅延用のCouroutine
            StartCoroutine(MoveCoroutine(move));
        }
        else
        {
            m_Rigidbody.AddForce(move * m_Rigidbody.mass * m_BaseSpeed);
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

        //! 親ペンギンから取得した移動量を適用
        m_Rigidbody.AddForce(move * m_Rigidbody.mass * m_BaseSpeed);
        yield break;
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
            gameObject.layer = 8;
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
        //! 移動を有効にする
        m_InPack = true;
    }

}
