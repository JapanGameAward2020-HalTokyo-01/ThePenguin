/**
* @file     WallGimmick.cs
* @brief    押し出す壁
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

/**
* @class    WallGimmick
* @brief    押し出す壁
*/
public class WallGimmick : BaseGimmick
{
    //パラメータ宣言
    [SerializeField, Tooltip("飛び出す長さ"),Range(0,50)]
    private float m_length = 1.0f;

    [SerializeField, Tooltip("飛び出す速度"), Range(0, 10)]
    private float m_speed = 0.1f;

    [SerializeField, Tooltip("何秒ごとに飛び出るか"), Range(0, 10)]
    private float m_cooltime = 3.0f;

    [SerializeField, Tooltip("飛び出した後何秒待つか"), Range(0, 10)]
    private float m_waittime = 3.0f;

    [SerializeField, Tooltip("タイマーのオフセット"), Range(0, 10)]
    private float m_offset = 0.0f;

    //タイマー
    private float m_timer = 0.0f;

    private Transform trans;

    [SerializeField]
    private EffekseerEmitter effeck;

    // Start is called before the first frame update
    public override void Start()
    {
        //タイマーのオフセットを設定
        m_timer = m_offset;

        trans=GetComponent<Transform>();

    }

    // Update is called once per frame
    public override void Update()
    {
        //タイマー更新
        m_timer += Time.deltaTime;

        {
            //起動中

            //時間経過率
            float t = 0.0f;
            if(m_timer>m_cooltime+m_speed)
            {

                if (m_timer > m_speed + m_cooltime + m_waittime)
                {
                    t = 1.0f - (m_timer - m_speed - m_cooltime - m_waittime) / m_speed;
                }
                else
                {
                    t = 1.0f;

                    effeck.StopRoot();
                }
            }
            else
            {
                t = (m_timer-m_cooltime) / m_speed;

            }
            if(t>1.0f)
            {
                t = 1.0f;
            }
            if(t<0.0f)
            {
                t = 0.0f;

            }

            //三次関数補間
            t = t * t * (3.0f - 2.0f * t);

            //ブロックを移動させる
            trans.localPosition = new Vector3(t*m_length, 0.0f, 0.0f);

            //!エフェクト関連処理
            {
                var pos = trans.localPosition;
                pos.y += 1.5f;
                effeck.gameObject.transform.localPosition = pos;

                if (!effeck.exists && t > 0.1 && t < 0.9)
                {
                    effeck.Play();

                    effeck.speed = 3.0f * m_speed;
                }
            }

            //終了
            if (m_timer>=2.0f*m_speed+m_cooltime+m_waittime)
            {
                m_timer = 0.0f;

                effeck.StopRoot();
            }
        }
    }

    public override void Activate()
    {
    
    }

    public override void Deactivate()
    {
        
    }
}
