/**
* @file     Bomb.cs
* @brief    ボスステージ用爆弾ギミック
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BossBomb : BaseGimmick
{
    [SerializeField, Tooltip("カウントダウン秒数")]
    private float m_CountDown = 3.0f;

    [SerializeField, Tooltip("爆心地サイズ")]
    private float m_ExplosionSize = 1.5f;

    [SerializeField, Tooltip("爆風サイズ")]
    private float m_BlastSize = 0.0f;

    [SerializeField, Tooltip("爆風強さ")]
    private float m_BlastPower = 0.0f;

    [SerializeField, Tooltip("爆弾投げる勢い")]
    private float m_ThrowSpeed = 1.0f;

    //! 状態
    private bool m_IsCountDown = false;
    private bool m_IsThrow = false;
    //! カウントダウン秒数初期数値
    private float m_CountDownInit;

    //! カウントダウン表示（仮）オブジェクト
    private GameObject m_CountDownObject;
    //! モデルオブジェクト
    private GameObject m_Model;

    [SerializeField]private Material m_NormalMaterial;
    [SerializeField]private Material m_CountDownMaterial;

    //! エフェクトスポーンナー
    private EffectSpawner Effect;

    //! 爆弾投げられ開始地点
    private GameObject m_Start;
    //! 爆弾投げられ落下地点
    private GameObject m_End;
    //! 爆弾投げられ勢い

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        m_Model = this.transform.Find("Model").gameObject;
        m_Model.transform.Find("Mo_Bomb").gameObject.GetComponent<MeshRenderer>().materials[0].CopyPropertiesFromMaterial(m_NormalMaterial);

        m_Start = this.transform.Find("Start").gameObject;
        m_End = this.transform.Find("End").gameObject;
        m_Start.GetComponent<Renderer>().enabled = false;
        m_End.GetComponent<Renderer>().enabled = false;

        m_Model.transform.position = m_Start.transform.position;
        m_Model.GetComponent<Rigidbody>().isKinematic = true;

        m_CountDownInit = m_CountDown;
        m_CountDownObject.SetActive(false);
    }


    void OnValidate()
    {
        //カウントダウン表示（仮）初期化
        m_CountDownObject = this.transform.Find("CountDown").gameObject;
        m_CountDownObject.GetComponent<TextMeshPro>().text = ((int)m_CountDown).ToString();

        m_Model.transform.position = m_End.transform.position;
    }

    // Update is called once per frame  

    public override void Update()
    {
        base.Update();

        //投げる
        if(m_IsThrow)
        {
            this.Throw();
        }

        //カウントダウン開始
        if (m_IsCountDown)
        {
            m_CountDown -= Time.deltaTime;
            m_CountDownObject.GetComponent<TextMeshPro>().text = ((int)m_CountDown + 1).ToString();
            if (m_CountDown <= 0.0f)
            {
                //爆発処理
                Explode();

                //!エフェクト関連
                {
                    Effect = GetComponent<EffectSpawner>();
                    if (Effect != null)
                        Effect.PlayerEffect("Boom!", m_Model.transform.position, new Vector3(0.5f, 0.5f, 0.5f));

                }

                //消滅
                this.Deactivate();
            }
        }

        //探知範囲とカウントダウンの座標更新
        m_CountDownObject.transform.position = m_Model.transform.position + new Vector3(0.0f, 1.0f, 0.0f);
    }

    /**
     * @bief ギミックの有効化時
     * @param none
     * @return none
     */
    public override void Activate()
    {
        this.gameObject.SetActive(true);
        //m_Model.transform.Find("Mo_Bomb").gameObject.GetComponent<MeshRenderer>().materials[0].CopyPropertiesFromMaterial(m_CountDownMaterial);
        m_IsThrow = true;
    }

    /**
     * @bief ギミックの無効化(終了)時
     * @param none
     * @return none
     */
    public override void Deactivate()
    {
        m_CountDown = m_CountDownInit;
        m_Model.transform.position = m_Start.transform.position;
        m_Model.transform.rotation = new Quaternion(0,0,0,0);
        m_Model.GetComponent<Rigidbody>().isKinematic = true;
        m_CountDownObject.SetActive(false);
        this.gameObject.SetActive(false);
    }

    /**
    * @brief    爆発処理
    * @param(value)   Param Description
    * @return   None
    */
    private void Explode()
    {
        //すべてのペンギンを取得
        Penguin[] _penguins = FindObjectsOfType<Penguin>();
        for (int i = 0; i < _penguins.Length; i++)
        {
            //ペンギンと爆弾距離
            float _length = Vector3.Distance(m_Model.transform.position, _penguins[i].transform.position);

            //ペンギンが爆心地半径内にいたら
            if (_length <= m_ExplosionSize)
            {
                //仮のプレイヤー死亡処理
                Debug.Log("dead");
                _penguins[i].Kill(true);
            }

            //ペンギンが爆心地半径外かつ爆風半径内にいたら
            else if (_length <= m_BlastSize)
            {
                Debug.Log("blast");
                Vector3 _power = (_penguins[i].transform.position - m_Model.transform.position).normalized * m_BlastPower;
                _penguins[i].GetComponent<Rigidbody>().AddForce(_power, ForceMode.Impulse);
            }
        }
    }

    /**
    * @brief    投げる曲線
    * @param(value)   Param Description
    * @return   None
    */
    private void Throw()
    {
        Vector3 _vecNormalized = (m_End.transform.position - m_Start.transform.position).normalized;
        Vector3 _vec = _vecNormalized * m_ThrowSpeed * 0.1f;
        m_Model.transform.position += _vec;
        if ((m_Model.transform.position- m_End.transform.position).sqrMagnitude<0.1f)
        {
            m_Model.transform.position = m_End.transform.position;
            m_Model.GetComponent<Rigidbody>().isKinematic = false;

            m_CountDownObject.SetActive(true);
            m_IsCountDown = true;

            m_IsThrow = false;
        }
    }
}
