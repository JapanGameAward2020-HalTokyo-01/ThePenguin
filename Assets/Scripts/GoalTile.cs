﻿/**
* @file     GoalTile.cs
* @brief   ゴールタイル
* @author   En Yuki
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GoalTile : MonoBehaviour
{
    //モデルに使う画像
    public Texture m_Tex_Unenable;
    public Texture m_Tex_Enable;
    public Sprite m_Icon_Unenable;
    public Sprite m_Icon_Enable;
    public Sprite m_Icon_Gauge;

    [SerializeField]
    private GameObject m_EndCamera;

    //クリア必要なペンギンの数
    public uint m_ClearCount = 10;

    //現在集めたペンギンの数
    public uint m_PenguinCount = 0;

    //クリア可能か
    private bool m_CanClear = false;

    //アイコン
    private Image[] m_Image;

    //! ステージクリア処理
    public System.Action<Vector3> OnClearEvent;

    //! 現在のレベルの設定情報
    private LevelSettings m_level_setting = null;



    // Start is called before the first frame update
    void Start()
    {
        OnClearEvent = delegate (Vector3 goalPos)
        {
            m_level_setting = FindObjectOfType<LevelSettings>();
            m_level_setting.m_clear_flag = true;
        };
        m_Image = GetComponentInChildren<Canvas>().GetComponentsInChildren<Image>();
    }

    // Update is called once per frame
    void Update()
    {
        //ゲージ更新
        float percent = Mathf.Min((float)m_PenguinCount / m_ClearCount,1.0f);
        m_Image[1].fillAmount = percent;


        //現在集めた子ペンギン数に応じてテクスチャを変更
        if (m_PenguinCount>=m_ClearCount)
        {
            if(!m_CanClear)
            {
                var m = new Material(GetComponentInChildren<MeshRenderer>().material);
                m.SetTexture("_Albedo", m_Tex_Enable);
                GetComponentInChildren<MeshRenderer>().material = m;

                m_Image[0].sprite = m_Icon_Enable;

                m_CanClear = true;
            }
        }
        else
        {
            if(m_CanClear)
            {
                var m = new Material(GetComponentInChildren<MeshRenderer>().material);
                m.SetTexture("_Albedo", m_Tex_Unenable);
                GetComponentInChildren<MeshRenderer>().material = m;

                m_Image[0].sprite = m_Icon_Unenable;

                m_CanClear = false;
            }
        }
    }

    //Trigger
    void OnTriggerEnter(Collider other)
    {
        //親ペンギンと子ペンギンにのみ反応する
        if (other.gameObject.layer == LayerMask.NameToLayer("PackPenguin")&&m_CanClear)
        {
            Goal();
        }
    }

    /**
    * @brief    ゴール処理
    * @param(viod)   なし
    * @return   None
    */
    void Goal()
    {
        //仮処理
        Debug.Log("Goal");
        if (m_EndCamera != null)
        {
            m_EndCamera.SetActive(true);
        }

        OnClearEvent(transform.position);
    }

    /**
    * @brief    子ペンギン数の更新
    * @param(uint)   子ペンギン数
    * @return   None
    */
    public void SetChildPenguin(uint child)
    {
        m_PenguinCount = child;
    }
}
