/**
 * @file    AudioReimporter.cs
 * @brief   選択したアセットのうちオーディオファイルのみを選択的にインポートセッティングの変更を行う
 * @author  谷沢 瑞己
 */
using UnityEditor;
using UnityEngine;

/**
 * @class   AudioReimporterクラス
 * @brief   選択したアセットのうちオーディオファイルのみを選択的にインポートセッティングの変更を行う
 */
class AudioReimporter : EditorWindow
{

    /**
     * @enum    サンプリングレートの選択肢化用列挙子
     * @brief   サンプリングレートの値に変な値を入れさせないため
     */
    enum KSamplingRatio
    {
        Low_22050Hz,
        Middle_44100Hz,
        High_48000Hz
    }

    /**
     * @enum    セッティングのターゲットID
     * @brief   ターゲットの対象をインデックス(数値)ではなく文字で扱えるようにするため
     */
    enum KSampleSettingID
    {
        None = -1,
        Default, PC, Android, iOS,
        Max
    }

    //! シーン読込時などで、AudioAssetをどのように読み込むかを設定する構造体、セッティングターゲットの数だけ作成する
    AudioImporterSampleSettings[] m_audio_settings = new AudioImporterSampleSettings[(int)KSampleSettingID.Max];

    //! AudioImporterのパラメータ
    bool m_mono = false;
    bool m_normalize = false;
    bool m_load_in_background = false;
    bool m_preload = false;
    bool m_ambisonic = false;
    KSamplingRatio m_sampling_ratio = KSamplingRatio.Middle_44100Hz;

    /**
     * @brief   ツールウィンドウの作成
     */
    [MenuItem("Tools/Audio ReImporter")]
    public static void Window()
    {
        //! 新規エディターウィンドウ
        EditorWindow _window = GetWindow<AudioReimporter>();
        _window.position = new Rect(0, 0, 360, 800);
        _window.Show();

        // オーディオセッティングクラスのパラメータ初期化
    }

    /**
     * @brief   ツールウィンドウの各パーツとその動作
     */
    private void OnGUI()
    {
        // 入力された設定を、選択されたオブジェクト全てに適用する
        if (GUI.Button(new Rect(position.width * 0.66f + 3, 23, position.width * 0.33f - 3, 20), "Apply")) ApplyParam();

        // 全ての設定をデフォルトに合わせる
        if (GUI.Button(new Rect(position.width * 0.66f + 3, 43, position.width * 0.33f - 3, 20), "All Default")) AllDefault();

        // AudioImporter自体のパラメータ
        EditorGUILayout.BeginFoldoutHeaderGroup(true, "Common Parameter");
        m_mono = EditorGUILayout.Toggle("Force to Mono", m_mono);
        if(m_mono) m_normalize  = EditorGUILayout.Toggle("  Normalize", m_normalize);
        m_load_in_background    = EditorGUILayout.Toggle("Load In Background", m_load_in_background);
        m_preload               = EditorGUILayout.Toggle("Preload", m_preload);
        m_ambisonic             = EditorGUILayout.Toggle("Ambisonic", m_ambisonic);
        EditorGUILayout.EndFoldoutHeaderGroup();

        EditorGUILayout.Separator();

        // セッティングターゲット毎にFoldoutグループを作成
        EditorGUILayout.BeginFoldoutHeaderGroup(true, "Default");
        ImportSettingPart((int)KSampleSettingID.Default);
        EditorGUILayout.EndFoldoutHeaderGroup();

        EditorGUILayout.BeginFoldoutHeaderGroup(true, "PC");
        ImportSettingPart((int)KSampleSettingID.PC);
        EditorGUILayout.EndFoldoutHeaderGroup();

        EditorGUILayout.BeginFoldoutHeaderGroup(true, "Android");
        ImportSettingPart((int)KSampleSettingID.Android);
        EditorGUILayout.EndFoldoutHeaderGroup();

        EditorGUILayout.BeginFoldoutHeaderGroup(true, "iOS");
        ImportSettingPart((int)KSampleSettingID.iOS);
        EditorGUILayout.EndFoldoutHeaderGroup();

    }

