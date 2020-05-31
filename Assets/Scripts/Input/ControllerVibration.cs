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
    private List<Shake> m_ShakeList = new List<Shake>();

    //!振動パワー
    [SerializeField, NonEditableField]
    private float VibrationPower;

    //!チャージ用振動パワー
    private float ChargePower;

    [SerializeField, Tooltip("チャージ時最大振動値"), Range(0.1f, 1.0f)]
    private float ChargeVibration_Max　= 0.6f;
    [SerializeField, Tooltip("チャージ時最小振動値"), Range(0.1f, 1.0f)]
    private float ChargeVibration_Min = 0.3f;

    void Start()
    {
        VibrationPower = 0.0f;
        ChargePower = 0.0f;
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

        VibrationPower = 0.0f;

        //!チャージ振動優先処理
        if (ChargePower > 0.0f)
        {
            VibrationPower = ChargePower;
        }
        else if(m_ShakeList.Count > 0)
        {
            VibrationPower = m_ShakeList[0].power;
        }

        //!揺らす
        GamePad.SetVibration(playerIndex, VibrationPower, VibrationPower);

    }

    //!チャージ振動のパワー入り
    public void ChargeShake(float p)
    {
        if(p <= 0)
        {
            ChargePower = 0.0f;
            return;
        }

        ChargePower = Mathf.Lerp(ChargeVibration_Min, ChargeVibration_Max, p);
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
        ChargePower = 0.0f;
        m_ShakeList.Clear();
        GamePad.SetVibration(playerIndex, 0, 0);
    }

    //!パワーを比較
    private int CompareByPower(Shake x, Shake y)
    {
        return x.power.CompareTo(y.power);
    }
}
