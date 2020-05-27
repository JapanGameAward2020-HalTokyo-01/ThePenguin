using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseAnimatorHandler : MonoBehaviour
{
    [SerializeField]
    private Animator m_Animator = null;

    public Animator animator { get { return m_Animator; } }

    // Start is called before the first frame update
    void Start()
    {
        if (m_Animator == null)
            m_Animator.GetComponentInChildren<Animator>();
    }
}
