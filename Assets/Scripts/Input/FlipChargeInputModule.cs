/// <summary>
/// @file FlipChargeInputModule.cs
/// @brief コントローラー入力処理
/// @author 池田 博雅
/// </summary>
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

/// <summary>
/// @class FlipChargeInputModule
/// @brief コントローラー入力処理
///        スティックを弾いた時の数値でパワーが決まる
/// </summary>
public class FlipChargeInputModule : InputModuleBase
{
    [SerializeField, Tooltip("ゲージのリピート")]
    private bool m_IsRepeat = true;
    [SerializeField]
    private bool m_IsTolerate = false;

    //! パワー変化量
    [SerializeField, Tooltip("毎秒変化値(×フレーム時間)"), Range(0.01f, 10.0f)]
    private float m_PowerChange = 3.0f;

    [SerializeField, Tooltip("待機時間"),Range(0f,10f)]
    private float m_PowerWaitTime = 1f;

    [SerializeField,Tooltip("最大値になった時のリピートマージン"),Range(0f,10f)]
    private float m_MarginTime = 1f;

    [Space(8)]
    [SerializeField, Tooltip("無効範囲"), Range(0.0f, 1.0f)]
    private float m_Deadzone = 0.07f;

    [SerializeField, Tooltip("誤差しきい値"), Range(0.0f, 1.0f)]
    private float m_Threshold = 0.1f;

    //private float m_Horizontal = 0f;
    //private float m_Vertical = 0f;

    private float m_TimeCounter = 0f;
    private float m_MarginCounter = 0f;
    private Vector3 m_InputVector;

    private bool m_IsChargeUp = true;

    [SerializeField]
    //! 入力
    private PlayerInput m_Input;
    [SerializeField]
    private Vector2 m_Move;

    [Header("UI")]
    [SerializeField]
    private RectTransform m_PadBase;
    [SerializeField]
    private RectTransform m_PadOverrap;
    [SerializeField]
    private float m_PadDist = 20f;

    private Vector2 m_StartMousePos;

    public override void Start()
    {
        base.Start();
        ResetParameter();

        m_PadBase.gameObject.SetActive(false);
        m_PadOverrap.gameObject.SetActive(false);

        //これは直接GameInputから読み込む方法
        //GameInput a = new GameInput();
        //a.Input.Move.performed += ctx => m_Move = ctx.ReadValue<Vector2>();

        //Inputを一つにまとめて参照しながら読み込む方法
        m_Input.actions["Move"].performed += ctx => m_Move = ctx.ReadValue<Vector2>();
    }

