/**
 * @file    SceneIndexEnumGenerator.cs
 * @brief   BuildSettingからシーンインデックスを読み取って列挙型と変換クラスを生成する試み
 * @author  谷沢 瑞己
 */
using System;
using System.IO;
using System.Text;
using UnityEditor;
using UnityEngine;

/**
 * @class   シーンインデックス列挙型生成クラス
 * @brief   UnityEditorを拡張してコマンド"Generator"からシーンインデックスを生成する
 */
class SceneIndexEnumGenerator : EditorWindow
{
    //! ファイルを生成するディレクトリ
    [Tooltip("出力ディレクトリ(Assets/～ で始める)")]
    private string m_dir = "Assets/Scripts/SceneManagement/";

    //! 生成するファイル名
    [Tooltip("出力ファイル名(拡張子は不要)")]
    private string m_filename = "SceneIndex";

    //! 拡張子の定数
    private const string kArgument = ".cs";

    //! 書き出しスクリプトのフォーマット({0}...クラス名, {1}...列挙型要素)
    private readonly string format = @"
/**
 * @file    {0}.cs
 * @brief   シーンインデックスを基に生成した列挙型とその管理クラス
 * @author  谷沢 瑞己(Generator制作)
 */
 using System;

/**
 * @enum    シーンインデックス列挙型
 * @brief   シーンのファイル名がそのままインデックスの文字列になる
 */
[Serializable]
public enum KSceneIndex{{ None = -1, {1} }}

/**
 * @class シーンインデックスクラス
 * @brief シーンインデックスを扱う場合に静的キャストをいちいち書きたくない場合に使用
 */
public class {0}
{{
    //! インデックスの値
    private KSceneIndex m_index;

    //! 基本的にコンストラクタで受け取って以後値を変更しない
    public SceneIndex(KSceneIndex index) {{ m_index = index; }}

    /**
     * @brief   インデックス(列挙型)を整数型で返すだけ
     * @return  インデックスの整数値
     */
     public int GetByInteger() {{ return (int)m_index; }}
}}
";

    /**
     * @brief   メニューバーにファイル生成ウィンドウを生成するコマンドを追加する
     */
    [MenuItem("Tools/SceneIndexGenerater")]
	public static void Window()
	{
		EditorWindow window = GetWindow<SceneIndexEnumGenerator>();
		window.position = new Rect(0, 0, 360, 60);
		window.Show();
    }

    /**
     * @brief   ファイル生成ウィンドウの各パーツとその動作
     */
    private void OnGUI()
	{
        m_dir = EditorGUI.TextField(new Rect(3, 3, position.width - 3, 20), "Directory", m_dir);
        m_filename = EditorGUI.TextField(new Rect(3, 26, position.width - 3, 20), "FileName", m_filename);

        //! ボタン名
        string _button_name = "Generate";
        if(File.Exists(m_dir + m_filename)) _button_name = "Update";
        if (GUI.Button(new Rect(3, 49, position.width - 3, 20), _button_name))
        {
            GenerateScriptFile();
            this.Close();
        }
    }

    /**
     * @brief   BuildSettingを読み取り、列挙型の要素作成
     */
     private string LoadSceneName()
    {
        //! ファイル名を収集する一時的な変数
        string _enum_items = "";

        foreach (EditorBuildSettingsScene scene in EditorBuildSettings.scenes)
        {
            if (scene.enabled)
            {
                //! 単体ファイル名加工用の一時変数
                string _file_path = Path.GetFileNameWithoutExtension(scene.path);
                _enum_items += $"{_file_path}, ";
            }
        }

        // 最後の", "の消去 
        return _enum_items.Remove(_enum_items.Length - 2);
    }

    /**
     * @brief   BuildSettingを読み取り列挙型とクラスを生成する
     */
    private void GenerateScriptFile()
	{
        // ファイル書き出し(ディレクトリが無ければ自動生成する)
        if (!Directory.Exists(m_dir)) Directory.CreateDirectory(m_dir);

        File.WriteAllText(
            m_dir + m_filename + kArgument,
            String.Format(format, m_filename, LoadSceneName()),
            Encoding.UTF8);
        AssetDatabase.Refresh(ImportAssetOptions.ImportRecursive);
    }
}
