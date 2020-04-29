using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//! Penguinの総括
public class PenguinManager : MonoBehaviour
{
    //! 親ペンギン
    private ParentPenguin m_ParentPenguin = null;

    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    //! 子ペンギンの総数
    public int m_TotalCount = 0;
    //! 死亡数
    public int m_DeadCount = 0;
    //! 群れ化数
    public int m_PackCount = 0;
    //! 野良ペンギン数
    public int m_NomadCount = 0;

    // Start is called before the first frame update
    void Start()
    {

        //! ParentPenguinの取得
        m_ParentPenguin = FindObjectOfType<ParentPenguin>();

        //! ChilePenguinの取得
        foreach (ChildPenguin child in FindObjectsOfType<ChildPenguin>())
        {
            //! ChildPenguin追加
            m_ChildPenguins.Add(child);

            //! 群れ化している
            if (child.InPack)
            {
                //! 群れに追加
                m_ParentPenguin.AddToPack(child);

                m_PackCount++;
            }
            else
            {
                m_NomadCount++;
            }

            //! 死亡時イベント
            child.onKillEvent += () =>
            {
                if (child.InPack)
                    m_PackCount--;
                else
                    m_NomadCount--;
                m_DeadCount++;
            };

            //! 群れ化時イベント
            child.onPackEvent += () =>
            {
                m_PackCount++;
                m_NomadCount--;
            };
        }

        m_TotalCount = m_ChildPenguins.Count;
    }    
}