    public override void Behaviour()
    {
        //m_Horizontal = Input.GetAxis("Horizontal");
        //m_Vertical = Input.GetAxis("Vertical");


        //右クリック 開始
        if (Input.GetMouseButtonDown(0))
        {
            //開始位置 記録
            m_StartMousePos = Input.mousePosition;
            m_PadBase.position = m_StartMousePos;
        }

        if (Input.GetMouseButton(0))
        {
            m_PadBase.gameObject.SetActive(true);
            m_PadOverrap.gameObject.SetActive(true);

            //開始位置と現在位置の差分
            Vector2 dist = (Vector2)Input.mousePosition - m_StartMousePos;
            m_PadOverrap.position = m_StartMousePos + dist.normalized * Mathf.Min(dist.magnitude,m_PadDist);
            dist = dist.normalized;

            //ゲージ
            m_InputVector = m_InputHandler.TransformCameraDirection(new Vector3(dist.x,0f,dist.y));
            m_InputVector.y = 0f;

            //! 誤差許容処理
            if (m_IsTolerate && m_InputHandler.InputVector != m_InputVector)
            {
                ResetParameter();
                m_InputHandler.SetInputVector(m_InputVector);
                m_InputHandler.PowerReset();
                return;
            }
            else
            {
                m_InputHandler.SetInputVector(m_InputVector);
            }

            //! チャージ遷移時間加算
            m_TimeCounter += Time.deltaTime;
            if (m_TimeCounter < m_PowerWaitTime) return;

            //! チャージ処理
            if (m_IsChargeUp)
            {
                //! 最大までチャージ
                m_InputHandler.Power += m_PowerChange * Time.deltaTime;
                if (m_InputHandler.Power < m_InputHandler.PowerMax) return;
                m_InputHandler.Power = m_InputHandler.PowerMax;
            }
            else
            {
                //! 最低までチャージ
                m_InputHandler.Power -= m_PowerChange * Time.deltaTime;
                if (m_InputHandler.Power > 0f) return;
                m_InputHandler.Power = 0f;
            }

            //! リピート処理
            if (!m_IsRepeat) return;

            //! リピートマージン処理
            m_MarginCounter += Time.deltaTime;
            if (m_MarginCounter < m_MarginTime) return;

            //! リピートマージンリセット
            m_MarginCounter = 0f;

            //反転
            m_IsChargeUp = !m_IsChargeUp;
        }

        //右クリック 終了
        if (Input.GetMouseButtonUp(0))
        {
            //終了 パラメタリセット
            ResetParameter();

            //移動開始
            m_InputHandler.ChangeState(InputHandler.State.Run);

            m_PadBase.gameObject.SetActive(false);
            m_PadOverrap.gameObject.SetActive(false);
        }


        //////! 入力無し
        ////if (Mathf.Abs(m_Horizontal) <= m_Deadzone && Mathf.Abs(m_Vertical) <= m_Deadzone)
        //if (Mathf.Abs(m_Move.x) <= m_Deadzone && Mathf.Abs(m_Move.y) <= m_Deadzone)
        //{
        //    ResetParameter();

        //    if (m_InputHandler.Power > 0f)
        //        m_InputHandler.ChangeState(InputHandler.State.Run);
        //    return;
        //}

        ////m_InputVector = m_InputHandler.TransformCameraDirection(new Vector3(m_Horizontal, 0f, m_Vertical));
        //m_InputVector = m_InputHandler.TransformCameraDirection(new Vector3(m_Move.x, 0f, m_Move.y));
        //m_InputVector.y = 0f;
        ////! 誤差許容処理
        //if (m_IsTolerate && m_InputHandler.InputVector != m_InputVector)
        //{
        //    ResetParameter();
        //    m_InputHandler.SetInputVector(m_InputVector);
        //    m_InputHandler.PowerReset();
        //    return;
        //}
        //else
        //{
        //    m_InputHandler.SetInputVector(m_InputVector);
        //}
        

        ////! チャージ遷移時間加算
        //m_TimeCounter += Time.deltaTime;
        //if (m_TimeCounter < m_PowerWaitTime) return;

        ////! チャージ処理
        //if (m_IsChargeUp)
        //{
        //    //! 最大までチャージ
        //    m_InputHandler.Power += m_PowerChange * Time.deltaTime;
        //    if (m_InputHandler.Power < m_InputHandler.PowerMax) return;
        //    m_InputHandler.Power = m_InputHandler.PowerMax;
        //}
        //else
        //{
        //    //! 最低までチャージ
        //    m_InputHandler.Power -= m_PowerChange * Time.deltaTime;
        //    if (m_InputHandler.Power > 0f) return;
        //    m_InputHandler.Power = 0f;
        //}

        ////! リピート処理
        //if (!m_IsRepeat) return;

        ////! リピートマージン処理
        //m_MarginCounter += Time.deltaTime;
        //if (m_MarginCounter < m_MarginTime) return;

        ////! リピートマージンリセット
        //m_MarginCounter = 0f;

        ////反転
        //m_IsChargeUp = !m_IsChargeUp;
    }

    private void ResetParameter()
    {
        m_TimeCounter = 0f;
        m_MarginCounter = 0f;
    }

    private bool EnableInputVector(Vector3 _InputVector)
    {
        Vector3 diffrent = m_InputHandler.InputVector - _InputVector;
        return (Mathf.Abs(diffrent.x) > m_Threshold) && (Mathf.Abs(diffrent.z) > m_Threshold);
    }

    public override void DebugMethod()
    {
        base.DebugMethod();
        Debug.DrawRay(this.transform.position, m_InputVector, Color.green);
    }

}
