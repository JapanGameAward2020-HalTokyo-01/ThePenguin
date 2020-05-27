using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Component_Counter : MonoBehaviour
{
    [SerializeField]
    private List<UI_Component_Number> m_Numbers;

    [SerializeField]
    private int m_Counter = 0;
    [SerializeField]
    private float m_DigitSpace = 10.0f;
    [SerializeField]
    private bool m_IsEnable = false;
    [SerializeField]
    private uint m_Speed = 10;

    private int m_Digit;
    private int m_CurrentCounter;

    // Start is called before the first frame update
    void Start()
    {
        m_Digit = m_Numbers.Count;
        m_CurrentCounter = m_Counter;
        SetDigit();
    }

    // Update is called once per frame
    void Update()
    {
        if(m_CurrentCounter!=m_Counter)
        {
            int max_ver = Mathf.Max((int)(Time.deltaTime * m_Speed),2);
            int ver;
            if (m_Counter > m_CurrentCounter)
            {
                ver = Mathf.Max((m_Counter - m_CurrentCounter) % max_ver, 1);
            }
            else
            {
                ver = Mathf.Min((m_Counter - m_CurrentCounter) % max_ver, -1);
            }
            m_CurrentCounter += ver;
            SetDigit();
        }
    }

    void OnValidate()
    {
        m_Digit= m_Numbers.Count;

        SetEnable(m_IsEnable);

        int i = 0;
        foreach(var number in m_Numbers)
        {
            number.transform.localPosition = new Vector3(-1.0f * m_DigitSpace * i, 0, 0);
            i++;
        }
        SetCount(m_Counter);
        SetDigit();
    }

    public void SetCount(int count)
    {
        m_Counter = count;
    }
    public void SetEnable(bool enable)
    {
        foreach (var number in m_Numbers)
        {
            number.SetEnable(enable);
        }
        m_IsEnable = enable;
    }
    private void SetDigit()
    {
        int i = 0;
        int temp_count = m_CurrentCounter;
        foreach (var number in m_Numbers)
        {
            int weight = (int)Mathf.Pow(10, i+1);
            
            int ver = temp_count % weight/ (int)Mathf.Pow(10, i);
            temp_count -= ver * (int)Mathf.Pow(10, i);
            Debug.Log(ver);
            number.SetNumber((uint)Mathf.Abs(ver));
            i++;
        }
    }
}
