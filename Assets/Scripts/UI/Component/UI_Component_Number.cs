using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.UI;

public class UI_Component_Number : MonoBehaviour
{
    [SerializeField]
    private Sprite[] m_Number_Image = new Sprite[10];
    [SerializeField]
    private bool m_IsEnable = false;
    [SerializeField]
    private float m_EnableTime = 1.0f;

    public uint m_Number = 0;


    private Image m_Image;

    // Start is called before the first frame update
    void Start()
    {
        m_Image = GetComponentInChildren<Image>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnValidate()
    {
        m_Image = GetComponentInChildren<Image>();
        SetNumber(m_Number);

        SetEnable(m_IsEnable);
    }

    public void SetNumber(uint number)
    {
        if (m_Image == null)
        {
            return;
        }
        m_Image.sprite = m_Number_Image[number % 10];
    }
    public void SetEnable(bool enable)
    {
        if(m_Image==null)
        {
            return;
        }

        if (enable)
        {
            m_Image.CrossFadeAlpha(1, m_EnableTime, true);
        }
        else
        {
            m_Image.CrossFadeAlpha(0, m_EnableTime, true);
        }
        m_IsEnable = enable;
    }

    public void SetEnableTime(float enabletime)
    {
        if (m_Image == null)
        {
            return;
        }
        m_EnableTime = enabletime;
    }
}
