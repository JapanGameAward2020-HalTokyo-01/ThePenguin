/// <summary>
/// @file	ParentPenguinMove.cs
/// @brief	親ペンギンの挙動(仮)
/// @author	北林和哉
/// </summary>

//using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ParentPenguinMove : MonoBehaviour
{
    //! 子ペンギンの群れリスト
    [SerializeField, Tooltip("最初から群れにいる子ペンギンを追加してね(最初に追加するサイズをしてする必要がある)")]
    private List<ChildPenguinMove> m_ChildPenguins = new List<ChildPenguinMove>();
    //! 自分のRigidbody
    private Rigidbody m_RigidBody;

    // Start is called before the first frame update
    void Start()
    {
        //! Rigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();
        //! 最初から群れにいる子ペンギンを群れに追加する処理
        foreach (ChildPenguinMove _child in m_ChildPenguins)
        {
            _child.SetInPack(this);
        }
    }


    // Update is called once per frame
    void Update()
    {

    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    public void MoveHandler(Vector3 move)
    {
        //! InputHandlerから取得した移動量を適用
        m_RigidBody.AddForce(move * m_RigidBody.mass);

        //! 群れを移動
        foreach (ChildPenguinMove _child in m_ChildPenguins)
        {
            _child.MoveHandler(move);
        }
    }

    /// <summary>
    /// @brief      InputHandlerに親ペンギンが動いているかを渡す
    /// @return     動いているか(bool)
    /// </summary>
    public bool IsMoving()
    {
        //! 移動force残ってるか
        if(m_RigidBody.velocity.magnitude < 0.01)
        {
            return false;
        }
        else
        {
            return true;
        }
    }


    /// <summary>
    /// @brief      ペンギンを群れに追加する
    /// @param      群れ化の対象(ChildPenguinMove)
    /// </summary>
    public void AddToPack(ChildPenguinMove _child)
    {
        //! InputHandlerから取得した移動量を適用
        m_ChildPenguins.Add(_child);
    }
}