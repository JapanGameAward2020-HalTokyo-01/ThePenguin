using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PenguinManager : MonoBehaviour
{
    //! 全子ペンギンのリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();
    private ParentPenguin m_ParentPenguin;

    //! ゲームオーバーになる為の子ペンギンの死亡数
    [SerializeField, Tooltip("ゲームオーバーになる為の子ペンギンの死亡数"), Range(0.0f, 100.0f)]
    private int m_MaxDead = 0;

    [Space(30)]
    //! ゲームオーバー判定
    public bool m_GameOver = false;
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
        System.Diagnostics.Stopwatch stopwatch = new System.Diagnostics.Stopwatch();
        stopwatch.Start();
        foreach (ChildPenguin child in FindObjectsOfType<ChildPenguin>())
        {
            m_ChildPenguins.Add(child);
        }

        m_ParentPenguin = FindObjectOfType<ParentPenguin>();

        m_TotalCount = m_ChildPenguins.Count;
        m_GameOver = false;

        stopwatch.Stop();
        Debug.Log("PenguinManager起動時間: "+ stopwatch.ElapsedTicks);
    }


    /// <summary>
    /// @brief   一定関ごとに更新するupdate
    /// </summary>
    private void FixedUpdate()
    {
        //! 生存数などの更新するためのローカル変数
        int dead = 0,pack = 0,nomad = 0;
        //! 生存数などの更新
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
        //! 反映
        m_DeadCount = dead;
        m_PackCount = pack;
        m_NomadCount = nomad;


        //! ゲームオーバーか判断する処理
        if(m_DeadCount >= m_MaxDead || !m_ParentPenguin.GetLife())
        {
            m_GameOver = true;
        }


        //! DebugのConsole表示(後でUIで使ってね)
        Debug.Log("TotalPenguins:" + m_TotalCount);
        Debug.Log("DeadPenguins:" + m_DeadCount);
        Debug.Log("PackPenguins:" + m_PackCount);
        Debug.Log("NomadPenguins:" + m_NomadCount);
        Debug.Log("GameOver:" + (m_GameOver ? "true" : "false"));
    }
}
