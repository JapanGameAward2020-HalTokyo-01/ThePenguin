using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(menuName = "CreateData/Stage/StageMetaParam", fileName = "StageMetaParam")]
public class StageMetaParam : ScriptableObject
{
	//! 現在のエリア番号
	public int m_current_area_index;
	//! 現在のステージ番号
	public int m_current_stage_index;

	public void InitializeIndex() { m_current_area_index = m_current_stage_index = 0; }
	public void InitializeIndex(int index)
	{
		// エリア４のみステージが４つしかない
		m_current_area_index = index / 8;
		m_current_stage_index = index % 8;
	}

	private int LevelIndex { get { return m_current_area_index * 8 + m_current_stage_index; } }

	// ステージ番号を１進める
	public void LevelIncrement()
	{
		// エリア内のレベル数
		int _area_level_num = m_levelnum_each_area[m_current_area_index];

		// ステージ番号の進行
		m_current_stage_index++;

		// 次のエリア番号
		m_current_area_index += m_current_stage_index / _area_level_num;
		// 次のステージ番号
		m_current_stage_index = m_current_stage_index % _area_level_num;
	}

	public bool IsBossStage { get => (m_current_stage_index == (m_levelnum_each_area[m_current_area_index] - 1))||(m_current_area_index==3); }
    public bool IsFinalStage { get=>(m_current_area_index==3&&m_current_stage_index==3); }

	//! システムシーン
	public SceneObject m_Title = null;
	public SceneObject m_StageSelect = null;
	public SceneObject m_Result = null;
	public SceneObject m_GameOver = null;
    public SceneObject m_Ending = null;
    //! プレイシーン
    [SerializeField]
	public SceneObject m_FirstStage = null;

	// ビルドセッティング上のシーンインデックス
	public int CurrentLevelBuildIndex { get { return SceneUtility.GetBuildIndexByScenePath(m_FirstStage) + LevelIndex; } }
	public int NextLevelBuildIndex { get { return SceneUtility.GetBuildIndexByScenePath(m_FirstStage) + LevelIndex + 1; } }

	// レベルリスト上のシーンインデックス(システム用シーンを除いたもの)
	public int CurrentLevelIndex { get { return CurrentLevelBuildIndex - 5; } }
	public int NextLevelIndex { get { return NextLevelBuildIndex - 5; } }

	// 最初のレベルのビルドセッティング上のシーンインデックス
	public int FirstLevelIndex { get { return SceneUtility.GetBuildIndexByScenePath(m_FirstStage); } }

	// 各エリアの最初のレベルのインデックス番号が欲しい
	[SerializeField]
	private int[] m_levelnum_each_area = new int[4] { 8, 8, 8, 4 };
	public int GetLevelIndexOfArea(int _area_index)
	{
		int result = 0;
		for (int cnt = 0; cnt < _area_index; cnt++)
		{
			result += m_levelnum_each_area[cnt];
		}
		return result;
	}

	// 指定エリアのレベル数
	public int GetLevelCountOfArea(int _area_index)
	{
		return m_levelnum_each_area[_area_index];
	}
}
