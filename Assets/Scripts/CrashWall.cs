/**
* @file     CrashWall.cs
* @brief    崩れる壁
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
* @class    CrashWall
* @brief    崩れる壁
*/
public class CrashWall : MonoBehaviour
{
    //カウント数
    public uint m_MaxCount = 1;
    //カウントされるためのスピード下限
    public float m_CountSpeed = 0.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //ペンギンと衝突したら
    void OnCollisionEnter(Collision c)
    {
        //ペンギンレイヤーのオブジェクトと衝突
        if (c.gameObject.layer == LayerMask.NameToLayer("PackPenguin"))
        {
            //かつペンギンのスピードが一定値以上
            if (Vector3.Distance(c.gameObject.GetComponent<Rigidbody>().velocity, Vector3.zero) > m_CountSpeed)
            {
                //カウントダウン
                m_MaxCount--;

                //Debug
                Debug.Log("CrashWall Count:" + m_MaxCount);
            }

            //カウントがゼロになると崩れる
            if(m_MaxCount<=0)
            {
                Destroy(this.gameObject);
            }
        }
    }

}
