using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossName : MonoBehaviour
{
    private enum NameType
    {
        ICE=0,
        JUNGLE,
        DESERT,
        VOLCANO
    }

    [SerializeField, NonEditableField]
    Sprite m_Name_Ice;
    [SerializeField, NonEditableField]
    Sprite m_Name_Jungle;
    [SerializeField, NonEditableField]
    Sprite m_Name_Desert;
    [SerializeField, NonEditableField]
    Sprite m_Name_Volcano;
    [SerializeField,NonEditableField]
    Animator m_Animator;
    [SerializeField, NonEditableField]
    UnityEngine.UI.Image m_Image;

    [SerializeField]
    NameType m_NameType = NameType.ICE;
    [SerializeField]
    bool m_Play = false;
    [SerializeField,Range(0.0f,1.0f)]
    float m_rate = 1.0f;

    Sprite[] m_Name_List;

    void Awake()
    {
        m_Name_List = new Sprite[4] { m_Name_Ice ,m_Name_Jungle,m_Name_Desert,m_Name_Volcano};
        m_Image.sprite= m_Name_List[(int)m_NameType];
    }

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
