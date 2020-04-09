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
    private List<ChildPenguinMove> m_ChildPenguins = new List<ChildPenguinMove>();
    //! 自分のRigidbody
    private Rigidbody m_RigidBody;


    //! 入力用のInputHandler
    [SerializeField, Tooltip("コントローラー入力処理")]
    private InputHandler m_Input;

    // Start is called before the first frame update
    void Start()
    {
        //! Rigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();

        //! m_Inputを設定するの忘れてる場合  
        if (m_Input == null)
        {
            m_Input = FindObjectOfType(typeof(InputHandler)) as InputHandler;
            throw new System.Exception("InputHandlerを設定し忘れてる！");
        }
    }

    // Update is called once per frame
    void Update()
    {
        //InputHandlerが起動中だったら
        if (m_Input.CurrentState == InputHandler.State.Run)
        {
            //! InputHandlerから移動量を取得
            Vector3 _move = m_Input.GetMoveVector();
            _move *= m_RigidBody.mass * m_RigidBody.drag;
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
        m_RigidBody.AddForce(move);
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