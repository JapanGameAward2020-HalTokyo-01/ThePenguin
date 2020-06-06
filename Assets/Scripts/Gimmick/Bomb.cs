/**
* @file     Bomb.cs
* @brief    爆弾ギミック
* @author   Taku Hekisen
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Effekseer;
using Cinemachine;

public class Bomb : BaseGimmick
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

    [SerializeField, Tooltip("カメラ振動の強さ")]
    private float m_ShakeCameraPower;

    //! 状態
    private bool m_IsCountDown = false;

    //! 探知範囲表示（仮）オブジェクト
    private GameObject m_DetectionSizeObject;
    //! カウントダウン表示（仮）オブジェクト
    private GameObject m_CountDownObject;
    //! モデルオブジェクト
    private GameObject m_Model;

    [SerializeField]
    private Material m_NormalMaterial;
    [SerializeField]
    private Material m_CountDownMaterial;

    [SerializeField]
    private EffekseerEffectAsset m_SaveEffect;


    [SerializeField]
    private EffekseerEffectAsset m_DangerEffect;



    [SerializeField]
    private float m_BoomScale;

    [SerializeField]
    private float m_EffectOffset;
    //!エフェクトスポーンナー
    private EffectSpawner Effect;

    //!コントローラー振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    //!オブジェクト振動処理クラス
    private ObjectVibrate m_ObjectVibrate;

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();
        m_Model = this.transform.parent.Find("Model").gameObject;
        m_Model.transform.Find("Mo_Bomb").gameObject.GetComponent<MeshRenderer>().materials[0].CopyPropertiesFromMaterial(m_NormalMaterial);

        m_DetectionSizeObject.GetComponent<SpriteRenderer>().enabled = false;
        m_DetectionSizeObject.GetComponentInChildren<EffekseerEmitter>().Play(m_SaveEffect);

        m_ControllerVibration = FindObjectOfType<ControllerVibration>();

        if (!m_ObjectVibrate)
            m_ObjectVibrate = GetComponent<ObjectVibrate>();
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

    public override void Update()
    {
        base.Update();

        //カウントダウン開始
        if(m_IsCountDown)
        {          
            m_CountDown -= Time.deltaTime;
            m_CountDownObject.GetComponent<TextMeshPro>().text = ((int)m_CountDown + 1).ToString();

            if (m_CountDown - m_ObjectVibrate.GetVibrateTimeMax() <= 0.0f)
                m_ObjectVibrate.StartVibrate();

            if (m_CountDown <= 0.0f)
            {
                var cinemachineImpulseSource = GetComponent<CinemachineImpulseSource>();

                if (cinemachineImpulseSource)
                    cinemachineImpulseSource.GenerateImpulse(new Vector3(m_ShakeCameraPower, m_ShakeCameraPower, m_ShakeCameraPower));
                //爆発処理
                Explode();

                //!エフェクト関連
                {
                    Effect = GetComponent<EffectSpawner>();
                    if (Effect != null)
                        Effect.PlayerEffect("Boom!", m_Model.transform.position, new Vector3(m_BoomScale, m_BoomScale, m_BoomScale));

                }

                m_ControllerVibration.AddShake(0.7f, 0.3f);

                //消滅
                Destroy(this.transform.parent.gameObject);
            }
        }

        //探知範囲とカウントダウンの座標更新
        m_DetectionSizeObject.transform.position = m_Model.transform.position + new Vector3(0.0f, -0.49f + m_EffectOffset, 0.0f);
        m_CountDownObject.transform.position = m_Model.transform.position + new Vector3(0.0f, 1.0f, 0.0f);
    }

    /**
     * @bief ギミックの有効化時
     * @param none
     * @return none
     */
    public override void OnActivate()
    {

    }

    /**
     * @bief ギミックの無効化(終了)時
     * @param none
     * @return none
     */
    public override void OnDeactivate()
    {

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

    private void OnTriggerEnter(Collider other)
    {
        //探知範囲に当たったオブジェクトのLayerが8番のlayerPackPenguinだったら
        if (other.gameObject.layer == 8)
        {
            m_IsCountDown = true;
            m_Model.transform.Find("Mo_Bomb").gameObject.GetComponent<MeshRenderer>().materials[0].CopyPropertiesFromMaterial(m_CountDownMaterial);
            //以下はすべて仮の演出処理
            //m_DetectionSizeObject.SetActive(false);
            m_CountDownObject.SetActive(true);

            m_DetectionSizeObject.GetComponentInChildren<EffekseerEmitter>().Stop();
            m_DetectionSizeObject.GetComponentInChildren<EffekseerEmitter>().Play(m_DangerEffect);
        }
    }

}
