/**
* @file     SwitchArea.cs
* @brief    スイッチエリア
* @author   李　爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchArea : MonoBehaviour
{
    //管理するギミック
    public GameObject m_ControlObject;
    //最大通過数
    public float m_MaxCheckObject;
    //通過したペンギン達
    private List<Penguin> m_Penguins = new List<Penguin>();

    private void OnTriggerEnter(Collider a)
    {
        //通過数も最大になったら何もしない
        if (m_Penguins.Count >= m_MaxCheckObject)
            return;

        //リスト内のペンギンを確認して、重複がないならば追加する
        if (a.gameObject.TryGetComponent<Penguin>(out var p))
        {
            Penguin result = m_Penguins.Find(m => m == p);

            if(result == null)
            {
                m_Penguins.Add(p);

            }
        }

        //追加されたあと、もし最大数に満たしたらコントロールしたギミックを起動
        if (m_Penguins.Count >= m_MaxCheckObject && m_ControlObject != null)
            m_ControlObject.SetActive(true);
    }
}
