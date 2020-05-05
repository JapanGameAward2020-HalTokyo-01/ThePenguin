/// <summary>
/// @file	ParentPenguin.cs
/// @brief	親ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentPenguin : Penguin
{
    [SerializeField]
    protected InputHandler m_InputHandler;

    //! 子ペンギンの群れリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    // Start is called before the first frame update
    protected override void Start()
    {
        //! ベースクラスの初期設定
        base.Start();

        //! InputHandlerの設定忘れ用の処理
        if (m_InputHandler == null)
        {
            Debug.LogError("入力ハンドラーの設定がされていません");
        }
        else
        {
            //! InputHandlerにEvent登録
            m_InputHandler.RegisterInputEvent(new InputEvent(this));
        }
    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    protected override void MoveHandler(Vector3 move)
    {
        //! InputHandlerから取得した移動量を適用
        base.MoveHandler(move);

        //! 群れを移動
        foreach (ChildPenguin _child in m_ChildPenguins)
        {
            _child.MoveHandler(move);
        }
    }

    /// <summary>
    /// @brief      InputHandlerに親ペンギンが動いているかを渡す
    /// @return     動いているか(bool)
    /// </summary>
    private bool IsMoving()
    {
        //! 移動force残ってるか
        return m_Rigidbody.velocity.magnitude > 0.01f;
    }

    /// <summary>
    /// @brief      ペンギンを群れに追加する
    /// @param      群れ化の対象(ChildPenguinMove)
    /// </summary>
    public void AddToPack(ChildPenguin _child)
    {
        //! ChilePenguinsへ追加
        m_ChildPenguins.Add(_child);

        //! childを群れ化
        _child.SetInPack(this);
    }

    /// <summary>
    /// @brief      入力ハンドラーを渡す
    /// </summary>
    public InputHandler GetInputHandler()
    {
        return m_InputHandler;
    }

    /// <summary>
    /// @brief      入力時のイベント
    /// </summary>
    public class InputEvent : InputHandler.InputEventBase
    {
        private ParentPenguin m_ParentPenguin;

        //! コンストラクタ
        public InputEvent(ParentPenguin penguin)
        {
            m_ParentPenguin = penguin;
        }

        //! Run状態
        public override void OnRun()
        {
            base.OnRun();
            if (!m_ParentPenguin.IsMoving())
            {
                m_Handler.ChangeState(InputHandler.State.Idle);
            }
        }

        //! Run状態になった時(一回だけの処理)
        public override void TickStateRun()
        {
            base.TickStateRun();
            m_ParentPenguin.MoveHandler(m_Handler.GetMoveVector());
        }
    }

}