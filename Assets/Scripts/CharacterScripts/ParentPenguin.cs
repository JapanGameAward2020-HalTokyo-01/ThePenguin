/// <summary>
/// @file	ParentPenguin.cs
/// @brief	親ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentPenguin : Penguin
{
    //! Rigidbodyのvelocityの大きさ
    [SerializeField, NonEditableField]
    private float m_Magnitude = 0;

    //! ボスステージ判定
    [SerializeField, Space(20)]
    protected bool m_Boss = false;
    public bool Boss { get { return m_Boss; } private set { } }
    //! 無敵状態移行数値
    [SerializeField]
    private float m_ChargeThreshold;
    //! 無敵状態解除数値
    [SerializeField]
    private float m_InvincibleDuration;

    //! 子ペンギンの群れリスト
    private List<ChildPenguin> m_ChildPenguins = new List<ChildPenguin>();

    //! 親ペンギンの死亡処理
    public System.Action onKillEvent;

    //!振動管理用オブジェクト
    private ControllerVibration m_ControllerVibration;

    //ゴール演出 - 子ペンギン演出終了判定
    public bool m_EveryoneJumped = false;

    [SerializeField]
    private GameObject m_MarkerObject;

    private InputEvent m_InputEvent;

    protected override void Awake()
    {
        base.Awake();

        //! 親ペンギンの死亡処理に自分を渡す(今後必要かも知れないので)
        onKillEvent = delegate () { };

        Effect = GetComponent<EffectSpawner>();

        m_InputEvent = new InputEvent(this);
    }

    // Start is called before the first frame update
    protected override void Start()
    {
        //! ベースクラスの初期設定
        base.Start();

        //! InputHandlerの設定忘れ用の処理
        m_InputHandler = FindObjectOfType<InputHandler>();

        //! InputHandlerにEvent登録
       // m_InputHandler.RegisterInputEvent(m_InputEvent);

        m_ControllerVibration = FindObjectOfType<ControllerVibration>();
    }


    protected override void Update()
    {
        base.Update();

        //! Rigidbodyのvelocityを格納
        m_Magnitude = m_Rigidbody.velocity.magnitude;
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public override void Kill(bool Gimmick)
    {
        //! ベースクラス
        base.Kill(Gimmick);
        //! ゲームオーバーになる
        onKillEvent();
    }

    /// <summary>
    /// @brief      ペンギンの無敵状態変更処理
    /// </summary>
    public override void Invincible(bool inv)
    {
        //! 無敵状態変更
        base.Invincible(inv);

        //! 群れの無敵状態変更
        foreach (ChildPenguin _child in m_ChildPenguins)
        {
            _child.Invincible(inv);
        }

        if (inv)
        {
            //! 無敵状態解除処理
            StartCoroutine(StopInvincible());
        }
    }

    /// <summary>
    /// @brief      無敵状態解除処理Coroutine
    /// </summary>
    IEnumerator StopInvincible()
    {
        //! m_Delay分待つ
        yield return new WaitForSeconds(m_InvincibleDuration);

        Invincible(false);

        yield break;
    }

    /// <summary>
    /// @brief      InputHandlerの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    protected override void MoveHandler(Vector3 move)
    {
        //! ボスステージ判定
        if (m_Boss)
        {
            //! 無敵状態判定
            if (m_InputHandler.Power >= m_ChargeThreshold)
            {
                Invincible(true);
            }
        }
        //! InputHandlerから取得した移動量を適用
        base.MoveHandler(move);

        //! 群れを移動
        foreach (ChildPenguin _child in m_ChildPenguins)
        {
            _child.MoveHandler(move);
        }
    }

    /// <summary>
    /// @brief      ペンギンを群れに追加する
    /// @param      群れ化の対象(ChildPenguinMove)
    /// </summary>
    public void AddToPack(ChildPenguin _child)
    {
        //! ChilePenguinsへ追加
        m_ChildPenguins.Add(_child);

        //! childを群れ化
        _child.SetInPack(this);
    }

    /// <summary>
    /// @brief      入力ハンドラーを渡す
    /// </summary>
    public InputHandler GetInputHandler()
    {
        return m_InputHandler;
    }

    public ControllerVibration GetControllerVibration()
    {
        return m_ControllerVibration;
    }

    /// <summary>
    /// @brief      物体に当たる時のエフェクト発生処理
    /// @param (a)	物体と衝突判定するcollision
    /// </summary>
    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.layer == 14)
        {
            m_ControllerVibration.AddShake(0.4f, 0.2f);
            animator.SetTrigger("OnCrash");
            if (Effect != null)
                Effect.PlayerEffect("crash", transform.position, new Vector3(0.5f, 0.5f, 0.5f));
        }
    }

    //! ゴール演出処理
    protected override void Enshutsu()
    {
        GetComponent<CapsuleCollider>().enabled = false;
        m_Rigidbody.useGravity = false;
        m_MarkerObject.SetActive(false);

        if (Vector3.Distance(m_GoalPos, transform.position) > m_GoalRadius)
        {
            transform.position = Vector3.MoveTowards(transform.position, new Vector3(m_GoalPos.x, m_GoalPos.y + 0.5f, m_GoalPos.z), Time.deltaTime * m_GoalSpeed);
            transform.LookAt(m_GoalPos);
        }

        else if (m_EveryoneJumped)
        {
            if (!m_PlayedFirstGoal)
            {
                GetComponentInChildren<Animator>().SetTrigger("OnGoal");
                GetComponentInChildren<Animator>().SetTrigger("OnGoalJump");
                m_PlayedFirstGoal = true;
            }
        }
    }

    public void RegisterInputEvent()
    {
        //! InputHandlerにEvent登録
        m_InputHandler.RegisterInputEvent(m_InputEvent);
    }

    public void UnRegisterInputEvent()
    {
        m_InputHandler.UnRegisterInputEvent(m_InputEvent);
    }

    public float GetPower()
    {
        return m_InputHandler.Power;
    }

    public float GetPowerMax()
    {
        return m_InputHandler.PowerMax;
    }

    public Vector3 GetForward()
    {
        return m_Model.transform.forward;
    }

    public int GetChildCount()
    {
        return m_ChildPenguins.Count;
    }

    /// <summary>
    /// @brief      入力時のイベント
    /// </summary>
    public class InputEvent : InputHandler.InputEventBase
    {
        private ParentPenguin m_ParentPenguin;

        private EffectSpawner Effect;

        private bool IsWait = false;
        private float oldPower = 0f;

        //! コンストラクタ
        public InputEvent(ParentPenguin penguin)
        {
            m_ParentPenguin = penguin;

            Effect = m_ParentPenguin.Effect;

            this.OnRun += () => 
            {
                if (!m_ParentPenguin.IsMoving())
                {
                    m_Handler.ChangeState(InputHandler.State.Idle);
                }
            };

            this.OnIdle += () =>
            {
                 if (m_Handler.Power != oldPower && oldPower == 0 && !m_ParentPenguin.animator.GetBool("IsCharge"))
                 {
                     m_ParentPenguin.animator.SetTrigger("OnCharge");
                 }
                 oldPower = m_Handler.Power;

                 if (m_Handler.Power > 0)
                 {
                     m_ParentPenguin.animator.SetBool("IsCharge", true);
                     //! ペンギンの向きを設定
                     m_ParentPenguin.m_ModelForward = -m_Handler.InputVector;
                 }

                 m_ParentPenguin.GetControllerVibration().ChargeShake(m_Handler.Power * 0.1f);

                 if (Effect != null)
                 {
                     if (m_Handler.Power > (m_Handler.PowerMax * 2) / 4)
                     {
                         m_ParentPenguin.animator.SetBool("IsChargeMax", true);
                     }
                     else if (m_Handler.Power > m_Handler.PowerMax / 4)
                     {
                         m_ParentPenguin.animator.SetBool("IsChargeMax", false);
                     }
                 }
            };

            this.TickStateIdle += () =>
            {

            };

            this.TickStateRun += () =>
            {
                //UnityEditor.EditorApplication.isPaused = true;

                //IsWait = true;

                m_ParentPenguin.animator.SetFloat("Power", m_Handler.Power);
                m_ParentPenguin.animator.SetBool("IsCharge", false);

                m_ParentPenguin.MoveHandler(m_Handler.GetMoveVector());
            };
        }

        IEnumerator MoveCorutine()
        {
            Vector3 vec = m_Handler.GetMoveVector();
            yield return null;
            yield return new WaitWhile(() => m_ParentPenguin.IsMoving());
            yield return new WaitForSeconds(0.5f);
            IsWait = false;
            yield break;
        }
    }
}