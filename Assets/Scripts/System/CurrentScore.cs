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
    [SerializeField, NonEditableField, Tooltip("ステージ規定値：ペンギン数")]
    public int m_total_count;

    [SerializeField, NonEditableField, Tooltip("星条件：ペンギン数")]
    public int m_quest_count;
    [SerializeField, NonEditableField, Tooltip("結果：ペンギン数")]
    public int m_result_count;

    [SerializeField, NonEditableField, Tooltip("星条件：時間")]
    public float m_quest_time;
    [SerializeField, NonEditableField, Tooltip("結果：時間")]
    public float m_result_time;

    public bool CheckStar_Count { get => m_result_count >= m_quest_count; }
    public bool CheckStar_Time { get => m_result_time >= m_quest_time; }

    public FaceIcon.kState m_face;

    // ペンギンマネージャーから成績の記録する
    public void JudgeScore(PenguinManager _manager)
	{
        m_total_count = _manager.m_TotalCount;

        m_result_count = _manager.m_PackCount;
        m_result_time = _manager.StageTime;

        m_quest_count = _manager.m_settings.CountStarThreshold;
        m_quest_time = _manager.m_settings.TimeStarThreshold;

        // 死亡数が基準未満
        if (_manager.m_DeadCount < _manager.m_settings.DangerBorder)
        {
            // 群れ数が Good未満
            if (_manager.m_PackCount < _manager.m_settings.GoodBorder) m_face = FaceIcon.kState.Normal;
            // 群れ数が Good以上 Max 未満
            else if (_manager.m_PackCount < _manager.m_settings.MaxBorder) m_face = FaceIcon.kState.Good;
            // 群れ数が Max以上
            else m_face = FaceIcon.kState.Max;
        }
        // 死亡数が基準超え
        else
        {
            m_face = FaceIcon.kState.Danger;
        }

    }
}
