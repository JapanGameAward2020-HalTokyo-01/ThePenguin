using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/**
* @file		KingPenguinMove.cs
* @brief	親ペンギンの挙動(仮)
* @author	北林和哉
*/
public class KingPenguinMove : MonoBehaviour
{
    public float m_MoveSpeed = 6;
    public float m_Radius = 0.5f;
    public Material[] m_Material;
    Renderer m_Renderer;
    Rigidbody m_RigidBody;

    /// <summary>
    /// 本当はprivateだけど、DEBUG用に一時的にPublicにしてある　-------------------------------------------------忘れないように--------------------------
    /// </summary>
    public Vector3 m_StoredMove;
    public Vector3 m_DirectionMove;

    // Start is called before the first frame update
    void Start()
    {
        //色を変えるためRenderer取得
        m_Renderer = GetComponent<Renderer>();
        m_Renderer.enabled = true;
        m_Renderer.sharedMaterial = m_Material[0];

        //重力変えるためRigidbody取得
        m_RigidBody = GetComponent<Rigidbody>();

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
    /// コントローラーなかったのでキーボードの仮コントロール同時に作った。
    /// 多分聞いた感じ実際のコントロールと逆だけど、キーボードで組もうとすると大掛かりになりそうだったからこんな感じになった。
    /// ニュアンスは同じだと思うので今の所許して。
    /// 
    /// 実際の親ペンギンの色を変える処理はこのオブジェのマテリアルを変更して実装している。
    /// 「フラグ立てて」とも書いてあったが、マテリアルの比較で同じことでできないだろうか。
    /// </summary>
    void Move()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //動く量をためる
            m_StoredMove += Vector3.forward;

            //重力あると傾け向けると動くから←モデルアニメーションで傾きを表現する時これはいらなくなる
            m_RigidBody.useGravity = false;
            //向いている方角に傾ける
            transform.eulerAngles = Vector3.right * 30;      //向きはXが上下
            //色を2番目に変更
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
            //重力戻す
            m_RigidBody.useGravity = true;
            //色を3番目に変更
            m_Renderer.sharedMaterial = m_Material[2];

            //ためた動く量を1の長さにして一回分の距離を取得
            m_DirectionMove = Vector3.Normalize(m_StoredMove);

            //横に倒す処理
            transform.eulerAngles = new Vector3(m_DirectionMove.z, m_DirectionMove.y, m_DirectionMove.x) * 90;

            //位置調整 (直接変更すると怒られるからこうなってる)
            Vector3 _pos = transform.position;
            _pos[1] = m_Radius;
            transform.position = _pos;

            //ためた方角に一回分移動
            transform.position += m_DirectionMove * Time.deltaTime * m_MoveSpeed;

            //移動した分減らす
            m_StoredMove -= m_DirectionMove;
        }
        else
        {
            //重力戻す
            m_RigidBody.useGravity = true;
            //初期角度に戻す
            transform.eulerAngles = Vector3.zero;
            //色を1番目に変更
            m_Renderer.sharedMaterial = m_Material[0];
        }
    }

}

