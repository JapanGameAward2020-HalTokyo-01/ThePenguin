/**
 * @file    GameMain_ReturnIndex.cs
 * @brief   仮にオブジェクトがデータとして「次のシーン遷移先」を持ってほしかった
 * @author  谷沢 瑞己
 */
using UnityEngine;

/**
 * @class    GameMain_ReturnIndexクラス
 * @brief   仮にオブジェクトがデータとして「次のシーン遷移先」を持ってほしかった
 */
public class GameMain_ReturnIndex : MonoBehaviour
{
    //! 遷移先シーンインデックス
	[SerializeField]
	private KSceneIndex m_next_scene = KSceneIndex.None;
	public KSceneIndex NextScene
	{
		get { return m_next_scene; }
	}

}
