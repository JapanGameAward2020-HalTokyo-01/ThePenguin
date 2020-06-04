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
    [SerializeField]
    public GameData m_data;

    // ペンギンマネージャーから成績の記録する
    public void JudgeScore(PenguinManager _manager)
	{
        m_data.m_Time = _manager.StageTime;
        m_data.m_TotalPenguins = _manager.m_TotalCount;
        m_data.m_SavedPenguins = _manager.m_PackCount;

        // 判断基準不明
        m_data.m_Star1 = true;
        m_data.m_Star2 = true;
        m_data.m_Star3 = true;
    }
}
