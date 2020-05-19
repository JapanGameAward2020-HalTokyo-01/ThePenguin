using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossGimmickManager : MonoBehaviour
{
    [SerializeField,NonEditableField]
    private float m_Timer = 0f;

    [SerializeField]
    private List<GimmickEmitter> m_GimmickEmmiter = new List<GimmickEmitter>();

    // Start is called before the first frame update
    void Start()
    {
        foreach(var emitter in m_GimmickEmmiter)
        {
            emitter.SetActive(false);
        }
    }

    // Update is called once per frame
    void Update()
    {
        foreach(var emitter in m_GimmickEmmiter)
        {
            if (m_Timer >= emitter.m_EmitTime)
            {
                emitter.Emit();
            }
        }

        m_Timer += Time.deltaTime;
    }

    [System.Serializable]
    public class GimmickEmitter
    {
        public float m_EmitTime = 0f;

        public List<GameObject> m_Gimmicks;

        private bool m_IsEmitted = false;

        public void Emit()
        {
            foreach (var obj in m_Gimmicks)
            {
                obj.SetActive(true);
            }

            m_IsEmitted = true;
        }

        public void SetActive(bool active)
        {
            foreach (var obj in m_Gimmicks)
            {
                obj.SetActive(active);
            }
        }
    }

}
