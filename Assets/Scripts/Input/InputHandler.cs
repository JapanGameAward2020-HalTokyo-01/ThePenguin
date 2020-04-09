/// <summary>
/// @file InputSystem.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using UnityEngine;

/// <summary>
/// @class InputSystem
/// @brief コントローラー入力処理
///        InputModuleによってパワーなどが操作される
/// </summary>
public class InputHandler : MonoBehaviour
{
    public enum State
    {
        Idle,
        Run
    }

    private InputModuleBase m_InputModule;

    //! パワー最大値
    [SerializeField, Tooltip("最大値"), Range(1f, 10f)]
    private float m_PowerMax = 10f;
    public float PowerMax
    {
        get { return m_PowerMax; }
    }

    //! パワー変化量
    [SerializeField, Tooltip("毎秒変化値(×フレーム時間)"), Range(0.01f, 10.0f)]
    private float m_PowerChange = 3.0f;

    //! パワー
    public float Power { get; set; } = 0f;

    //! 状態
    public State CurrentState { get; private set; } = State.Idle;
    //! 入力ベクタ
    public Vector3 InputVector { get; private set; } = Vector3.zero;

    [SerializeField]
    private GameObject m_Arrow;
    [SerializeField]
    private GameObject m_DemoObject;

    // Start is called before the first frame update
    void Start()
    {
        //! 有効なModuleを探査/代入
        foreach(var module in GetComponents<InputModuleBase>())
        {
            if (!module.enabled) continue;
            m_InputModule = module;
            m_InputModule.Handler = this;
            break;
        }

        if(m_InputModule == null)
            Debug.LogError("入力モジュールの設定がされていません。");
        

        if(m_Arrow != null)
            m_Arrow.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (CurrentState == State.Run)
        {
            Power -= m_PowerChange * Time.deltaTime;

            if (Power > 0f) return;

            ChangeState(State.Idle);
            PowerReset();
        }
        else
        {
            m_InputModule.Behaviour();
        }

        DebugMethod();
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
    ///     m_PowerChargeの値でパワー値を変化
    /// @param(IsRepeat) 最大値を超えた場合、0に戻すか (true:戻す/false:戻さない)
    /// </summary>
    public void PowerAddChange(bool IsRepeat = false)
    {
        Power += m_PowerChange * Time.deltaTime;
        if (Power > m_PowerMax)
            Power = IsRepeat ? 0f : m_PowerMax;
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
