/**
* @file     ObjectVibrate.cs
* @brief    対象オブジェクトの振動を管理するクラス
* @author   李爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions.Must;

/**
* @class    ObjectVibrate
* @brief    対象オブジェクトの振動を管理するクラス
*/
public class ObjectVibrate : MonoBehaviour
{
    //!振動対象
    [SerializeField]
    private GameObject m_TargetObject;       

    //!振動速度
    [SerializeField]
    private Vector3 m_VibrateSpeed;
  
    //!最大振動時間
    [SerializeField]
    public float m_VibrateTimeMax = 0.0f;
    //!現在振動時間
    [SerializeField, NonEditableField]
    private float m_VibrateTime = 0.0f;
    //!振動中フラグ
    [SerializeField]
    public bool OnVibrate { get; set; }
    
    //!初期ポジション、大きさ
    private Vector3 InitPos;
    private float m_Scale;


   

    void Start()
    {
        if(m_TargetObject)
        {
            this.InitPos = m_TargetObject.transform.localPosition;
            m_Scale = m_TargetObject.transform.localScale.x;
            
        }
       
        OnVibrate = false;
    }

    void Update()
    {
        if(OnVibrate)
        {
            m_VibrateTime += Time.deltaTime;
            Vibrate();
            if(m_VibrateTimeMax <= m_VibrateTime)
            {
                OnVibrate = false;
                
                if (m_TargetObject)                
                    m_TargetObject.transform.localPosition = InitPos;
            }
        }
       
    }

    //！振動処理
    private void Vibrate()
    {
        if (m_TargetObject)
        {
            float x = m_VibrateSpeed.x > 0 ? -Mathf.PingPong(Time.time, m_VibrateSpeed.x * m_Scale) :InitPos.x;
            float y = m_VibrateSpeed.y > 0 ? Mathf.PingPong(Time.time, m_VibrateSpeed.y * m_Scale) : InitPos.y;
            float z = m_VibrateSpeed.z > 0 ? Mathf.PingPong(Time.time, m_VibrateSpeed.z * m_Scale) : InitPos.z;

            m_TargetObject.transform.localPosition = new Vector3(x, y, z);
        }

    }

    //！振動開始命令
    public void StartVibrate()
    {
        OnVibrate = true;
        m_VibrateTime = 0.0f;
       
    }

    //！振動停止命令
    public void StopVibrate()
    {
        OnVibrate = false;
        m_VibrateTime = 0.0f;
        if (m_TargetObject)
            m_TargetObject.transform.localPosition = InitPos;
       
    }

    public float GetVibrateTimeMax()
    {
        return m_VibrateTimeMax;
    }
}