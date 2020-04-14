/// <summary>
/// @file InputModuleBase.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// @class InputModuleBase
/// @brief コントローラー入力処理 基底クラス
/// </summary>
public abstract class InputModuleBase :MonoBehaviour
{
    protected InputHandler m_InputHandler;

    public InputHandler Handler
    {
        set { m_InputHandler = value; }
    }

    public virtual void Start()
    {

    }

    public abstract void Behaviour();

    public virtual void DebugMethod()
    {

    }
}
