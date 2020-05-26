/**
* @file     BaseGimmick.cs
* @brief    Gimmickのベース
* @author   池田 博雅
*/
using System.Collections;   
using System.Collections.Generic;
using UnityEngine;

public abstract class BaseGimmick : MonoBehaviour
{
    private bool m_IsActiveGimmick = false;
    public bool IsActiveGimmick
    {
        get { return m_IsActiveGimmick; }
        protected set { m_IsActiveGimmick = value; }
    }

    // Start is called before the first frame update
    public virtual void Start()
    {
        
    }

    // Update is called once per frame
    public virtual void Update()
    {
        
    }

    //ギミックが有効化された時
    public void Activate()
    {
        IsActiveGimmick = true;
        OnActivate();
    }

    public abstract void OnActivate();

    //ギミックが無効化された時
    public void Deactivate()
    {
        IsActiveGimmick = false;
        OnDeactivate();
    }

    public abstract void OnDeactivate();

}
