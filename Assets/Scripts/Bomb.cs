/**
* @file     Bomb.cs
* @brief    爆弾ギミック
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Bomb : MonoBehaviour
{
    [SerializeField, Tooltip("探知範囲")]
    private float m_DetectionSize = 1.0f;

    [SerializeField, Tooltip("カウントダウン秒数")]
    private float m_CountDown = 3.0f;

    [SerializeField, Tooltip("爆心地サイズ")]
    private float m_ExplosionSize = 1.5f;

    [SerializeField, Tooltip("爆風サイズ")]
    private float m_BlastSize = 0.0f;

    [SerializeField, Tooltip("爆風強さ")]
    private float m_BlastPower = 0.0f;

    //! 状態
    private bool m_IsCountDown = false;

    //探知範囲表示（仮）オブジェクト
    private GameObject m_DetectionSizeObject;
    //カウントダウン表示（仮）オブジェクト
    private GameObject m_CountDownObject;

    // Start is called before the first frame update
    void Start()
    {
        this.transform.parent.GetComponent<Renderer>().material.color = Color.black;
    }


    void OnValidate()
    {
        //探知範囲初期化
        this.GetComponent<SphereCollider>().radius = m_DetectionSize * 0.5f;
        //探知範囲表示（仮）初期化。6.0fは今使ってる赤い円の本来の大きさ
        m_DetectionSizeObject = this.transform.Find("DetectionSize").gameObject;
        m_DetectionSizeObject.GetComponent<SpriteRenderer>().transform.localScale = new Vector3(m_DetectionSize * 6.0f, m_DetectionSize * 6.0f, m_DetectionSize * 6.0f);
        //カウントダウン表示（仮）初期化
        m_CountDownObject = this.transform.Find("CountDown").gameObject;
        m_CountDownObject.GetComponent<TextMeshPro>().text = ((int)m_CountDown).ToString();
        m_CountDownObject.SetActive(false);
    }

    // Update is called once per frame  

    void Update()
    {
        //カウントダウン開始
        if(m_IsCountDown)
        {          
            m_CountDown -= Time.deltaTime;
            m_CountDownObject.GetComponent<TextMeshPro>().text = ((int)m_CountDown + 1).ToString();
            if (m_CountDown <= 0.0f)
            {
                //爆発処理
                Explode();
                //消滅
                Destroy(this.transform.parent.gameObject);
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

    private void OnTriggerEnter(Collider other)
    {
        //探知範囲に当たったオブジェクトのLayerが8番のlayerPackPenguinだったら
        if (other.gameObject.layer == 8)
        {
            m_IsCountDown = true;
            //以下はすべて仮の演出処理
            m_DetectionSizeObject.SetActive(false);
            m_CountDownObject.SetActive(true);
            this.transform.parent.GetComponent<Renderer>().material.color = Color.red;
        }
    }

}
