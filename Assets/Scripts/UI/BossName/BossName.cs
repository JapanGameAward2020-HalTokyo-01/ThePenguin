using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossName : MonoBehaviour
{
    [SerializeField]
    Animator m_Animator;
    [SerializeField]
    bool m_Play = false;
    [SerializeField,Range(0.0f,1.0f)]
    float m_rate = 1.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnValidate()
    {
        m_Animator.SetBool("Play", m_Play);
        m_Animator.speed = m_rate;
    }

    public void SetPlay(bool play)
    {
        m_Play = play;
        m_Animator.SetBool("Play", m_Play);
    }
}
