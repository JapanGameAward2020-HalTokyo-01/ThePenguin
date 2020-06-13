using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TitlePenguin : MonoBehaviour
{
    bool m_CanJump = true;
    int jumpTimer = 0;

    void Start()
    {
        
    }

    void Update()
    {
        if ((Input.GetButtonDown("MenuSubmit1") || Input.GetButtonDown("MenuSubmit2") || 
            Input.GetButtonDown("MenuSubmit3") || Input.GetButtonDown("MenuSubmit4")) &&
            !GetComponent<Animator>().GetCurrentAnimatorStateInfo(0).IsName("Goal") && m_CanJump)
        {
            GetComponent<Animator>().SetTrigger("OnPress");
            m_CanJump = false;
        }

        if (!m_CanJump)
        {
            jumpTimer++;
            if (jumpTimer > 30)
            {
                jumpTimer = 0;
                m_CanJump = true;
            }
        }
    }
}
