/**
* @file     TestGimmick.cs
* @brief    テスト用ギミック
* @author   李　爾捷
*/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestGimmick : MonoBehaviour
{
    //起動したら上に浮く
    void Update()
    {
        if(transform.position.y <= 5.0f)
        {
            Vector3 pos = transform.position;
            pos.y += 0.1f;
            transform.position = pos;
        }
        
    }
}
