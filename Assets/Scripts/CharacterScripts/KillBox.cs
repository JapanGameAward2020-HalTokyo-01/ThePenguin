using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillBox : MonoBehaviour
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
    /// @brief          ペンギンの死亡判定処理
    /// @param (other)	判定するcollision
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        //! ペンギンだったら
        if(other.gameObject.CompareTag("ParentPenguin") || other.gameObject.CompareTag("ChildPenguin"))
        {
            //! 死亡処理
            other.GetComponent<Penguin>().Kill();
        }
    }

    public void OnDrawGizmos()
    {
        BoxCollider boxCollider = GetComponent<BoxCollider>();
        Gizmos.color = Color.red;
        Gizmos.DrawCube(this.transform.position + boxCollider.center,Vector3.Scale(this.transform.localScale,boxCollider.size));
    }
}
