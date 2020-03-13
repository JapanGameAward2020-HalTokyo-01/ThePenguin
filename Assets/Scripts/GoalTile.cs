/**
* @file     GoalTile.cs
* @brief   ゴールタイル
* @author   En Yuki
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoalTile : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //Trigger
    void OnTriggerEnter(Collider other)
    {
        //親ペンギンと子ペンギンにのみ反応する
        if (other.GetComponentInParent<ParentPenguinMove>() != null || other.GetComponentInParent<ChildPenguinMove>() != null)
        {
            Goal();
        }
    }

    /**
    * @brief    ゴール処理
    * @param(viod)   なし
    * @return   None
    */
    void Goal()
    {
        //仮処理
        Debug.Log("Goal");
    }
}
