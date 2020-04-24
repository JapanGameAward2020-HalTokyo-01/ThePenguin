/**
 * @file    SceneIndexEnumGenerator.cs
 * @brief   BuildSettingからシーンインデックスを読み取って列挙型と変換クラスを生成する試み
 * @author  谷沢 瑞己
 */
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

    /**
     * @brief   メニューバーにファイル生成ウィンドウを生成するコマンドを追加する
     */
    [MenuItem("Generator/(Enum) SceneIndex")]
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
     * @brief   BuildSettingを読み取り列挙型とクラスを生成する
     */
    private void GenerateScriptFile()
	{
        //! スクリプトの内容を追記していく変数
        StringBuilder _script_text = new StringBuilder();

        // ファイルヘッダー部
        _script_text.AppendLine("/**");
        _script_text.AppendLine(" * @file    " + m_filename);
        _script_text.AppendLine(" * @brief   シーンインデックスを基に生成した列挙型とその管理クラス");
        _script_text.AppendLine(" * @author  谷沢 瑞己(Generator制作)");
        _script_text.AppendLine(" */");

        // using文
        _script_text.AppendLine("using System;");
        _script_text.AppendLine("");

        // 列挙型定義
        _script_text.AppendLine("/**");
        _script_text.AppendLine(" * @enum    シーンインデックス列挙型");
        _script_text.AppendLine(" * @brief   シーンのファイル名がそのままインデックスの文字列になる");
        _script_text.AppendLine(" */");
        _script_text.AppendLine("[Serializable]");
        _script_text.AppendLine("public enum KSceneIndex");

        // ビルドセッティングに登録されたシーンのファイル名から列挙子の文字列を作成

        //! ファイル名を収集する一時的な変数
        string _enum_items = "{ None = -1, ";

        foreach (EditorBuildSettingsScene scene in EditorBuildSettings.scenes)
        {
            if (scene.enabled)
            {
                //! 単体ファイル名加工用の一時変数
                string _file_path = Path.GetFileNameWithoutExtension(scene.path);
                _enum_items += $"{_file_path}, ";
            }
        }
        _script_text.Append(_enum_items.Remove(_enum_items.Length - 2));

        // 列挙型定義終了
        _script_text.AppendLine(" }");
        _script_text.AppendLine("");

        // クラス定義
        _script_text.AppendLine("/**");
        _script_text.AppendLine(" * @class   シーンインデックスクラス");
        _script_text.AppendLine(" * @brief   シーンインデックスを扱う場合に静的キャストをいちいち書きたくない場合に使用");
        _script_text.AppendLine(" */");
        _script_text.AppendLine("public class " + Path.GetFileNameWithoutExtension(m_filename));
        _script_text.AppendLine("{");

        _script_text.AppendLine("    //! インデックスの値");
        _script_text.AppendLine("    private KSceneIndex m_index;");
        _script_text.AppendLine("");

        _script_text.AppendLine("    //! 基本的にコンストラクタで受け取って以後値を変更しない");
        _script_text.AppendLine("    public SceneIndex(KSceneIndex index) { m_index = index; }");
        _script_text.AppendLine("");

        _script_text.AppendLine("    /**");
        _script_text.AppendLine("     * @brief   インデックス(列挙型)を整数型で返すだけ");
        _script_text.AppendLine("     * @return  インデックスの整数値");
        _script_text.AppendLine("     */");
        _script_text.AppendLine("    public int GetByInteger() { return (int)m_index; }");

        // クラス定義終了
        _script_text.AppendLine("}");

        // ファイル書き出し(ディレクトリが無ければ自動生成する)
        if (!Directory.Exists(m_dir)) Directory.CreateDirectory(m_dir);
        File.WriteAllText(m_dir + m_filename + kArgument, _script_text.ToString(), Encoding.UTF8);
        AssetDatabase.Refresh(ImportAssetOptions.ImportRecursive);
    }
}
