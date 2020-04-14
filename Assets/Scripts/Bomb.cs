/**
* @file     Bomb.cs
* @brief    爆弾ギミック
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bomb : MonoBehaviour
{
    [SerializeField, Tooltip("カウントダウン秒数")]
    private float m_CountDown = 3.0f;

    [SerializeField, Tooltip("爆心地サイズ")]
    private float m_ExplosionSize = 1.5f;

    [SerializeField, Tooltip("爆風サイズ")]
    private float m_BlastSize = 3.0f;

    [SerializeField, Tooltip("爆風強さ")]
    private float m_BlastPower = 3.0f;

    //! 状態
    private bool m_IsCountDown = false;

    // Start is called before the first frame update
    void Start()
    {
        //初期設定
        this.GetComponent<Renderer>().material.color = Color.black;
    }

    // Update is called once per frame  
    
    void Update()
    {
        //カウントダウン開始
        if(m_IsCountDown)
        {
            m_CountDown -= Time.deltaTime;
            if(m_CountDown <= 0.0f)
            {
                //爆弾処理
                Explode();
                //消滅
                Destroy(this.gameObject);
            }
        }
    }

    /**
    * @brief    爆発処理
    * @param(value)   Param Description
    * @return   None
    */
    private void Explode()
    {
        //すべてのペンギンを取得
        GameObject[] _penguins = GameObject.FindGameObjectsWithTag("Penguin");
        for (int i = 0; i < _penguins.Length; i++)
        {
            //ペンギンと爆弾距離
            float _length = Vector3.Distance(this.transform.position, _penguins[i].transform.position);

            //ペンギンが爆心地半径内にいたら
            if(_length <= m_ExplosionSize)
            {
                //仮のプレイヤー死亡処理
                Debug.Log("dead");
                Destroy(_penguins[i]);
            }

            //ペンギンが爆心地半径外かつ爆風半径内にいたら
            else if (_length <= m_BlastSize)
            {
                Debug.Log("blast");
                Vector3 _power = (_penguins[i].transform.position - this.transform.position) * m_BlastPower;
                _penguins[i].GetComponent<Rigidbody>().AddForce(_power, ForceMode.Impulse);
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        //コリジョンに当たったオブジェクトのTagがPenguinだったら
        if (collision.gameObject.tag == "Penguin")
        {
            m_IsCountDown = true;
            this.GetComponent<Renderer>().material.color = Color.red;
        }
    }
}
