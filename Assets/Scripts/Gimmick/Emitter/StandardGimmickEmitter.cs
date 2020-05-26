using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StandardGimmickEmitter : BaseGimmickEmitter
{
    public override void Emit()
    {
        foreach (var obj in m_Gimmicks)
        {
            obj.Activate();
        }
    }
}
