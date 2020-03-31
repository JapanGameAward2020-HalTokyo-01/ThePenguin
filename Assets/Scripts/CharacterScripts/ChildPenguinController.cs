/// <summary>
/// @file   ChildPenguinController.cs
/// @brief	子ペンギンの群れを制御するクラス
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildPenguinController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理(childを呼び出して動くようにセットする)
    /// @param (a)	ペンギンtagを持ってるか判定するcollision
    /// </summary>
    private void OnCollisionEnter(Collision a)
    {
        //Penguinタグを持っているobjectに当たったら
        if (a.gameObject.tag == "Penguin")
        {
            //! collision layerをno collisionに
            this.gameObject.layer = 9;
            //! 保持している子供分loopする
            foreach (Transform _child in transform)
            {
                //moveを有効にし、collision layerをpack penguinにする
                _child.gameObject.GetComponent<ChildPenguinMove>().SetMoveTrue();
            }
        }
    }
}
