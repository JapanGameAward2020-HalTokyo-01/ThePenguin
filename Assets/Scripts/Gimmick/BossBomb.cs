/**
* @file     Bomb.cs
* @brief    ボスステージ用爆弾ギミック
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Cinemachine;
using Effekseer;

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

    [SerializeField, Tooltip("カメラ振動の強さ")]
    private float m_ShakeCameraPower;

    //! 状態
    private bool m_IsCountDown = false;
    private bool m_IsThrow = false;
    //! カウントダウン秒数初期数値
    private float m_CountDownInit;

    //! 探知範囲表示（仮）オブジェクト
    private GameObject m_DetectionSizeObject;
    //! カウントダウン表示（仮）オブジェクト
    private GameObject m_CountDownObject;
    //! 爆弾オブジェクト
    private GameObject m_Bomb;
    //! モデルオブジェクト
    private GameObject m_Model;

    [SerializeField]
    private Material m_NormalMaterial;
    [SerializeField]
    private Material m_CountDownMaterial;


    //! エフェクトスポーンナー
    private EffectSpawner Effect;
    [SerializeField]
    private EffekseerEmitter m_SparkEffect;

    //! 爆弾投げられ開始地点
    private GameObject m_Start;
    //! 爆弾投げられ落下地点
    private GameObject m_End;

    //!コントローラー振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    //!オブジェクト振動処理クラス
    private ObjectVibrate m_ObjectVibrate;

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        m_Bomb = this.transform.Find("Bomb").gameObject;
        m_Model = m_Bomb.transform.Find("Model").gameObject;
        m_Model.GetComponentInChildren<MeshRenderer>().materials[0].CopyPropertiesFromMaterial(m_NormalMaterial);
        m_DetectionSizeObject = m_Bomb.transform.Find("Collider").gameObject;
        m_DetectionSizeObject.transform.Find("Effect").gameObject.transform.localScale = new Vector3(0.15f * m_ExplosionSize, 0.15f * m_ExplosionSize, 0.15f * m_ExplosionSize);

        m_Start = this.transform.Find("Start").gameObject;
        m_End = this.transform.Find("End").gameObject;
        m_Start.GetComponent<Renderer>().enabled = false;
        m_End.GetComponent<Renderer>().enabled = false;

        m_Model.transform.position = m_Start.transform.position;
        m_Model.GetComponentInChildren<Rigidbody>().isKinematic = true;

        m_CountDownInit = m_CountDown;
        m_CountDownObject.SetActive(false);

        m_ControllerVibration = FindObjectOfType<ControllerVibration>();

        if (!m_ObjectVibrate)
            m_ObjectVibrate = GetComponent<ObjectVibrate>();
    }


    void OnValidate()
    {
        //カウントダウン表示（仮）初期化
        m_CountDownObject = this.transform.Find("CountDown").gameObject;

        //m_Model.transform.position = m_End.transform.position;
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

            if (m_CountDown - m_ObjectVibrate.GetVibrateTimeMax() <= 0.0f)
                m_ObjectVibrate.StartVibrate();

            if (m_CountDown <= 0.0f)
            {
                m_ObjectVibrate.StopVibrate();

                var cinemachineImpulseSource = GetComponent<CinemachineImpulseSource>();

                if (cinemachineImpulseSource)
                    cinemachineImpulseSource.GenerateImpulse(new Vector3(m_ShakeCameraPower, m_ShakeCameraPower, m_ShakeCameraPower));


                //爆発処理
                Explode();

                //!エフェクト関連
                {
                    Effect = GetComponent<EffectSpawner>();
                    if (Effect != null)
                        Effect.PlayerEffect("Boom!", m_Model.transform.position, new Vector3(0.5f, 0.5f, 0.5f));

                    m_DetectionSizeObject.GetComponentInChildren<EffekseerEmitter>().Stop();
                }

                m_ControllerVibration.AddShake(0.7f, 0.3f);

                //消滅
                this.Deactivate();
            }
        }

        //探知範囲とカウントダウンの座標更新
        m_DetectionSizeObject.transform.position = m_Model.transform.position + new Vector3(0.0f, -0.49f, 0.0f);
        m_CountDownObject.transform.position = m_Model.transform.position + new Vector3(0.0f, 2.0f, 0.0f);
    }

    /**
     * @bief ギミックの有効化時
     * @param none
     * @return none
     */
    public override void OnActivate()
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
    public override void OnDeactivate()
    {
        m_CountDown = m_CountDownInit;
        m_IsCountDown = false;
        m_Model.transform.position = m_Start.transform.position;
        m_Model.transform.rotation = new Quaternion(0,0,0,0);
        m_Model.GetComponentInChildren<Rigidbody>().isKinematic = true;
        if (m_SparkEffect)
            m_SparkEffect.Stop();

        var _cdEffect = m_CountDownObject.GetComponent<EffekseerEmitter>();
        if (_cdEffect.exists)
            _cdEffect.Stop();

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

        //壊れる壁
        CrashWall[] _crashWall = FindObjectsOfType<CrashWall>();
        for (int i = 0; i < _crashWall.Length; i++)
        {
            float _length = Vector3.Distance(m_Model.transform.position, _crashWall[i].transform.position);
            if (_length <= m_ExplosionSize)
            {
                _crashWall[i].DestroyByBoom();
            }
        }

        //壊れる床
        CrashTile[] _crashTile = FindObjectsOfType<CrashTile>();
        for (int i = 0; i < _crashTile.Length; i++)
        {
            float _length = Vector3.Distance(m_Model.transform.position, _crashTile[i].transform.position);
            if (_length <= m_ExplosionSize)
            {
                _crashTile[i].DestroyByBoom();
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
            m_Model.GetComponentInChildren<Rigidbody>().isKinematic = false;
            m_DetectionSizeObject.GetComponentInChildren<EffekseerEmitter>().Play();
            if (m_SparkEffect)
                m_SparkEffect.Play();
            m_CountDownObject.SetActive(true);

            var _cdEffect = m_CountDownObject.GetComponent<EffekseerEmitter>();
            if(!_cdEffect.exists)
                _cdEffect.Play();
            m_IsCountDown = true;

            m_IsThrow = false;
        }
    }
}
