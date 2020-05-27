using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossGimmickManager : MonoBehaviour
{
    //前Emitからのの時間
    [SerializeField,NonEditableField]
    private float m_Timer = 0f;

    [SerializeField]
    private EmitParameter m_FirstEmitter = null;

    [SerializeField]
    private List<EmitParameter> m_GimmickEmitter = new List<EmitParameter>();

    [SerializeField,NonEditableField]
    private int m_EmitCounter = 0;
    [SerializeField,NonEditableField]
    private int m_MaxCount = 0;

    private EmitParameter m_CurrentEmitter;

    //終了
    private bool m_IsEnd = false;

    // Start is called before the first frame update
    void Start()
    {
        m_EmitCounter = 0;

        m_MaxCount = m_GimmickEmitter.Count;

        if (m_MaxCount != 0)
        {
            foreach (var emitter in m_GimmickEmitter)
            {
                emitter.SetActive(false);
            }

            if (m_GimmickEmitter.Count != 0)
                m_CurrentEmitter = m_GimmickEmitter[m_EmitCounter];
            
        }

        if (m_FirstEmitter != null)
        {
            m_FirstEmitter.SetActive(false);
            m_CurrentEmitter = m_FirstEmitter;
            m_EmitCounter = -1;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (m_IsEnd) return;

        if (m_Timer >= m_CurrentEmitter.m_BeforeEmitTime)
        {
            m_CurrentEmitter.Emit();

            m_Timer = 0f;

            if(m_MaxCount == 0)
            {
                m_IsEnd = true;
            }
            else
            {
                m_EmitCounter = (m_EmitCounter + 1) % m_MaxCount;
                m_CurrentEmitter = m_GimmickEmitter[m_EmitCounter];
            }
        }

        m_Timer += Time.deltaTime;
    }

    [System.Serializable]
    public class EmitParameter
    {
        public float m_BeforeEmitTime = 0f;

        public List<BaseGimmickEmitter> m_GimmickEmitter;

        public void SetActive(bool active)
        {
            foreach(var emitter in m_GimmickEmitter)
            {
                emitter.SetActive(active);
            }
        }

        public void Emit()
        {
            foreach(var emitter in m_GimmickEmitter)
            {
                emitter.Emit();
            }
        }
    }
}