using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameUI : MonoBehaviour
{
    //! 仮の置き場所
    public PauseMenu m_Pause;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("joystick button 12") && !m_Pause.gameObject.activeSelf)
        {
            m_Pause.gameObject.SetActive(true);
        }
    }
}
