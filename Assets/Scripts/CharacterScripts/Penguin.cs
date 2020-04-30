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
    //! RayCastの有効化
    static private bool m_IsRayCast = true;

    //! RayCastの判定
    [SerializeField]
    private LayerMask m_CastHitLayer;

    //! Rigidbody
    protected Rigidbody m_Rigidbody;

    //! 生存変数
    public bool IsAlive { get; protected set; } = true;

    // Start is called before the first frame update
    protected virtual void Start()
    {
        //! Rigidbody設定
        m_Rigidbody = this.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    protected virtual void Update()
    {

    }

    protected virtual void FixedUpdate()
    {
        if (m_IsRayCast && IsAlive)
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
        //! 生存判定をfalseに
        IsAlive = false;
        //! オブジェを無効にする
        gameObject.SetActive(false);

    }
}