/// <summary>
/// @file	Penguin.cs
/// @brief	ペンギンのベースクラス
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Penguin : MonoBehaviour
{
    //! Rigidbody
    protected Rigidbody m_Rigidbody;

    protected bool m_IsAlive;

    // Start is called before the first frame update
    protected virtual void Start()
    {
        //! Rigidbody設定
        m_Rigidbody = this.GetComponent<Rigidbody>();

        m_IsAlive = true;
    }

    // Update is called once per frame
    protected virtual void Update()
    {

    }


    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill()
    {
        //! 生存判定をfalseに
        m_IsAlive = false;
    }


    public bool GetLife()
    {
        return m_IsAlive;
    }
}