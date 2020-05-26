using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class BaseGimmickEmitter : MonoBehaviour
{
    public List<BaseGimmick> m_Gimmicks;

    public abstract void Emit();

    public void SetActive(bool active)
    {
        foreach(var obj in m_Gimmicks)
        {
            obj.gameObject.SetActive(active);
        }
    }
}
