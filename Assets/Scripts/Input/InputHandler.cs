/// <summary>
/// @file InputSystem.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// @class InputSystem
/// @brief コントローラー入力処理
///        InputModuleによってパワーなどが操作される
/// </summary>
public class InputHandler : MonoBehaviour
{
    /// <summary>
    /// @ brief 
    ///     入力イベント
    ///     InputHandler内での任意のタイミングで実行される
    /// </summary>
    [System.Serializable]
    public class InputEventBase
    {
        public InputHandler m_Handler;

        public virtual void OnRun() { }
        public virtual void OnIdle() { }
        public virtual void TickStateRun() { }
        public virtual void TickStateIdle() { }
    }

    public enum State
    {
        Idle,
        Run
    }

    //! パワー
    [SerializeField]
    private float m_Power = 0f;
    public float Power
    {
        get { return m_Power; }
        set { m_Power = value; }
    }

    //! パワー最大値
    [SerializeField, Tooltip("最大値"), Range(1f, 10f)]
    private float m_PowerMax = 10f;
    public float PowerMax { get { return m_PowerMax; } }

    //! 状態
    public State CurrentState { get; private set; } = State.Idle;
    //! 入力ベクタ
    public Vector3 InputVector { get; private set; } = Vector3.forward;

    private List<InputEventBase> m_InputEventList = new List<InputEventBase>();

    [SerializeField]
    private GameObject m_Arrow;
    [SerializeField]
    private GameObject m_DemoObject;

    private InputModuleBase m_InputModule;

    // Start is called before the first frame update
    void Start()
    {
        //! 有効なModuleを探査/代入
        foreach (var module in GetComponents<InputModuleBase>())
        {
            if (!module.enabled) continue;
            m_InputModule = module;
            m_InputModule.Handler = this;
            break;
        }

        if (m_InputModule == null)
            Debug.LogError("入力モジュールの設定がされていません。");

        if (m_Arrow != null)
            m_Arrow.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (CurrentState == State.Idle)
        {
            foreach (var inputEvent in m_InputEventList)
                inputEvent.OnIdle();
            m_InputModule.Behaviour();
        }
        else if (CurrentState == State.Run)
        {
            foreach (var inputEvent in m_InputEventList)
                inputEvent.OnRun();
        }
        DebugMethod();
    }

    //! InputEvenetを登録する
    public void RegisterInputEvent(InputEventBase inputEvenet)
    {
        inputEvenet.m_Handler = this;
        m_InputEventList.Add(inputEvenet);
    }

    /// <summary>
    /// @brief パワーを0にする
    /// </summary>
    public void PowerReset()
    {
        Power = 0f;
    }

    /// <summary>
    /// @brief 移動ベクトルの取得
    /// </summary>
    public Vector3 GetMoveVector()
    {
        return -Vector3.Normalize(InputVector) * Power;
    }

    /// <summary>
    /// @brief 
    ///     状態の切り替え
    ///     
    /// </summary>
    public void ChangeState(State state)
    {
        if (state == State.Run)
        {
            foreach (var inputEvent in m_InputEventList)
                inputEvent.TickStateRun();
        }
        else if (state == State.Idle)
        {
            PowerReset();
            foreach (var inputEvent in m_InputEventList)
                inputEvent.TickStateIdle();
        }
        CurrentState = state;
    }

    /// <summary>
    /// @brief 
    ///     _InputVectorを入力ベクトルに設定
    ///     
    /// </summary>
    public void SetInputVector(Vector3 _InputVector)
    {
        _InputVector.y = 0f;
        this.InputVector = _InputVector;
    }

    /// <summary>
    /// @brief 
    ///     メインカメラの向きにdirを変換する
    ///     Unityに同じこと出来る関数あるけど無視。
    /// 
    /// @param(dir) 変換する向き
    /// @return 変換した向き
    /// </summary>
    public Vector3 TransformCameraDirection(Vector3 dir)
    {
        Vector3 _result = Vector3.zero;

        Matrix4x4 _matrix = Matrix4x4.Rotate(Camera.main.transform.rotation);
        _result.x = _matrix.m00 * dir.x + _matrix.m01 * dir.y + _matrix.m02 * dir.z;
        _result.y = _matrix.m10 * dir.x + _matrix.m11 * dir.y + _matrix.m12 * dir.z;
        _result.z = _matrix.m20 * dir.x + _matrix.m21 * dir.y + _matrix.m22 * dir.z;
        return _result.normalized;
    }

    /// <summary>
    /// @brief
    ///     デバッグ用の表示関数
    /// @param()
    /// @return
    /// </summary>
    void DebugMethod()
    {
        Debug.DrawRay(this.transform.position, Camera.main.transform.forward, Color.red);
        Debug.DrawRay(this.transform.position, GetMoveVector(), Color.blue);

        if (m_Arrow != null)
        {
            m_Arrow.SetActive(true);
            m_Arrow.transform.rotation = Quaternion.LookRotation(InputVector);
        }

        if (m_DemoObject != null)
        {
            m_DemoObject.SetActive(Power != 0f);

            if (CurrentState == State.Idle)
                m_DemoObject.transform.localPosition = GetMoveVector();

        }

        m_InputModule.DebugMethod();
    }

}
