using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomGimmickEmitter : BaseGimmickEmitter
{
    [SerializeField,Tooltip("発動させるギミック数")]
    private int m_ActiveNum = 0;

    public void Start()
    {
        m_ActiveNum = Mathf.Min(m_ActiveNum, m_Gimmicks.Count);
    }

    public override void Emit()
    {
        int num = m_ActiveNum;

        List<BaseGimmick> gimmicks = m_Gimmicks;

        if(num > gimmicks.Count)
        {
            num = gimmicks.Count;
        }

        while (num > 0)
        {
            int index = Random.Range(0,gimmicks.Count);

            gimmicks[index].Activate();

            gimmicks.RemoveAt(index);

            num--;
        }
    }
}
