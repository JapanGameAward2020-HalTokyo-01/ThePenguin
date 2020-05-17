using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//! Penguinの総括
public class PenguinManager : MonoBehaviour
{
    //! ゲームオーバーになる為の子ペンギンの死亡数
    [SerializeField, Tooltip("ゲームオーバーになる為の子ペンギンの死亡数"), Range(0.0f, 100.0f)]
    public int m_MaxDead = 0;

    [Space(30)]
    //! ゲームオーバー判定
    public bool m_GameOver = false;
    //! 子ペンギンの総数
    [SerializeField,NonEditableField]
    public int m_TotalCount = 0;
    //! 死亡数
    [SerializeField,NonEditableField]
    public int m_DeadCount = 0;
    //! 群れ化数
    [SerializeField,NonEditableField]
    public int m_PackCount = 0;
    //! 野良ペンギン数
    [SerializeField,NonEditableField]
    public int m_NomadCount = 0;

    //! 親ペンギン
    private ParentPenguin m_ParentPenguin = null;

    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    // Start is called before the first frame update
    void Start()
    {
        m_GameOver = false;

        //! ParentPenguinの取得
        m_ParentPenguin = FindObjectOfType<ParentPenguin>();
        m_ParentPenguin.onKillEvent = GameOver;

        //! 各カウントの開始
        ChildPenguin[] childPenguins = FindObjectsOfType<ChildPenguin>();
        if (childPenguins.Length > 0)
        {
            m_NomadCount = m_TotalCount = childPenguins.Length;

            //! ChilePenguinの取得
            foreach (ChildPenguin child in childPenguins)
            {
                m_ChildPenguins.Add(child);

                //! Event登録
                child.onKillEvent = OnKillEvent;
                child.onPackEvent = OnPackEvent;

                //! 群れに追加
                if (child.InPack)
                {
                    m_ParentPenguin.AddToPack(child);
                }

                if (m_ParentPenguin.Boss)
                {
                    child.Boss();
                }
            }
        }
    }

    //! 死亡時イベント(子ペンギン)
    public void OnKillEvent(ChildPenguin child)
    {
        if (child.InPack)
            m_PackCount--;
        else
            m_NomadCount--;

        m_DeadCount++;

        if (m_MaxDead >= m_DeadCount)
        {
            m_GameOver = true;
        }
    }

    //! 死亡時イベント(親ペンギン)
    public void GameOver(ParentPenguin parent)
    {
        m_GameOver = true;
    }

    //! 群れ化時イベント
    public void OnPackEvent()
    {
        m_PackCount++;
        m_NomadCount--;
    }

    public float deltaTime;

    void Update()
    {
        //deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        //float fps = 1.0f / deltaTime;
        //Debug.Log(Mathf.Ceil(fps).ToString());
    }
}
