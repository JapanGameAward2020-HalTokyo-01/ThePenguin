/**
* @file     RandomRotate.cs
* @brief    スタート時ランダム回転
* @author   En Yuki
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class RandomRotate : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        gameObject.transform.rotation = Quaternion.AngleAxis(Random.Range(0.0f, 360.0f), Vector3.up);
    }
}