    /**
     * @brief   "Apply"コマンドの処理内容
     */
    private void ApplyParam()
    {
        // 選択しているすべてのアセットを取り出す
        foreach (UnityEngine.Object obj in Selection.objects)
        {
            //! オーディオクリップが選ばれた場合のみ実行する
            AudioClip _select_obj = obj as AudioClip;
            if (_select_obj == null) continue;

            //! 指定されたファイルのassetImporterをAudioImporterとして取得(AudioClipの判断は済んでいるが、念のためnullチェック)
            AudioImporter _importer = UnityEditor.AssetImporter.GetAtPath(AssetDatabase.GetAssetPath(obj)) as AudioImporter;
            if (_importer == null) continue;

            // 設定値を適用する
            _importer.forceToMono = m_mono;
            _importer.loadInBackground = m_load_in_background;
            _importer.preloadAudioData = m_preload;
            _importer.ambisonic = m_ambisonic;

            // デフォルトのサンプルセッティングへの適用
            _importer.defaultSampleSettings = m_audio_settings[(int)KSampleSettingID.Default];

            // プラットフォーム別に設定する場合は以下
            _importer.SetOverrideSampleSettings("Android", m_audio_settings[(int)KSampleSettingID.Android]);
            _importer.SetOverrideSampleSettings("iOS", m_audio_settings[(int)KSampleSettingID.iOS]);
            _importer.SetOverrideSampleSettings("PC", m_audio_settings[(int)KSampleSettingID.PC]);

            // 再インポート
            _importer.SaveAndReimport();
        }
    }

    /**
     * @brief   "All Default"コマンドの処理内容
     */
    private void AllDefault()
    {
        //! Default用セッティングパラメータのインデックスID
        int _index_default = (int)KSampleSettingID.Default;
        for (int cnt = (int)KSampleSettingID.Default + 1; cnt < (int)KSampleSettingID.Max; cnt++)
            m_audio_settings[cnt] = m_audio_settings[_index_default];
    }

    /**
     * @brief   ツールウィンドウの作成
     */
    private void ImportSettingPart(int index)
    {
        // フォーマットの変更(元のインポート設定よりも選択肢が多い)
        m_audio_settings[index].compressionFormat = (AudioCompressionFormat)EditorGUILayout.EnumPopup("Compression Format", m_audio_settings[index].compressionFormat);

        // フォーマット毎に異なるパラメータの設定
        if (m_audio_settings[index].compressionFormat == AudioCompressionFormat.Vorbis)
            m_audio_settings[index].quality = EditorGUILayout.Slider("Quality", m_audio_settings[index].quality, 0.1f, 1.0f);

        // 共通パラメータ 
        m_audio_settings[index].loadType = (AudioClipLoadType)EditorGUILayout.EnumPopup("LoadType", m_audio_settings[index].loadType);
        m_audio_settings[index].sampleRateSetting = (AudioSampleRateSetting)EditorGUILayout.EnumPopup("SampleRateSetting", m_audio_settings[index].sampleRateSetting);

        // サンプリングレートの具体的な設定(OverrideSampleRate以外では意味がないので表示しない)
        if (m_audio_settings[index].sampleRateSetting == AudioSampleRateSetting.OverrideSampleRate)
            // サンプリングレートは変な値を入れられたら不都合なので列挙型を受け付けて後に判断する
            m_sampling_ratio = (KSamplingRatio)EditorGUILayout.EnumPopup("  Sampling Ratio(Override)", m_sampling_ratio);

        if (m_sampling_ratio == KSamplingRatio.Low_22050Hz) m_audio_settings[index].sampleRateOverride = 22050;
        if (m_sampling_ratio == KSamplingRatio.Middle_44100Hz) m_audio_settings[index].sampleRateOverride = 44100;
        if (m_sampling_ratio == KSamplingRatio.High_48000Hz) m_audio_settings[index].sampleRateOverride = 48000;

    }
}
