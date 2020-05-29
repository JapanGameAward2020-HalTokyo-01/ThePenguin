
/**
 * @file    SceneIndex.cs
 * @brief   シーンインデックスを基に生成した列挙型とその管理クラス
 * @author  谷沢 瑞己(Generator制作)
 */
 using System;

/**
 * @enum    シーンインデックス列挙型
 * @brief   シーンのファイル名がそのままインデックスの文字列になる
 */
[Serializable]
public enum KSceneIndex{ None = -1, Title, Select, Movie, Ando1_1, Ando1_2, Ando1_3, Ando1_4 }

/**
 * @class シーンインデックスクラス
 * @brief シーンインデックスを扱う場合に静的キャストをいちいち書きたくない場合に使用
 */
public class SceneIndex
{
    //! インデックスの値
    private KSceneIndex m_index;

    //! 基本的にコンストラクタで受け取って以後値を変更しない
    public SceneIndex(KSceneIndex index) { m_index = index; }

    /**
     * @brief   インデックス(列挙型)を整数型で返すだけ
     * @return  インデックスの整数値
     */
     public int GetByInteger() { return (int)m_index; }
}
