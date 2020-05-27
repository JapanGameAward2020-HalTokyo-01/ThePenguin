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
    //完全に崩れるまでの時間(フレーム単位)
    public uint m_WaitTime = 20;

    //完全に崩れるまでのカウンター
    private uint m_Count = 0;
    //壊れ具合
    private float m_Percent = 0.0f;
    //起動フラグ
    private bool m_IsCrash = false;
    //
    private uint temp;

    //!エフェクトスポーンナー
    private EffectSpawner Effect;

    // Start is called before the first frame update
    void Start()
    {
        temp = m_MaxCount;
        m_Percent = (float)m_MaxCount / temp;
        GetComponent<Renderer>().material.color = new Color(2.0f*(1.0f - m_Percent), 2.0f*m_Percent, 0);

        Effect = GetComponent<EffectSpawner>();
    }

    // Update is called once per frame
    void Update()
    {
        if(m_IsCrash)
        {
            m_Count++;

            //完全に崩れる
            if(m_Count>=m_WaitTime)
            {
                if (Effect != null)
                    Effect.PlayerEffect("BORO", gameObject.transform.position);

                Destroy(this.gameObject);
            }
        }
    }

    //ペンギンと衝突したら
    void OnCollisionEnter(Collision c)
    {
        if(m_IsCrash)
        {
            return;
        }

        //ペンギンレイヤーのオブジェクトと衝突
        if (c.gameObject.layer == LayerMask.NameToLayer("PackPenguin"))
        {
            //かつペンギンのスピードが一定値以上
            if (Vector3.Distance(c.relativeVelocity, Vector3.zero) > m_CountSpeed)
            {
                //カウントダウン
                m_MaxCount--;

                //壊れ具合計算
                m_Percent = (float)m_MaxCount / temp;

                //色変更
                GetComponent<Renderer>().material.color = new Color(2.0f * (1.0f - m_Percent), 2.0f * m_Percent, 0);

                //Debug
                Debug.Log("CrashWall Percent:" + m_Percent);

                if (Effect != null)
                {
                    Effect.PlayerEffect("DON", gameObject.transform.position);
                    Effect.PlayerEffect("CrashRock", gameObject.transform.position, new Vector3(0.5f, 0.5f, 0.5f));
                }

            }

            //カウントがゼロになると崩れる
            if(m_MaxCount<=0)
            {
                m_IsCrash = true;
            }


        }
    }

}
