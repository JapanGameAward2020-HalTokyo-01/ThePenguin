/// <summary>
/// @file   ChildPenguinMove.cs
/// @brief	子ペンギンの挙動(仮)
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildPenguinMove : MonoBehaviour
{
    //速度
    public float m_MoveSpeed = 6;
    //マテリアルリスト
    private Material[] m_Material;
    private bool m_Move = false;


    private ParentPenguinMove m_Parent;
    private Renderer m_Renderer;
    private CapsuleCollider m_CapsuleCollider;
    private Rigidbody m_RigidBody;

    //モデルアニメーション入れるまでの位置調整のfix(アニメーション導入後にこれ消してね)
    private bool m_Tempfix = true;

    //移動用のVector3群
    private Vector3 m_StoredMove;
    private Vector3 m_DirectionMove;

    // Start is called before the first frame update
    void Start()
    {
        //色を変えるためRenderer取得
        m_Renderer = GetComponent<Renderer>();
        m_Renderer.enabled = true;

        //重力変えるためRigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();

        //radius取得するためCapsuleCollider取得
        m_CapsuleCollider = GetComponent<CapsuleCollider>();

        //親ペンギンからマテリアルリストを共有
        m_Parent = FindObjectOfType(typeof(ParentPenguinMove)) as ParentPenguinMove;
        m_Material = m_Parent.m_Material;
        m_Renderer.sharedMaterial = m_Material[0];
        
        //private変数の初期化処理
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
    void Move()
    {
        if (m_Move)
        {
            //親ペンギンと同じ色にする
            m_Renderer.sharedMaterial = m_Parent.GetMaterial();

            //親ペンギンの色を元にステートを変更
            switch (CompareMatName())
            {
                case 0://待機ステート
                    m_RigidBody.useGravity = true;
                    transform.eulerAngles = Vector3.zero;
                    if (m_Tempfix)
                    {
                        //アニメーション導入後にこれ消してね
                        Vector3 _pos = transform.position;
                        _pos[1] = transform.localScale.y;
                        transform.position = _pos;
                        m_Tempfix = false;
                    }
                    break;
                case 1://貯めるステート
                    m_RigidBody.useGravity = false;
                    transform.rotation = m_Parent.GetRotation();
                    break;
                case 2://移動ステート
                    m_RigidBody.useGravity = true;
                    transform.rotation = m_Parent.GetRotation();
                    m_StoredMove = m_Parent.GetStoredMove();
                    break;
                default:
                    break;
            }

            //移動ステート時のドライバー
            if (m_StoredMove != Vector3.zero)
            {
                m_DirectionMove = Vector3.Normalize(m_StoredMove);
                //transform.eulerAngles = new Vector3(m_DirectionMove.z, m_DirectionMove.y, -m_DirectionMove.x) * 90;


                //アニメーション導入後にこれ消してね
                Vector3 _pos = transform.position;
                _pos[1] = m_CapsuleCollider.radius;
                transform.position = _pos;
                m_Tempfix = true;

                transform.position += m_DirectionMove * Time.deltaTime * m_MoveSpeed;
            }
        }
    }

    /// <summary>
    /// @brief      親ペンギンが使用してマテリアル番号を探すプログラム
    /// @returns    マテリアル番号(int)
    /// </summary>
    private int CompareMatName()
    {
        int _temp = -1;
        for (int i = 0; i < 3; i++)
        {
            if(m_Parent.GetMaterial().name.Contains(m_Parent.m_Material[i].name))
            {
                _temp = i;
                break;
            }
        }
        return _temp;
    }

    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理(コントローラーから呼び出す)→collision layerをpack penguinにし、moveを有効にする
    /// </summary>
    public void SetMoveTrue()
    {
        //collision layerをpack penguinにする
        gameObject.layer = 8;
        //moveを有効にする
        m_Move = true;
    }


    /// <summary>
    /// @brief      子ペンギンを群れに追加する処理
    /// @param (a)	ペンギンtagを持ってるか判定するcollision
    /// </summary>
    //private void OnCollisionEnter(Collision a)
    //{
    //    if (a.gameObject.tag == "Penguin")
    //    {
    //        m_Move = true;
    //    }
    //}
}
