/// <summary>
/// @file   DownBlock.cs
/// @brief  つぶすギミック
/// @author	池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DownUpBlock : FallBlock
{
    [SerializeField]
    private float m_UpWaitTime = 3f;

    [SerializeField]
    private float m_UpSpeed = 1f;

    [SerializeField]
    private float m_CoolDownTime = 1f;

    private bool m_IsDown = true;
    private bool m_IsKill = false;

    //!エフェクトスポーンナー
    private EffectSpawner Effect;
    //!振動処理クラス
    private ObjectVibrate m_ObjectVibrate;

    public override void Start()
    {
        base.Start();

        m_Time += m_UpWaitTime;

        if (!Effect)
            Effect = GetComponent<EffectSpawner>();

        if (!m_ObjectVibrate)
            m_ObjectVibrate = GetComponent<ObjectVibrate>();
    }

    // Update is called once per frame
    public override void Update()
    {
        if (m_IsDown)
            DownState();    //下への状態遷移
        else
            UpState();      //上への状態遷移

        m_Block.transform.position = this.transform.position + Vector3.down * m_CurrentHeight;

        m_Time += Time.deltaTime;
    }

    void DownState()
    {
        if(m_Time + m_ObjectVibrate.GetVibrateTimeMax() >= m_UpWaitTime)
            m_ObjectVibrate.StartVibrate();

        if (m_Time < m_UpWaitTime) return;

        m_ObjectVibrate.StopVibrate();
        m_IsKill = true;
        m_CurrentHeight += m_DownSpeed * Time.deltaTime;

        if (m_CurrentHeight < m_Height) return;

        m_Time = 0f;
        m_IsKill = false;
        m_IsDown = !m_IsDown;
        m_CurrentHeight = m_Height;

        //!エフェクト関連
        {
            
            var pos = m_Block.transform.position;
            pos.y += 1.0f;

            if (Effect != null)
                Effect.PlayerEffect("DOSIN", pos);
        }
    }

    void UpState()
    {
        if (m_Time < m_CoolDownTime) return;
        
        m_CurrentHeight -= m_UpSpeed * Time.deltaTime;

        if (m_CurrentHeight > 0f) return;
        
        m_Time = 0f;
        m_CurrentHeight = 0f;
        m_IsDown = !m_IsDown;
            
    }

    public override void OnActivate()
    {
        m_Time += m_UpWaitTime;
        this.gameObject.SetActive(true);
    }

    public override void OnTriggerEnter(Collider other)
    {
        if (m_IsKill && other.TryGetComponent<Penguin>(out Penguin hit))
        {
            hit.Kill(true);
        }
    }
}
