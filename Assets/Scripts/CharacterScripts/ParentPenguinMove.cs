/// <summary>
/// @file	ParentPenguinMove.cs
/// @brief	親ペンギンの挙動(仮)
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ParentPenguinMove : MonoBehaviour
{
    //! 子ペンギンの群れリスト
    [HideInInspector]
    public List<ChildPenguinMove> m_ChildPenguins;
    //! 自分のRigidbody
    private Rigidbody m_RigidBody;


    //! 入力用のInputHandler
    [SerializeField, Tooltip("コントローラー入力処理")]
    public InputHandler m_Input;

    // Start is called before the first frame update
    void Start()
    {
        //! Rigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        //InputHandlerが起動中だったら
        if (m_Input.CurrentState == InputHandler.State.Run)
        {
            //! InputHandlerから移動量を取得
            Vector3 _move = m_Input.GetMoveVector();
            //! 親ペンギンを移動
            MoveHandler(_move);
            //! 群れを移動
            foreach (ChildPenguinMove _child in m_ChildPenguins)
            {
                _child.MoveHandler(_move);
            }
        }
    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    private void MoveHandler(Vector3 move)
    {
        //! InputHandlerから取得した移動量を適用
        m_RigidBody.AddForce(move, ForceMode.VelocityChange);
    }
}