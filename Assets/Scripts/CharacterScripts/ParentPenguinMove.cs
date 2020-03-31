/// <summary>
/// @file	ParentPenguinMove.cs
/// @brief	親ペンギンの挙動(仮)
/// @author	北林和哉
/// </summary>
 
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ParentPenguinMove : MonoBehaviour
{
    //! 速度
    public float m_MoveSpeed = 6;
    //! マテリアルリスト
    public Material[] m_Material;

    private Renderer m_Renderer;
    private CapsuleCollider m_CapsuleCollider;
    private Rigidbody m_RigidBody;

    //! モデルアニメーション入れるまでの位置調整のfix(アニメーション導入後にこれ消してね)
    private bool m_Tempfix = true;  

    //! 移動用のVector3群
    private Vector3 m_StoredMove;
    private Vector3 m_DirectionMove;

    // Start is called before the first frame update
    void Start()
    {
        //! 色を変えるためRenderer取得
        m_Renderer = GetComponent<Renderer>();
        m_Renderer.enabled = true;
        m_Renderer.sharedMaterial = m_Material[0];
        
        //! 重力変えるためRigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();

        //! radius取得するためCapsuleCollider取得
        m_CapsuleCollider = GetComponent<CapsuleCollider>();

        //! private変数の初期化処理
        m_StoredMove = Vector3.zero;
        m_DirectionMove = Vector3.zero;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
    }

    /// <summary>
    /// @brief      移動関連用の関数
    /// </summary>
    private void Move()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //! 動く量をためる
            m_StoredMove += Vector3.forward;

            //! 重力あると傾け向けると動くから←モデルアニメーションで傾きを表現する時これはいらなくなる
            m_RigidBody.useGravity = false;
            //! 向いている方角に傾ける
            transform.eulerAngles = Vector3.right * 30;      //向きはXが上下
            //! 色を2番目に変更
            m_Renderer.sharedMaterial = m_Material[1];
        }
        else if (Input.GetKey(KeyCode.DownArrow))
        {
            m_StoredMove += Vector3.back;
            m_RigidBody.useGravity = false;
            transform.eulerAngles = Vector3.left * 30;
            m_Renderer.sharedMaterial = m_Material[1];
        }
        else if (Input.GetKey(KeyCode.RightArrow))
        {
            m_StoredMove += Vector3.right;
            m_RigidBody.useGravity = false;
            transform.eulerAngles = Vector3.back * 30;      //向きはZが右左
            m_Renderer.sharedMaterial = m_Material[1];
        }
        else if (Input.GetKey(KeyCode.LeftArrow))
        {
            m_StoredMove += Vector3.left;
            m_RigidBody.useGravity = false;
            transform.eulerAngles = Vector3.forward * 30;
            m_Renderer.sharedMaterial = m_Material[1];
        }
        else if (m_StoredMove != Vector3.zero)
        {
            //重力戻す←モデルアニメーションで傾きを表現する時これはいらなくなる
            m_RigidBody.useGravity = true;
            //色を3番目に変更
            m_Renderer.sharedMaterial = m_Material[2];

            //ためた動く量を1の長さにして一回分の距離を取得
            m_DirectionMove = Vector3.Normalize(m_StoredMove);

            //横に倒す処理
            transform.eulerAngles = new Vector3(m_DirectionMove.z, m_DirectionMove.y, m_DirectionMove.x) * 90;

            //位置調整 (直接変更すると怒られるからこうなってる)←モデルアニメーションで傾きを表現する時これはいらなくなる
            Vector3 _pos = transform.position;
            _pos[1] = m_CapsuleCollider.radius;
            transform.position = _pos;
            m_Tempfix = true;

            //ためた方角に一回分移動
            transform.position += m_DirectionMove * Time.deltaTime * m_MoveSpeed;

            //移動した分減らす
            m_StoredMove -= m_DirectionMove;
        }
        else
        {
            //重力戻す←モデルアニメーションで傾きを表現する時これはいらなくなる
            m_RigidBody.useGravity = true;

            if (m_Tempfix)
            {
                //位置調整 (直接変更すると怒られるからこうなってる)←モデルアニメーションで傾きを表現する時これはいらなくなる
                Vector3 _pos = transform.position;
                _pos[1] = m_CapsuleCollider.radius * 2;
                transform.position = _pos;
                m_Tempfix = false;
            }
            //初期角度に戻す
            transform.eulerAngles = Vector3.zero;
            //色を1番目に変更
            m_Renderer.sharedMaterial = m_Material[0];
        }
    }



    /// <summary>
    /// @brief      親ペンギンが使用してマテリアルを渡す
    /// @returns    マテリアル
    /// </summary>
    public Material GetMaterial()
    {
       return m_Renderer.sharedMaterial;
    }

    /// <summary>
    /// @brief      親ペンギンの移動量を渡す
    /// @returns    移動量(Vector3)
    /// </summary>
    public Vector3 GetStoredMove()
    {
        return m_StoredMove;
    }

    /// <summary>
    /// @brief      親ペンギンの向きを渡す
    /// @returns    向き(Quaternion)
    /// </summary>
    public Quaternion GetRotation()
    {
        return transform.rotation;
    }
}

