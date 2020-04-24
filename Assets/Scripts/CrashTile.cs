/**
* @file     CrashTile.cs
* @brief    崩れる床
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
* @class    CrashTile
* @brief    崩れる床
*/
public class CrashTile : MonoBehaviour
{
    //カウントダウン時間
    public float m_MaxCount = 5.0f;
    //起動フラグ
    private bool m_IsOn = false;
    //Debug表示用
    private int m_DebugCount = 0;

    // Start is called before the first frame update
    void Start()
    {
        m_DebugCount = (int)m_MaxCount;
    }

    // Update is called once per frame
    void Update()
    {
        //カウントダウンする
        if(m_IsOn)
        {
            m_MaxCount -= Time.deltaTime;

            //Debug表示
            if ((int)m_MaxCount != m_DebugCount)
            {
                m_DebugCount = (int)m_MaxCount;
                Debug.Log("CrashTile Count:" + (m_DebugCount));
            }
        }

        //カウントダウンがゼロになると崩れる
        if(m_MaxCount<=0.0f)
        {
            Destroy(this.gameObject);
        }
    }

    void OnTriggerEnter(Collider c)
    {
        //ペンギンレイヤーのオブジェクトと接触
        if (c.gameObject.layer == LayerMask.NameToLayer("PackPenguin")&&!m_IsOn)
        {
            m_IsOn = true;
        }
    }
}
