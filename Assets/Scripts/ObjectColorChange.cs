using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectColorChange : MonoBehaviour
{
    
    private bool ifchangecolor = false;
    //!振動対象
    [SerializeField]
    private GameObject m_CTargetObject;

    //振動中色の切り替え
    [SerializeField]
    private Color m_ChangeColor;

    //振動中色の切り替え
    [SerializeField]
    private int FlameTime=-1;
    private int FlameTimenow;
    //元々の色を保存する
    private Color m_Oldcolor;

    // Start is called before the first frame update
    void Start()
    {
        if (m_CTargetObject)
        {
            m_Oldcolor = new Color(1,1,1,0);
        }
        FlameTimenow = FlameTime;
    }

    // Update is called once per frame
    void Update()
    {
        if (ifchangecolor)
        {
            FlameTimenow--;
            if (FlameTimenow < 0)
            {
                ChangeColorBack();
            }
        }
    }

    public void ChangeColor()
    {
        m_CTargetObject.GetComponent<MeshRenderer>().material.SetColor("_BaseColor", m_ChangeColor);
        ifchangecolor = true;
        FlameTimenow = FlameTime;
    }

    public void ChangeColorBack()
    {
        m_CTargetObject.GetComponent<MeshRenderer>().material.SetColor("_BaseColor", m_Oldcolor);
        ifchangecolor = false;
    }
}
