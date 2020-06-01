/**
* @file     Bound
* ll.cs
* @brief    バウンドする壁
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoundWall : MonoBehaviour
{
    [SerializeField]
    private float m_Bounciness = 1.0f;

    //!エフェクトスポーンナー
    private EffectSpawner Effect;

    // Start is called before the first frame update
    void Start()
    {
        Effect = GetComponentInParent<EffectSpawner>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        //当たったオブジェクトのLayerが8番のlayerPackPenguinだったら
        if (other.gameObject.layer == 8)
        {
            //現在の速度ベクトル一旦保存
            Vector3 _velocity = other.gameObject.GetComponent<Rigidbody>().velocity;
            other.gameObject.GetComponent<Rigidbody>().velocity = new Vector3(0, 0, 0);

            //当たってる面の方向判定
            Vector3 _force;
            if (this.gameObject.name == "triggerX")
            {
                _force = new Vector3(_velocity.x * 1.0f, 0.0f, _velocity.z * -1.0f) * other.gameObject.GetComponent<Rigidbody>().mass * m_Bounciness;
                other.gameObject.GetComponent<Rigidbody>().AddForce(_force, ForceMode.Impulse);
            }
            if (this.gameObject.name == "triggerZ")
            {
                _force = new Vector3(_velocity.x * -1.0f, 0.0f, _velocity.z * 1.0f) * other.gameObject.GetComponent<Rigidbody>().mass * m_Bounciness;
                other.gameObject.GetComponent<Rigidbody>().AddForce(_force, ForceMode.Impulse);
            }

            if (Effect != null)
            {
                var pos = transform.position;

                pos.y += 1.0f;

                Effect.PlayerEffect("BOYON", pos, new Vector3(0.5f, 0.5f, 0.5f));
            }

        }
    }

}
