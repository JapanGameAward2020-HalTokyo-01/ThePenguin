﻿/// <summary>
/// @file	ParentPenguin.cs
/// @brief	親ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentPenguin : Penguin
{
    //! Rigidbodyのvelocityの大きさ
    [SerializeField, NonEditableField]
    private float m_Magnitude = 0;

    //! ボスステージ判定
    [SerializeField, Space(20)]
    protected bool m_Boss = false;
    public bool Boss { get { return m_Boss; } private set { } }
    //! 無敵状態移行数値
    [SerializeField]
    private float m_ChargeThreshold;
    //! 無敵状態解除数値
    [SerializeField]
    private float m_MinInvicibleVelocity;

    //! 再移動可能数値
    [SerializeField, Space(20)]
    private float m_MoveThreshhold = 0.01f;

    //! 子ペンギンの群れリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    //! 親ペンギンの死亡処理
    public System.Action<ParentPenguin> onKillEvent;

    protected override void Awake()
    {
        base.Awake();

        //! 親ペンギンの死亡処理に自分を渡す(今後必要かも知れないので)
        onKillEvent = delegate (ParentPenguin parent) { };
    }

    // Start is called before the first frame update
    protected override void Start()
    {
        //! ベースクラスの初期設定
        base.Start();

        //! InputHandlerの設定忘れ用の処理
        m_InputHandler = FindObjectOfType<InputHandler>();

        //! InputHandlerにEvent登録
        m_InputHandler.RegisterInputEvent(new InputEvent(this));
    }


    protected override void Update()
    {
        base.Update();

        //! Rigidbodyのvelocityを格納
        m_Magnitude = m_Rigidbody.velocity.magnitude;

        //! ボスステージかつ無敵状態なら
        if (m_Boss && m_Invincible)
        {
            //! 無敵状態解除処理
            if (m_Rigidbody.velocity.magnitude <= m_MinInvicibleVelocity)
            {
                Invincible(false);
            }
        }
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public override void Kill(bool Gimmick)
    {
        //! ベースクラス
        base.Kill(Gimmick);
        //! ゲームオーバーになる
        onKillEvent(this);
    }

    /// <summary>
    /// @brief      ペンギンの無敵状態変更処理
    /// </summary>
    public override void Invincible(bool inv)
    {
        //! 無敵状態変更
        base.Invincible(inv);

        //! 群れの無敵状態変更
        foreach (ChildPenguin _child in m_ChildPenguins)
        {
            _child.Invincible(inv);
        }
    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    protected override void MoveHandler(Vector3 move)
    {
        //! ボスステージ判定
        if (m_Boss)
        {
            //! 無敵状態判定
            if (m_InputHandler.Power >= m_ChargeThreshold)
            {
                Invincible(true);
            }
        }
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
        return m_Rigidbody.velocity.magnitude > m_MoveThreshhold;
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