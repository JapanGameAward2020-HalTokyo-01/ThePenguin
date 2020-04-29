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

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.CompareTag("ParentPenguin") || other.gameObject.CompareTag("ChildPenguin"))
        {
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
