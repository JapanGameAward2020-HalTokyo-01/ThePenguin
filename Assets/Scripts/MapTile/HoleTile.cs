/**
* @file     HoleTile.cs
* @brief    穴タイル
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class HoleTile : MonoBehaviour
{
    // Start is called before the first frame update
    
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //ペンギンが穴に落ちたらの処理
    private void OnTriggerEnter(Collider other)
    {
        //トリガーに当たったオブジェクトのTagがPlayerだったら
        if(other.tag=="Player")
        {
            //仮処理
            Debug.Log("Drop");
        }
    }
}
