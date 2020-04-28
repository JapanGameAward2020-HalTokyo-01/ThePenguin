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
    //! RayCastの判定
    [SerializeField]
    private LayerMask m_CastHitLayer;

    //! Rigidbody
    protected Rigidbody m_Rigidbody;

    //! 生死判定
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

    protected virtual void FixedUpdate()
    {
        if (m_IsAlive)
        {
            RaycastHit hit;
            //! Hitしてなければ死亡
            if (!Physics.Raycast(this.transform.position, -this.transform.up, out hit, 10f, m_CastHitLayer))
            {
                Kill();
            }
        }
    }


    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill()
    {
        Debug.Log("Dead:" + gameObject.name);

        //! 生存判定をfalseに
        m_IsAlive = false;
    }


    public bool GetLife()
    {
        return m_IsAlive;
    }
}