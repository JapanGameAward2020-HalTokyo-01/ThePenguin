/**
* @file     ControllerVibration.cs
* @brief    コントロール振動
* @author   李爾捷
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XInputDotNetPure;


/**
* @class    ControllerVibration
* @brief    コントロール振動
*/
public class ControllerVibration : MonoBehaviour
{
    //!振動クラス
    class Shake
    {
        //!振動パワー
        public float power;
        //!振動時間
        public float time;
        //!初期化
        public Shake(float p, float t)
        {
            this.power = p;
            this.time = t;
        }
    }
    //!コントロール関連（特に使わない）
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;

    //!振動管理用リスト
    [SerializeField]
    private List<Shake> m_ShakeList = new List<Shake>();

    //!チャージ用振動パワー
    [SerializeField, NonEditableField]
    private float ShakePower;

    void Start()
    {
        ShakePower = 0.0f;
    }

    void Update()
    {
        //!リスト内の時間カウントダウン
        foreach (var shake in m_ShakeList)
        {
            shake.time -= Time.deltaTime;
        }

        //!時間がゼロ以下になると削除
        foreach (var shake in m_ShakeList.ToArray())
        {
            if(shake.time <= 0)
            {
                m_ShakeList.Remove(shake);
            }
        }

        float power = 0.0f;

        //!チャージ振動優先処理
        if (ShakePower > 0.0f)
        {
            power = ShakePower;
        }
        else if(m_ShakeList.Count > 0)
        {
            power = m_ShakeList[0].power;
        }

        //!揺らす
        GamePad.SetVibration(playerIndex, power, power);

    }

    //!チャージ振動のパワー入り
    public void ChargeShake(float p)
    {
        if(p <= 0)
        {
            ShakePower = 0.0f;
            return;
        }

        ShakePower = Mathf.Lerp(0.3f, 0.6f, p);
    }

    //!振動リストに新しい振動を追加　ｐ→POWER　ｔ→TIME
    public void AddShake(float p, float t)
    {
        var s = new Shake(p, t);

        m_ShakeList.Add(s);

        m_ShakeList.Sort(CompareByPower);
    }

    //!全停止
    public void StopAllShake()
    {
        ShakePower = 0.0f;
        m_ShakeList.Clear();
        GamePad.SetVibration(playerIndex, 0, 0);
    }

    //!パワーを比較
    private int CompareByPower(Shake x, Shake y)
    {
        return x.power.CompareTo(y.power);
    }
}
