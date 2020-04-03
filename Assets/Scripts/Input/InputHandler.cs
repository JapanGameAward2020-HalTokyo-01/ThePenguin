/// <summary>
/// @file InputSystem.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using UnityEngine;

/// <summary>
/// @class InputSystem
/// @brief コントローラー入力処理
/// </summary>
public class InputHandler : MonoBehaviour
{
    public enum State
    {
        Idle,
        Run
    }

    [SerializeField]
    private ParentPenguinMove m_ParentPenguin;

    [SerializeField,Tooltip("ゲージのリピート")]
    private bool m_IsReperat = true;

    private float m_Power = 0f;

    [SerializeField,Tooltip("最大値"),Range(1f, 10f)]
    private float m_PowerMax = 10f;

    [SerializeField,Tooltip("毎秒変化値(×フレーム時間)"),Range(0.01f, 10.0f)]
    private float m_PowerChange = 3.0f;

    [SerializeField,Tooltip("待機時間")]
    private float m_PowerWaitTime = 10.0f;

    [Header("入力パラメータ")]

    [SerializeField,Tooltip("無効範囲"),Range(0.0f, 1.0f)]
    private float m_Deadzone = 0.07f;

    [SerializeField,Tooltip("誤差しきい値"),Range(0.0f, 1.0f)]
    private float m_Threshold = 0.1f;

    //デバッグ系
    [Space(8)]

    [SerializeField]
    private GameObject m_Arrow;

    [SerializeField]
    private GameObject m_DemoObject;



    //状態
    private State m_State = State.Idle;
    public State CurrentState
    {
        get { return m_State; }
    }

    private float m_Horizontal = 0f;

    private float m_Vertical = 0f;

    //移動向きとして利用される 入力ベクトル
    private Vector3 m_InputVector;

    private Vector3 m_CurrentInputVector;

    private float m_TimeCounter = 0f;


    // Start is called before the first frame update
    void Start()
    {
        TimeCounterReset();
        if(m_Arrow != null)
            m_Arrow.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (this.CurrentState == State.Run)
            Run();
        else
            Idle();

        DebugFunc();
    }

    /// <summary>
    /// @brief  入力を拒否する状態
    /// </summary>
    void Run()
    {
        m_ParentPenguin.MoveInputVector(GetMoveVector());
        m_Power -= m_PowerChange * Time.deltaTime;

        if (m_Power > 0f) return;

        this.ChangeState(State.Idle);
        this.PowerReset();
    }

    /// <summary>
    /// @brief  入力待ち状態
    ///     入力が無い場合 : チャージしていればRunに遷移
    ///     入力がある場合 : 前の入力との状態を見て、チャージ開始
    /// </summary>
    void Idle()
    {
        //入力
        m_Horizontal = Input.GetAxis("Horizontal");
        m_Vertical = Input.GetAxis("Vertical");

        m_CurrentInputVector = TransformCameraDirection(new Vector3(m_Horizontal, 0f, m_Vertical));
        m_CurrentInputVector.y = 0f;

        if (Mathf.Abs(m_Horizontal) <= m_Deadzone && Mathf.Abs(m_Vertical) <= m_Deadzone)
        {
            this.TimeCounterReset();

            //チャージ終了
            if (m_Power > 0f)
            {
                this.ChangeState(State.Run);
            }
            return;
        }

        if (m_InputVector != m_CurrentInputVector && EnableInputVector(m_CurrentInputVector))
        {
            m_InputVector = m_CurrentInputVector;
            this.TimeCounterReset();
            this.PowerReset();
        }
        else
        {
            m_TimeCounter++;

            if (m_TimeCounter < m_PowerWaitTime) return;

            m_Power += m_PowerChange * Time.deltaTime;

            if (m_Power > m_PowerMax) m_Power = m_IsReperat ? 0f : m_PowerMax;
        }
    }

    /// <summary>
    /// @brief
    ///     デバッグ用の表示関数
    /// @param()
    /// @return
    /// </summary>
    void DebugFunc()
    {
        Debug.DrawRay(this.transform.position, Camera.main.transform.forward, Color.red);
        Debug.DrawRay(this.transform.position, m_CurrentInputVector, Color.green);
        Debug.DrawRay(this.transform.position, GetMoveVector(), Color.blue);

        if (m_Arrow != null)
        {
            m_Arrow.SetActive(true);
            m_Arrow.transform.rotation = Quaternion.LookRotation(m_InputVector);
        }

        if (m_DemoObject != null)
        {
            if (CurrentState == State.Idle)
            {
                m_DemoObject.SetActive(m_Power != 0f);
                if(m_Power == 0f)
                {
                    m_DemoObject.transform.localPosition = Vector3.zero;
                    m_DemoObject.GetComponent<Rigidbody>().velocity = Vector3.zero;
                }
                m_DemoObject.GetComponent<Rigidbody>().AddForce(GetMoveVector(),ForceMode.VelocityChange);
                
            }
            else
            {
                m_DemoObject.SetActive(m_Power != 0f);
            }
        }
    }


    /// <summary>
    /// @brief 
    ///     メインカメラの向きにdirを変換する
    ///     Unityに同じこと出来る関数あるけど無視。
    /// 
    /// @param(dir) 変換する向き
    /// @return 変換した向き
    /// </summary>
    Vector3 TransformCameraDirection(Vector3 dir)
    {
        Vector3 _result = Vector3.zero;

        Matrix4x4 _matrix = Matrix4x4.Rotate(Camera.main.transform.rotation);
        _result.x = _matrix.m00 * dir.x + _matrix.m01 * dir.y + _matrix.m02 * dir.z;
        _result.y = _matrix.m10 * dir.x + _matrix.m11 * dir.y + _matrix.m12 * dir.z;
        _result.z = _matrix.m20 * dir.x + _matrix.m21 * dir.y + _matrix.m22 * dir.z;
        return _result.normalized;
    }

    /// <summary>
    /// 
    /// </summary>
    void PowerReset()
    {
        m_Power = 0f;
    }

    /// <summary>
    /// 
    /// </summary>
    void TimeCounterReset()
    {
        m_TimeCounter = 0f;
    }

    /// <summary>
    /// @brief 
    /// </summary>
    Vector3 GetMoveVector()
    {
        m_InputVector.y = 0f;
        return -Vector3.Normalize(m_InputVector) * m_Power;
    }

    /// <summary>
    /// @brief 
    ///     入力値の誤差判定
    ///     
    /// @param(_InputVector) 現在の入力値
    /// @return しきい値を超えた誤差かの真偽
    /// </summary>
    bool EnableInputVector(Vector3 _InputVector)
    {
        Vector3 diffrent = m_InputVector - _InputVector;
        return (Mathf.Abs(diffrent.x) > m_Threshold) && (Mathf.Abs(diffrent.z) > m_Threshold);
    }

    /// <summary>
    /// @brief 
    ///     状態の切り替え
    ///     
    /// </summary>
    void ChangeState(State state)
    {
        m_State = state;
    }
}
