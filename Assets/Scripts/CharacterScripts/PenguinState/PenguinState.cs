/**
 * @file    PenguinState.cs
 * @brief   状態遷移 アニメーションなどに利用したい
 * @author  池田 博雅
 */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinState : MonoBehaviour
{

    public Penguin penguin { get; private set; }

    public void Init(Penguin penguin)
    {
        this.penguin = penguin;
    }

    //! 初期化処理
    public virtual void OnStart()
    {

    }

    //! 更新処理
    public virtual void OnUpdate()
    {

    }

    //! 一定処理
    public virtual void OnFixedUpdate()
    {

    }

    //! 終了処理
    public virtual void OnRelease()
    {

    }

    //! 死亡処理
    public virtual void OnKill()
    {

    }

    //! 移動中
    public virtual void OnMoving()
    {

    }
}
