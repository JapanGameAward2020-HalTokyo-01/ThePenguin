/**
* @file     Crash
* ll.cs
* @brief    崩れる壁
* @author   En Yuki
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
* @class    CrashWall
* @brief    崩れる壁
*/
public class CrashWall : MonoBehaviour
{
    //カウント数
    [SerializeField, Range(1, 3)]
    public uint m_MaxCount;

    private uint m_MaxCountLast = 3;
    //カウントされるためのスピード下限
    public float m_CountSpeed = 0.0f;
    //完全に崩れるまでの時間(フレーム単位)
    public uint m_WaitTime = 20;

    //完全に崩れるまでのカウンター
    private uint m_Count = 0;
    //壊れ具合
    private float m_Percent = 0.0f;
    //起動フラグ
    private bool m_IsCrash = false;
    //
    private uint temp;

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
    TextureData[] m_Data;

    //!エフェクトスポーンナー
    private EffectSpawner Effect;
    //!振動処理クラス
    private ObjectVibrate m_ObjectVibrate;
    private ObjectColorChange m_ObjectColorChange;

    private void OnDrawGizmos()
    {
        if (m_Type != m_TypeLast || m_MaxCount != m_MaxCountLast)
        {
            var m = new Material(this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial);
            m.SetTexture("_BaseMap", m_Data[m_MaxCount-1].GetTexture((int)m_Type));
            m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
            this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial = m;
            m_TypeLast = m_Type;
            m_MaxCountLast = m_MaxCount;
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        temp = m_MaxCount;
        m_Percent = (float)m_MaxCount / temp;

        if (!Effect)
            Effect = GetComponent<EffectSpawner>();

        if (!m_ObjectVibrate)
            m_ObjectVibrate = GetComponent<ObjectVibrate>();

        if (!m_ObjectColorChange)
            m_ObjectColorChange = GetComponent<ObjectColorChange>();
    }

    // Update is called once per frame
    void Update()
    {
        if(m_IsCrash)
        {
            m_Count++;

            //完全に崩れる
            if(m_Count>=m_WaitTime)
            {
                if (Effect != null)
                    Effect.PlayerEffect("BORO", gameObject.transform.position);

                Destroy(this.gameObject);
            }
        }
    }

    //ペンギンと衝突したら
    void OnCollisionEnter(Collision c)
    {
        if(m_IsCrash)
        {
            return;
        }

        //ペンギンレイヤーのオブジェクトと衝突
        if (c.gameObject.layer == LayerMask.NameToLayer("PackPenguin"))
        {
            //かつペンギンのスピードが一定値以上
            if (Vector3.Distance(c.relativeVelocity, Vector3.zero) > m_CountSpeed)
            {
                //カウントダウン
                m_MaxCount--;

                //壊れ具合計算
                m_Percent = (float)m_MaxCount / temp;

                //Debug
                Debug.Log("CrashWall Percent:" + m_Percent);

                //テクスチャー変更
                var m = new Material(this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial);
                int texcnt = (int)m_MaxCount-1;

                if (texcnt <= 0)
                    texcnt = 0;

                m.SetTexture("_BaseMap", m_Data[texcnt].GetTexture((int)m_Type));
                m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
                this.gameObject.GetComponentInChildren<MeshRenderer>().sharedMaterial = m;

                if (m_ObjectVibrate)
                    m_ObjectVibrate.StartVibrate();
                if (m_ObjectColorChange)
                {
                    m_ObjectColorChange.ChangeColor();
                   
                }
                if (Effect != null)
                {
                   // Effect.PlayerEffect("DON", gameObject.transform.position);

                    switch (m_Type)
                    {
                        case FieldType.SNOW:
                            Effect.PlayerEffect("RockCrashing_ice1", gameObject.transform.position, new Vector3(0.5f, 0.5f, 0.5f));
                            break;
                        case FieldType.DESERT:
                            Effect.PlayerEffect("RockCrash_Desert", gameObject.transform.position, new Vector3(0.5f, 0.5f, 0.5f));
                            break;
                        case FieldType.JUNGLE:
                            Effect.PlayerEffect("RockCrash_Jungle", gameObject.transform.position, new Vector3(0.5f, 0.5f, 0.5f));
                            break;
                        case FieldType.VOLCANIC:
                            Effect.PlayerEffect("RockCrash_Vocano", gameObject.transform.position, new Vector3(0.5f, 0.5f, 0.5f));
                            break;
                    }

                    
                }

            }

            //カウントがゼロになると崩れる
            if(m_MaxCount<=0)
            {
                m_IsCrash = true;
            }


        }
    }

    /**
    * @brief    爆弾に壊れたら
    * @param(value)   Param Description
    * @return   None
    */
    public void DestroyByBoom()
    {
        m_IsCrash =true;
        m_WaitTime = 0;
    }
}
