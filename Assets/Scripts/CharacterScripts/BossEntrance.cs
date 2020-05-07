using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossEntrance : MonoBehaviour
{
    private PenguinManager m_PenguinManager;

    // Start is called before the first frame update
    void Start()
    {
        m_PenguinManager = FindObjectOfType<PenguinManager>();
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
        if (other.gameObject.CompareTag("ParentPenguin") || other.gameObject.CompareTag("ChildPenguin"))
        {
            //! 無敵処理
            m_PenguinManager.SetInvincible(true);
        }
    }

    public void OnDrawGizmos()
    {
        BoxCollider boxCollider = GetComponent<BoxCollider>();
        Gizmos.color = new Color(1f, 0f, 0f, 0.5f);
        Gizmos.DrawCube(this.transform.position + boxCollider.center, Vector3.Scale(this.transform.lossyScale, boxCollider.size));
    }
}
