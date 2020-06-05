/**
 * @file	CurrentScore.cs
 * @brief	結果を一時保存するコンポーネント
 * @auther	谷沢　瑞己
 */
using UnityEngine;

/**
 * @class	CurrentScoreクラス
 * @brief	結果を一時保存するコンポーネント
 */
public class CurrentScore : MonoBehaviour
{
    [SerializeField, NonEditableField, Tooltip("クリア条件：ペンギン数")]
    public int m_total_count;
    [SerializeField, NonEditableField, Tooltip("結果：ペンギン数")]
    public int m_saved_count;

    [SerializeField, NonEditableField, Tooltip("クリア条件：時間")]
    public float m_limit_time;
    [SerializeField, NonEditableField, Tooltip("結果：時間")]
    public float m_clear_time;


    // ペンギンマネージャーから成績の記録する
    public void JudgeScore(PenguinManager _manager)
	{
        m_limit_time = _manager.m_settings.TimeLimit;
        m_clear_time = _manager.StageTime;
        m_total_count = _manager.m_TotalCount;
        m_saved_count = _manager.m_PackCount;
    }
}
