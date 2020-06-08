/**
* @file     CrashTile.cs
* @brief    崩れる床
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Effekseer;

/**
* @class    CrashTile
* @brief    崩れる床
*/
public class CrashTile : MonoBehaviour
{
    //カウントダウン時間
    public float m_MaxCount = 5.0f;
    //起動フラグ
    private bool m_IsOn = false;
    //Debug表示用
    private int m_DebugCount = 0;

    public enum FieldType
    {
        SNOW = 0,
        DESERT,
        JUNGLE,
        VOLCANIC
    }

    [SerializeField]
    FieldType m_Type;

    FieldType m_TypeLast;

    [SerializeField]
    TextureData m_Data;

    //!エフェクトスポーンナー
    private EffectSpawner Effect;
    [SerializeField]
    private EffekseerEmitter EffectEmitter;

    private void OnDrawGizmos()
    {
        if (m_Type != m_TypeLast)
        {
            var m = new Material(this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial);
            m.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));
            m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
            this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial = m;

            m_TypeLast = m_Type;
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        m_DebugCount = (int)m_MaxCount;

        Effect = GetComponent<EffectSpawner>();

        switch (m_Type)
        {
            case FieldType.SNOW:
                EffectEmitter.effectAsset = Effect.GetEffect("RockCrashingFinal_Ice");
                break;
            case FieldType.DESERT:
                EffectEmitter.effectAsset = Effect.GetEffect("RockCrashingFinal_Desert");
                break;
            case FieldType.JUNGLE:
                EffectEmitter.effectAsset = Effect.GetEffect("RockCrashingFinal_Jungle");
                break;
            case FieldType.VOLCANIC:
                EffectEmitter.effectAsset = Effect.GetEffect("RockCrashingFinal_vocano");
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        //カウントダウンする
        if(m_IsOn)
        {
            m_MaxCount -= Time.deltaTime;

            //Debug表示
            if ((int)m_MaxCount != m_DebugCount)
            {
                m_DebugCount = (int)m_MaxCount;
                Debug.Log("CrashTile Count:" + (m_DebugCount));
            }
        }

        //カウントダウンがゼロになると崩れる
        if(m_MaxCount<=0.0f)
        {
            if (Effect != null)
                Effect.PlayerEffect("BORO", gameObject.transform.position);

            Destroy(this.gameObject);
        }
    }

    void OnTriggerEnter(Collider c)
    {
        //ペンギンレイヤーのオブジェクトと接触
        if (c.gameObject.layer == LayerMask.NameToLayer("PackPenguin") && !m_IsOn)
        {
            m_IsOn = true;

            EffectEmitter.Play();
        }
    }

    /**
    * @brief    爆弾に壊れたら
    * @param(value)   Param Description
    * @return   None
    */
    public void DestroyByBoom()
    {
        m_IsOn = true;
        m_MaxCount = 0;
    }
}
