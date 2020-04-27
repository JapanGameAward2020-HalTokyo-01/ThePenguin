using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinManager : MonoBehaviour
{
    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    //! 子ペンギンの総数
    public int m_TotalCount;
    //! 死亡数
    public int m_DeadCount;
    //! 群れ化数
    public int m_PackCount;
    //! 野良ペンギン数
    public int m_NomadCount;

    // Start is called before the first frame update
    void Start()
    {
        foreach (ChildPenguin child in FindObjectsOfType<ChildPenguin>())
        {
            m_ChildPenguins.Add(child);
        }

        m_TotalCount = m_ChildPenguins.Count;
    }


    /// <summary>
    /// @brief   一定関ごとに更新するupdate
    /// </summary>
    private void FixedUpdate()
    {
        //! 生存数などの更新するためのローカル変数
        int dead = 0,pack = 0,nomad = 0;
        foreach (ChildPenguin child in m_ChildPenguins)
        {
            //！ 生存してるか確認
            if (!child.GetLife())
            {
                dead++;
            }
            else
            {
                //！ 群れ化してるか確認
                if (child.InPack())
                {
                    pack++;
                }
                else
                {
                    nomad++;
                }
            }
        }
        m_DeadCount = dead;
        m_PackCount = pack;
        m_NomadCount = nomad;

        Debug.Log("TotalPenguins:" + m_TotalCount);
        Debug.Log("DeadPenguins:" + m_DeadCount);
        Debug.Log("PackPenguins:" + m_PackCount);
        Debug.Log("NomadPenguins:" + m_NomadCount);
    }
}
