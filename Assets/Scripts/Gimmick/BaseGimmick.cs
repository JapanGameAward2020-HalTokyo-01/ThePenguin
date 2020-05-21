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
    // Start is called before the first frame update
    public virtual void Start()
    {
        
    }

    // Update is called once per frame
    public virtual void Update()
    {
        
    }

    //ギミックが有効化された時
    public abstract void Activate();

    //ギミックが無効化された時
    public abstract void Deactivate();

}
