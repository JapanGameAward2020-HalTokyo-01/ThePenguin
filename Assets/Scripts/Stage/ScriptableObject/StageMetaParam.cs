using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(menuName = "CreateData/Stage/StageMetaParam", fileName = "StageMetaParam")]
public class StageMetaParam : ScriptableObject
{
	//! システムシーン
	public SceneAsset m_Title = null;
	public SceneAsset m_StageSelect = null;
	public SceneAsset m_Result = null;
	public SceneAsset m_GameOver = null;
	//! プレイシーン
	[SerializeField]
	public SceneAsset m_FirstStage = null;

	// ビルドセッティング上のシーンインデックス
	public int CurrentLevelBuildIndex
	{
		get
		{
			return SceneUtility.GetBuildIndexByScenePath(m_FirstStage.name) + LevelIndex;
		}
	}

	// レベルリスト上のシーンインデックス(システム用シーンを除いたもの)
	public int CurrentLevelIndex
	{
		get
		{
			return CurrentLevelBuildIndex - 4;
		}
	}
	// 最初のレベルのビルドセッティング上のシーンインデックス
	public int FirstLevelIndex
	{
		get
		{
			return SceneUtility.GetBuildIndexByScenePath(m_FirstStage.name);
		}
	}

	//! 現在のエリア番号
	public int m_current_area_index;
	//! 現在のステージ番号
	public int m_current_stage_index;
	private int LevelIndex { get { return m_current_area_index * 8 + m_current_stage_index; } }

	// 各エリアの最初のレベルのインデックス番号が欲しい
	[SerializeField]
	private int[] m_levelnum_each_area = new int[4] { 8,8,8,4 };
	public int GetLevelIndexOfArea(int _area_index)
	{
		int result = 0;
		for(int cnt = 0; cnt < _area_index; cnt++)
		{
			result += m_levelnum_each_area[cnt];
		}
		return result;
	}
	public int GetLevelCountOfArea(int _area_index)
	{
		return m_levelnum_each_area[_area_index];
	}
}
