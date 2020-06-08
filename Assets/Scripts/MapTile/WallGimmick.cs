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
    private GameObject m_Model;

    [SerializeField]
    private EffekseerEmitter[] effeck;

    [SerializeField]
    private EffectSpawner AreaEffect;

    // Start is called before the first frame update
    public override void Start()
    {
        //タイマーのオフセットを設定
        m_timer = m_offset;

        trans=GetComponent<Transform>();

        if(!m_Model)
            m_Model = this.transform.Find("Model").gameObject;

        AreaEffect = GetComponent<EffectSpawner>();
        for(int x = 0; m_length >= x ;x++)
        {
            var pos = trans.transform.position;
            pos += x * trans.transform.right;
            pos.y -= 1.5f;
            AreaEffect.PlayerEffect("MoveWall_Normal", pos, new Vector3(0.5f, 0.5f, 0.5f));

        }

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

                    //バグ対策、強制回転値固定
                    m_Model.transform.localRotation = new Quaternion(0.0f, 1.0f, 0.0f, 0.0f);

                }
                else
                {
                    t = 1.0f;

                    effeck[0].StopRoot();

                    //!飛び出した後の回転処理
                    float turn_time = (m_timer - m_cooltime - m_speed) / m_waittime;

                    m_Model.transform.localRotation = Quaternion.Lerp(new Quaternion(0.0f, 0.0f, 0.0f, 1.0f), new Quaternion(0.0f, 1.0f, 0.0f, 0.0f), turn_time);
                }
            }
            else
            {
                t = (m_timer-m_cooltime) / m_speed;

                //バグ対策、強制回転値固定
                if (t > 0.0f)
                {
                    m_Model.transform.localRotation = new Quaternion(0.0f, 0.0f, 0.0f, 1.0f);
                }

            }
            if(t>1.0f)
            {
                t = 1.0f;
            }
            if(t<0.0f)
            {
                t = 0.0f;

                //！元に戻した回転処理
                if(m_timer < m_cooltime && m_Model.transform.localRotation != new Quaternion(0.0f, 0.0f, 0.0f, 1.0f))
                {
                    float turn_time = (m_timer) / m_cooltime;

                    m_Model.transform.localRotation = Quaternion.Lerp(new Quaternion(0.0f, 1.0f, 0.0f, 0.0f), new Quaternion(0.0f, 0.0f, 0.0f, 1.0f), turn_time);
                }

            }

            //三次関数補間
            t = t * t * (3.0f - 2.0f * t);

            //ブロックを移動させる
            trans.localPosition = new Vector3(t*m_length, 0.0f, 0.0f);

            //!エフェクト関連処理
            {
                var pos = trans.localPosition;
                pos.y += 1.0f;
                effeck[0].gameObject.transform.localPosition = pos;
                effeck[1].gameObject.transform.localPosition = pos;

                if (!effeck[0].exists && t > 0.1 && t < 0.9)
                {
                    effeck[0].Play();
                    effeck[1].Play();
                }

                if (effeck[1].exists && (t < 0.1f || t > 0.9f))
                {
                    effeck[1].StopRoot();
                }
            }

            //終了
            if (m_timer>=2.0f*m_speed+m_cooltime+m_waittime)
            {
                m_timer = 0.0f;

                effeck[0].StopRoot();
            }
        }
    }

    public override void OnActivate()
    {

    }

    public override void OnDeactivate()
    {

    }
}
