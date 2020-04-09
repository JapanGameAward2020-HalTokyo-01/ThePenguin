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
    private bool m_Move = false;
    //! 親ペンギン
    private ParentPenguinMove m_Parent;
    public ParentPenguinMove Parent { get { return m_Parent; } }
    //! 自分のRigidbody
    private Rigidbody m_RigidBody;

    // Start is called before the first frame update
    void Start()
    {
        //操作用のRigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();
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
        //! 親ペンギンから取得した移動量を適用
        m_RigidBody.AddForce(move, ForceMode.VelocityChange); 
    }



    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理
    /// @param (a)	群れに追加するか判定するcollision
    /// </summary>
    private void OnCollisionEnter(Collision a)
    {
        if (!m_Move)
        {
            if (a.gameObject.tag == "Penguin")
            {
                //! 群れの子ペンギンから親ペンギンを取得
                this.m_Parent = a.gameObject.GetComponent<ChildPenguinMove>().Parent;

                //! collision layerをpack penguinにする
                this.gameObject.layer = 8;
                //! 親ペンギンの群れに追加する
                this.m_Parent.m_ChildPenguins.Add(this);
                //! 移動を有効にする
                m_Move = true;
            }
            else if (a.gameObject.tag == "ParentPenguin")
            {
                //! 親ペンギンを取得
                this.m_Parent = a.gameObject.GetComponent<ParentPenguinMove>();

                this.gameObject.layer = 8;
                this.m_Parent.m_ChildPenguins.Add(this);
                m_Move = true;
            }
        }
    }
}
