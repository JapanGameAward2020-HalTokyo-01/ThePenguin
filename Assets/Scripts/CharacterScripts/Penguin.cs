/// <summary>
/// @file	Penguin.cs
/// @brief	ペンギンのベースクラス
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Penguin : MonoBehaviour
{
    [SerializeField]
    protected GameObject m_Model;
    //! 状態遷移
    [SerializeField]
    private GameObject m_States;
    //! 各ステートのリスト
    private List<PenguinState> m_PenguinStates;

    //! 現ステート
    [SerializeField, NonEditableField]
    protected PenguinState m_CurrentState;

    //! 入力ハンドラー
    [SerializeField, NonEditableField]
    protected InputHandler m_InputHandler;

    //! 再移動可能数値
    [SerializeField, Space(20)]
    private float m_MoveThreshhold = 0.01f;

    //! 落下判断基準数値
    [SerializeField]
    private float m_FallThreshhold = 5.0f;

    //! Rigidbody
    protected Rigidbody m_Rigidbody;

    //! 無敵状態判定
    [SerializeField, NonEditableField]
    protected bool m_Invincible = false;

    #region ゴール演出関係
    //! ステージクリア演出判定
    private bool m_ClearAnimation = false;

    //! ステージクリア演出用、ゴール座標
    protected Vector3 m_GoalPos = Vector3.zero;

    //! ステージクリア演出_移動速度
    protected float m_GoalSpeed = 6.0f;

    //! ステージクリア演出_到着判定
    protected float m_GoalRadius = 1.3f;

    //! ステージクリア演出終了判定
    public bool m_ClearAnimationEnded = false;

    //! 最初のゴールアニメーション再生判定
    protected bool m_PlayedFirstGoal = false;

    [SerializeField]
    private int m_BossJumpTimer = 0;

    protected bool m_BossPlayedFirst = false;

    protected bool m_BossEnshutsu_Ended = false;

    #endregion

    //!エフェクトスポーンナー
    public EffectSpawner Effect { get; protected set; }

    [SerializeField]
    private Animator m_Animator;
    //public Animator animator { get { return m_Animator; } get { return m_Animator; } }
    public Animator animator { get => m_Animator; set => m_Animator = value; }

    public PenguinManager manager { get; set; }

    public Vector3 m_ModelUp;
    public Vector3 m_ModelForward;

    private bool m_Tilting;
    private RaycastHit m_Hit;
    public bool ClearAnimation { get => m_ClearAnimation; set => m_ClearAnimation = value; }

    public bool CanCrashWall = false;

    private bool m_DelayFallTrigger = true;

    protected virtual void Awake()
    {
        m_PenguinStates = new List<PenguinState>();
    }

    // Start is called before the first frame update
    protected virtual void Start()
    {
        //! Rigidbody設定
        m_Rigidbody = GetComponent<Rigidbody>();
        m_ModelForward = m_Model.transform.forward;
        m_ModelUp = m_Model.transform.up;

        if (m_Animator == null)
            m_Animator.GetComponentInChildren<Animator>();

        //! PenguinStateを設定
        if (m_States)
        {
            PenguinState[] states = m_States.GetComponentsInChildren<PenguinState>();
            if (states.Length > 0)
            {
                foreach (PenguinState state in states)
                {
                    m_PenguinStates.Add(state);
                    state.Init(this);
                }

                m_CurrentState = m_PenguinStates[0];
            }
        }

        //! CurrentStateの設定
        m_CurrentState.OnStart();

        StartCoroutine(DelayFalltrigger());
    }

    IEnumerator DelayFalltrigger()
    {
        yield return new WaitForSeconds(1.0f);
        m_DelayFallTrigger = false;
    }
    // Update is called once per frame
    protected virtual void Update()
    {
        m_CurrentState.OnUpdate();

        if (this.IsMoving())
        {
            m_CurrentState.OnMoving();
        }

        m_Model.transform.forward = m_ModelForward;
        m_ModelForward = Vector3.Cross(m_Model.transform.right, m_ModelUp);
        m_Model.transform.rotation = Quaternion.LookRotation(m_ModelForward, m_ModelUp);
        Debug.DrawRay(m_Model.transform.position, m_Model.transform.up, Color.red);
        Debug.DrawRay(m_Model.transform.position, m_Model.transform.forward, Color.red);

        if (m_ClearAnimation)
        {
            Enshutsu();
        }
    }

    protected virtual void FixedUpdate()
    {
        m_CurrentState.OnFixedUpdate();
    }

    /// <summary>
    /// @brief      ペンギンの無敵状態変更処理
    /// </summary>
    public virtual void Invincible(bool inv)
    {
        m_Invincible = inv;
    }

    /// <summary>
    /// @brief      InputHandlerに親ペンギンが動いているかを渡す
    /// @return     動いているか(bool)
    /// </summary>
    public bool IsMoving()
    {
        //! 移動force残ってるか
        return m_Rigidbody.velocity.magnitude > m_MoveThreshhold;
    }

    /// <summary>
    /// @brief      ペンギンの移動処理
    /// @param      移動量(Vector3)
    /// </summary>
    protected virtual void MoveHandler(Vector3 move)
    {
        CanCrashWall = true;
        m_Rigidbody.AddForce(move * m_Rigidbody.mass * 100f, ForceMode.Force);
        m_ModelForward = move;
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public virtual void Kill(bool Gimmick)
    {
        if (m_ClearAnimation)
            return;


        if (m_Invincible && Gimmick)
        {
            return;
        }

        //! 現ステートの死亡処理呼び出し
        m_CurrentState.OnKill();
    }

    /// <summary>
    /// @brief      State遷移
    /// </summary>
    public bool ChangeState<Type>() where Type : PenguinState
    {
        //! リストから探査する
        foreach (PenguinState state in m_PenguinStates)
        {
            if (state.GetType() != typeof(Type)) continue;

            m_CurrentState.OnRelease();

            m_CurrentState = state;

            m_CurrentState.OnStart();

            return true;
        }

        return false;
    }

    /// <summary>
    /// @brief      落ちてるか判定
    /// </summary>
    public bool GetFall()
    {
        if (m_DelayFallTrigger)
        {
            return false;
        }
        else
        {
            return m_Rigidbody.velocity.y < -m_FallThreshhold;
        }
    }

    /// <summary>
    /// @brief      ペンギンのvelocityの大きさを返す
    /// </summary>
    public float GetSpeed()
    {
        return m_Rigidbody.velocity.magnitude;
    }

    /// <summary>
    /// @brief      モデルの上方向を変更
    /// </summary>
    public virtual void SetModelRotation(Vector3 newup)
    {
        m_ModelUp = newup;
        if (!m_Tilting)
        {
            m_Tilting = true;
            StartCoroutine(SlopeChecker());
        }
    }

    IEnumerator SlopeChecker()
    {
        while (m_Tilting)
        {
            Debug.DrawRay(transform.position, -transform.up * 5, Color.green);
            if (Physics.Raycast(transform.position, -transform.up, out m_Hit))
            {
                if (m_Hit.collider.gameObject.GetComponent<SlopeTilt>() == null)
                {
                    Debug.Log("Penguin no longer on Slope!");
                    this.SetModelRotation(Vector3.up);
                    m_Tilting = false;
                }
            }
            yield return new WaitForSecondsRealtime(0.2f);
        }
        Debug.Log("Stopped checking for slopes");
        yield break;
    }

    /// <summary>
    /// @brief      ステージクリア判定
    /// </summary>
    public void StageClear(GameObject goal, bool isBoss)
    {
        if (isBoss)
        {
            m_GoalRadius = 0.3f;
        }
        else
        {
            m_BossEnshutsu_Ended = true;
        }

        m_GoalPos = new Vector3(goal.transform.position.x, goal.transform.position.y + 0.5f, goal.transform.position.z);
        m_ClearAnimation = true;
        m_Rigidbody.velocity = Vector3.zero;
        GetComponentInChildren<AnimationCheck>().goalAnimator = goal.GetComponentInChildren<Animator>();
    }

    
    /// <summary>
    /// @brief      ステージクリア演出処理
    /// </summary>
    protected virtual void Enshutsu()
    {
        if (Vector3.Distance(m_GoalPos, transform.position) > m_GoalRadius)
        {
            transform.position = Vector3.MoveTowards(transform.position, m_GoalPos, Time.deltaTime * m_GoalSpeed);
        }
    }
    public Vector3 GetGoalPos()
    {
        return m_GoalPos;
    }

    protected bool BossDefeat()
    {
        bool ended = false;

        if (!m_BossPlayedFirst)
        {
            if (m_BossJumpTimer < (int)(60 * 1.5f))
            {
                m_BossJumpTimer++;
            }

            else if (!ended)
            {
                //GetComponentInChildren<Animator>().SetTrigger("OnBossJump");
                ended = true;
                m_BossPlayedFirst = true;
                m_BossEnshutsu_Ended = true;
            } 
        }

        return ended;
    }
}