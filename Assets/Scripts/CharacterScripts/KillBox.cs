using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

public class KillBox : MonoBehaviour
{
    //!エフェクトスポーンナー
    private EffectSpawner Effect;

    // Start is called before the first frame update
    void Start()
    {
        Effect = GetComponent<EffectSpawner>();
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
        if(other.gameObject.CompareTag("ParentPenguin"))
        {
            SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.DeadParent);

            if (Effect != null)
                Effect.PlayerEffect("WAAAAAA_P1", other.gameObject.transform.position);

            //! 死亡処理
            other.GetComponent<Penguin>().Kill(false);
        }

        else if(other.gameObject.CompareTag("ChildPenguin"))
        {
            SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.DeadChild);

            if (Effect != null)
                Effect.PlayerEffect("WAAAAAA_P1", other.gameObject.transform.position);

            //! 死亡処理
            other.GetComponent<Penguin>().Kill(false);
        }
    }

    public void OnDrawGizmos()
    {
        BoxCollider boxCollider = GetComponent<BoxCollider>();
        Gizmos.color = new Color(1f,0f,0f,0.5f);
        Gizmos.DrawCube(this.transform.position + boxCollider.center,Vector3.Scale(this.transform.lossyScale,boxCollider.size));
    }
}
