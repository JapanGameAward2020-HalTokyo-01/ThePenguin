using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossGimmickManager : MonoBehaviour
{
    //前Emitからのの時間
    [SerializeField,NonEditableField]
    private float m_Timer = 0f;

    [SerializeField]
    private List<GimmickEmitter> m_GimmickEmitter = new List<GimmickEmitter>();

    [SerializeField]
    private int m_EmitCounter = 0;
    [SerializeField]
    private int m_MaxCount = 0;

    private GimmickEmitter m_CurrentEmitter;

    private bool m_IsEnd = false;

    // Start is called before the first frame update
    void Start()
    {
        m_EmitCounter = 0;

        m_MaxCount = m_GimmickEmitter.Count;

        foreach(var emitter in m_GimmickEmitter)
        {
            emitter.SetActive(false);
        }

        if (m_GimmickEmitter.Count != 0)
        {
            m_CurrentEmitter = m_GimmickEmitter[m_EmitCounter];
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (m_EmitCounter >= m_MaxCount) return;

        if (m_Timer >= m_CurrentEmitter.m_BeforeEmitTime)
        {
            m_CurrentEmitter.Emit();

            m_Timer = 0f;
            m_EmitCounter++;
            if (m_EmitCounter < m_MaxCount)
                m_CurrentEmitter = m_GimmickEmitter[m_EmitCounter];
        }

        m_Timer += Time.deltaTime;
    }

    [System.Serializable]
    public class GimmickEmitter
    {
        [Tooltip("開始または前攻撃からの時間")]
        public float m_BeforeEmitTime = 0f;

        public List<BaseGimmick> m_Gimmicks;

        public void Emit()
        {
            foreach (var obj in m_Gimmicks)
            {
                obj.Activate();
            }
        }

        public void SetActive(bool active)
        {
            foreach (var obj in m_Gimmicks)
            {
                obj.gameObject.SetActive(active);
            }
        }
    }

}
