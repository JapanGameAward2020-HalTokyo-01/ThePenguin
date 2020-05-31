using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossState : MonoBehaviour
{
    public Boss m_Boss { get; private set; }

    public virtual void Init(Boss boss)
    {
        this.m_Boss = boss;

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
        m_Boss.animator.SetBool("OnGoal", true);
    }

    //! 死亡処理
    public virtual void OnKill()
    {

    }
}
