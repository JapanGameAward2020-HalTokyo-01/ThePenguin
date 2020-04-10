/// <summary>
/// @file   ChildPenguinMove.cs
/// @brief	子ペンギンの挙動(仮)
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildPenguinMove : MonoBehaviour
{
    //! 移動の有効・無効
    private bool m_InPack = false;
    //! 親ペンギン
    private ParentPenguinMove m_Parent;
    //! 親ペンギンの参照用
    public ParentPenguinMove Parent { get { return m_Parent; } }
    //! 自分のRigidbody
    private Rigidbody m_RigidBody;


    //! 移動速度
    [SerializeField, Tooltip("子ペンギンの移動速度(1がベース)"), Range(0.0f, 2.0f)]
    public float m_BaseSpeed = 1.0f;
    //! 移動遅延
    [SerializeField, Tooltip("子ペンギンの移動開始までの遅延"), Range(0.0f, 5.0f)]
    public float m_Delay = 1.0f;

    // Start is called before the first frame update
    void Start()
    {
        //操作用のRigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();
        m_InPack = false;
    }

    // Update is called once per frame
    void Update()
    {

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
            //! 0でも若干起動分のラグがある
            StartCoroutine(MoveCoroutine(move));
        }
        else
        {
            //! 親ペンギンから取得した移動量を適用
            m_RigidBody.AddForce(move * m_RigidBody.mass * m_BaseSpeed);
        }
    }

    /// <summary>
    /// @brief      遅延ありきの移動
    /// @param      移動量(Vector3)
    /// </summary>
    IEnumerator MoveCoroutine(Vector3 move)
    {
        //! m_Delay分待つ
        yield return new WaitForSeconds(m_Delay);
        //! 親ペンギンから取得した移動量を適用
        m_RigidBody.AddForce(move * m_RigidBody.mass * m_BaseSpeed);
    }

    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理
    /// @param (a)	群れに追加するか判定するcollision
    /// </summary>
    private void OnCollisionEnter(Collision a)
    {
        if (!m_InPack)
        {
            if (a.gameObject.tag == "Penguin")
            {
                //! 群れの子ペンギンから親ペンギンを取得
                this.m_Parent = a.gameObject.GetComponent<ChildPenguinMove>().Parent;
                //! 親ペンギンの群れに追加する
                this.m_Parent.AddToPack(this);

                //! collision layerをpack penguinにする
                gameObject.layer = 8;
                //! 移動を有効にする
                m_InPack = true;
            }
            else if (a.gameObject.tag == "ParentPenguin")
            {
                //! 親ペンギンを取得
                this.m_Parent = a.gameObject.GetComponent<ParentPenguinMove>();
                this.m_Parent.AddToPack(this);

                gameObject.layer = 8;
                m_InPack = true;
            }
        }
    }
}
