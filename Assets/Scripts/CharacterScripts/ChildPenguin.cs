/// <summary>
/// @file   ChildPenguin.cs
/// @brief	子ペンギンの挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Effekseer;

public class ChildPenguin : Penguin
{
    //! 移動の有効・無効 子ペンギンの群れ化
    [SerializeField]
    [Tooltip("子ペンギンの群れ化")]
    private bool m_InPack = false;
    public bool InPack{ get { return m_InPack; } }
    //!ボスステージ判定
    [SerializeField, NonEditableField]
    private bool m_Boss = false;
    public void Boss() { m_Boss = true; }


    //! 群れ化当たり判定
    [SerializeField]
    [Tooltip("群れ化当たり判定")]
    [Space(20)]
    private GameObject m_PackCollider;

    //! 移動方向反転
    [SerializeField]
    [Tooltip("子ペンギンの移動方向を反転する")]
    private bool m_ReverseMove = false;

    //! パワー変化反転
    [SerializeField]
    [Tooltip("パワー変化量を最大値から最小値にする")]
    private bool m_ReversePower = false;

    //! 移動速度
    [SerializeField]
    [Tooltip("子ペンギンの移動速度(1がベース)")]
    [Range(0.0f, 4.0f)]
    protected float m_BaseSpeed = 1.0f;

    //! 移動遅延
    [SerializeField]
    [Tooltip("子ペンギンの移動開始までの遅延")]
    [Range(0.0f, 5.0f)]
    private float m_Delay = 1.0f;

    //! layer変更用
    [LayerField]
    private int m_PackLayer = 8;

    //! 親ペンギン
    public ParentPenguin Parent { get; private set; }


    //! 死亡処理
    public System.Action<ChildPenguin> onKillEvent;
    //! 群れ化処理
    public System.Action onPackEvent;

    protected override void Awake()
    {
        base.Awake();

        //! 子ペンギンの死亡処理に自分を渡す
        onKillEvent = delegate (ChildPenguin child) { };
        onPackEvent = delegate () { };

        Effect = GetComponent<EffectSpawner>();
    }

    /// <summary>
    /// @brief      ペンギンの死亡処理
    /// </summary>
    public override void Kill(bool Gimmick)
    {
        //! ベースクラス
        base.Kill(Gimmick);
        onKillEvent(this);
    }

    /// <summary>
    /// @brief      ペンギンの無敵状態変更処理
    /// </summary>
    public override void Invincible(bool inv)
    {
        base.Invincible(inv);
    }

    /// <summary>
    /// @brief      親ペンギンの移動量を渡す
    /// @param      移動量(Vector3)
    /// </summary>
    public new void MoveHandler(Vector3 move)
    {
        //! パワー再計算
        if (m_ReversePower)
            move = move.normalized * (m_InputHandler.PowerMax - m_InputHandler.Power);

        //! 親ペンギンから取得した移動量を反転して適用
        if (m_ReverseMove)
            move = -move;

        //! m_Delayがあれば
        if (m_Delay != 0.0f)
        {
            //! 遅延用のCouroutine
            StartCoroutine(MoveCoroutine(move));
            return;
        }

        base.MoveHandler(move * m_BaseSpeed);
    }

    /// <summary>
    /// @brief      遅延ありきの移動Coroutine
    /// @param      移動量(Vector3)
    /// </summary>
    IEnumerator MoveCoroutine(Vector3 move)
    {
        //! m_Delay分待つ
        yield return new WaitForSeconds(m_Delay);

        base.MoveHandler(move * m_BaseSpeed);

        yield break;
    }

    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理
    /// @param (a)	群れに追加するか判定するcollision
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        if (!m_InPack)
        {
            //! 親ペンギンを取得
            if (other.gameObject.CompareTag("ChildPenguin"))
            {
                Parent = other.gameObject.GetComponent<ChildPenguin>().Parent;
            }
            else if (other.gameObject.CompareTag("ParentPenguin"))
            {
                Parent = other.gameObject.GetComponent<ParentPenguin>();
            }

            //! 親ペンギンの群れに追加する
            if (Parent)
            {
                Parent.AddToPack(this);

                //if (Effect != null)
                //    Effect.PlayerEffect("friend", transform.position);

                if (Effect != null)
                {
                    var pos = transform.position;

                    pos.y += 1.0f;

                    var scale = new Vector3(0.5f, 0.5f, 0.5f);

                    //!なき声
                    //!反転
                    if (m_ReverseMove)
                    {
                        Effect.PlayerEffect("PU!", pos, scale);

                    }
                    //!速い
                    else if (m_BaseSpeed > 1.0f)
                    {
                        Effect.PlayerEffect("PA!", pos, scale);

                    }
                    //!遅い
                    else if (m_BaseSpeed < 1.0f)
                    {
                        Effect.PlayerEffect("PO!", pos, scale);
                    }
                    //!ノーマル
                    else
                    {
                        Effect.PlayerEffect("PE!", pos, scale);
                    }
                }
            }

        }
    }

    /// <summary>
    /// @brief      物体に当たる時のエフェクト発生処理
    /// @param (a)	物体と衝突判定するcollision
    /// </summary>
    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.layer == 14)
        {
            if (Effect != null)
                Effect.PlayerEffect("crash", transform.position, new Vector3(0.5f, 0.5f, 0.5f));
        }
    }

    /// <summary>
    /// @brief      群れ化処理
    /// @param      親ペンギン(ParentPenguinMove)
    /// </summary>
    public void SetInPack(ParentPenguin parent)
    {
        //! 親ペンギンを取得
        this.Parent = parent;
        
        m_InputHandler = this.Parent.GetInputHandler();

        this.onPackEvent();

        //! collision layerをpack penguinにする
        gameObject.layer = m_PackLayer;

        //! packcolliderを削除 
        Destroy(m_PackCollider);

        //! 移動を有効にする
        m_InPack = true;
    }

    protected override void Enshutsu()
    {
        GetComponent<CapsuleCollider>().enabled = false;
        m_Rigidbody.useGravity = false;

        if (m_InPack)
        {

            if (Vector3.Distance(m_GoalPos, transform.position) > m_GoalRadius)
            {
                transform.position = Vector3.MoveTowards(transform.position, m_GoalPos, Time.deltaTime * m_GoalSpeed);
                transform.LookAt(m_GoalPos);
            } 

            else
            {
                GetComponentInChildren<Animator>().SetBool("GoalEnshutsu", true);
            }
        }

        else
        {
            transform.GetChild(0).gameObject.SetActive(false);
        }
    }
}
