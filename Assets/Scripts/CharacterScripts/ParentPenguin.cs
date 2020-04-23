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
    [SerializeField, Tooltip("これ設定しないと動かないよ")]
    private InputHandler m_InputHandler;
    //! 子ペンギンの群れリスト
    [SerializeField, Tooltip("最初から群れにいる子ペンギンを追加してね(最初に追加するサイズをしてする必要がある)")]
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

        //! 最初から群れにいる子ペンギンを群れに追加する処理
        foreach (ChildPenguin _child in m_ChildPenguins)
        {
            _child.SetInPack(this);
        }
    }

    // Update is called once per frame
    protected override void Update()
    {
        //! ベースクラスの更新設定
        base.Update();
    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    private void MoveHandler(Vector3 move)
    {
        //! InputHandlerから取得した移動量を適用
        m_Rigidbody.AddForce(move * m_Rigidbody.mass);

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
        return m_Rigidbody.velocity.magnitude < 0.01f;
    }

    /// <summary>
    /// @brief      ペンギンを群れに追加する
    /// @param      群れ化の対象(ChildPenguinMove)
    /// </summary>
    public void AddToPack(ChildPenguin _child)
    {
        //! InputHandlerから取得した移動量を適用
        m_ChildPenguins.Add(_child);
    }

    /// <summary>
    /// @brief      入力時のイベント
    /// </summary>
    public class InputEvent : InputHandler.InputEventBase
    {
        private ParentPenguin m_ParentPenguin;

        //! コンストラクタ
        public InputEvent(ParentPenguin _Penguin)
        {
            m_ParentPenguin = _Penguin;
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
            m_ParentPenguin.MoveHandler(m_Handler.GetMoveVector() * 100.0f);
        }
    }
}