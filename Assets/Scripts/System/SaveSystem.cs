using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEngine.Audio;
public class SaveSystem : MonoBehaviour
{
    public static SaveSystem instance;

    //! ステージデータ
    [SerializeField]
    private GameData[] Stages = new GameData[28];

    public GameData[] Stages1 { get => Stages; set => Stages = value; }

    //! 音声データ
    [SerializeField]
    private Sounddata Volume = new Sounddata();

    public Sounddata VolumeData { get => Volume; set => Volume = value; }

    [SerializeField, Space(20)]
    private AudioMixerGroup m_BGMMixer;
    [SerializeField]
    private AudioMixerGroup m_SEMixer;

    void Awake()
    {
        //! タイトルで一回しか作らないはずだけど念の為にinstanceがuniqueであるように
        if (instance == null)
        {
            DontDestroyOnLoad(this.gameObject);
            for (int i = 0; i < 28; i++)
            {
                Stages[i] = new GameData();
            }
            Stages[0].m_Unlocked = true;

            //! TotalPenguins
            Stages[0].m_TotalPenguins = 43;
            Stages[1].m_TotalPenguins = 28;
            Stages[2].m_TotalPenguins = 23;
            Stages[3].m_TotalPenguins = 19;
            Stages[4].m_TotalPenguins = 34;
            Stages[5].m_TotalPenguins = 24;
            Stages[6].m_TotalPenguins = 40;
            Stages[7].m_TotalPenguins = 34;
            Stages[8].m_TotalPenguins = 33;
            Stages[9].m_TotalPenguins = 68;

            Stages[10].m_TotalPenguins = 36;
            Stages[11].m_TotalPenguins = 58;
            Stages[12].m_TotalPenguins = 51;
            Stages[13].m_TotalPenguins = 28;
            Stages[14].m_TotalPenguins = 20;
            Stages[15].m_TotalPenguins = 43;
            Stages[16].m_TotalPenguins = 26;
            Stages[17].m_TotalPenguins = 20;
            Stages[18].m_TotalPenguins = 25;
            Stages[19].m_TotalPenguins = 68;

            Stages[20].m_TotalPenguins = 56;
            Stages[21].m_TotalPenguins = 31;
            Stages[22].m_TotalPenguins = 23;
            Stages[23].m_TotalPenguins = 20;
            Stages[24].m_TotalPenguins = 28;
            Stages[25].m_TotalPenguins = 39;
            Stages[26].m_TotalPenguins = 26;
            Stages[27].m_TotalPenguins = 48;


            //! StarPenguin
            Stages[0].m_StarPenguin =  40;
            Stages[1].m_StarPenguin =  25;
            Stages[2].m_StarPenguin =  20;
            Stages[3].m_StarPenguin =  16;
            Stages[4].m_StarPenguin =  30;
            Stages[5].m_StarPenguin =  22;
            Stages[6].m_StarPenguin =  36;
            Stages[7].m_StarPenguin =  30;
            Stages[8].m_StarPenguin =  28;
            Stages[9].m_StarPenguin =  68;

            Stages[10].m_StarPenguin = 30;
            Stages[11].m_StarPenguin = 58;
            Stages[12].m_StarPenguin = 51;
            Stages[13].m_StarPenguin = 23;
            Stages[14].m_StarPenguin = 18;
            Stages[15].m_StarPenguin = 38;
            Stages[16].m_StarPenguin = 26;
            Stages[17].m_StarPenguin = 18;
            Stages[18].m_StarPenguin = 23;
            Stages[19].m_StarPenguin = 66; 
            
            Stages[20].m_StarPenguin = 56;
            Stages[21].m_StarPenguin = 28;
            Stages[22].m_StarPenguin = 19;
            Stages[23].m_StarPenguin = 18;
            Stages[24].m_StarPenguin = 28;
            Stages[25].m_StarPenguin = 39;
            Stages[26].m_StarPenguin = 26;
            Stages[27].m_StarPenguin = 48;

            //! m_StarTime
            Stages[0].m_StarTime = 25;
            Stages[1].m_StarTime = 12;
            Stages[2].m_StarTime = 8;
            Stages[3].m_StarTime = 20;
            Stages[4].m_StarTime = 25;
            Stages[5].m_StarTime = 12;
            Stages[6].m_StarTime = 18;
            Stages[7].m_StarTime = 25;
            Stages[8].m_StarTime = 18;
            Stages[9].m_StarTime = 10;

            Stages[10].m_StarTime = 25;
            Stages[11].m_StarTime = 25;
            Stages[12].m_StarTime = 27;
            Stages[13].m_StarTime = 22;
            Stages[14].m_StarTime = 22;
            Stages[15].m_StarTime = 15;
            Stages[16].m_StarTime = 27;
            Stages[17].m_StarTime = 20;
            Stages[18].m_StarTime = 20;
            Stages[19].m_StarTime = 20;

            Stages[20].m_StarTime = 20;
            Stages[21].m_StarTime = 27;
            Stages[22].m_StarTime = 25;
            Stages[23].m_StarTime = 19;
            Stages[24].m_StarTime = 15;
            Stages[25].m_StarTime = 20;
            Stages[26].m_StarTime = 19;
            Stages[27].m_StarTime = 45;

            instance = this;
        }
        else if (instance != this)
        {
            Destroy(this.gameObject);
        }
    }

    private void Start()
    {
        //! 起動時にセーブをロード
        Load();

    }

    private void Update()
    {
        //test用
        if (Input.GetKeyDown(KeyCode.L)) Load();
        if (Input.GetKeyDown(KeyCode.S)) Save();
        if (Input.GetKeyDown(KeyCode.C)) ClearData();
        if (Input.GetKeyDown(KeyCode.A)) AllUnlock();
    }

    /// <summary>
    /// @brief      セーブ処理
    /// </summary>
    private void Save()
    {
        BinaryFormatter format = new BinaryFormatter();

        DirectoryInfo folder = Directory.CreateDirectory(Application.persistentDataPath + "/Saves");
        string gamepath = Application.persistentDataPath + "/" + folder + "/gamedata.dat";
        string sounddata = Application.persistentDataPath + "/" + folder + "/sounddata.dat";

        FileStream file;

        file = File.Create(gamepath);
        format.Serialize(file, Stages);
        file.Close();
        Debug.Log("Saved Game Data");

        file = File.Create(sounddata);
        format.Serialize(file, Volume);
        file.Close();
        Debug.Log("Saved Sound Data");
    }

    /// <summary>
    /// @brief      ロード処理
    /// </summary>
    private void Load()
    {
        BinaryFormatter format = new BinaryFormatter();

        DirectoryInfo folder = Directory.CreateDirectory(Application.persistentDataPath + "/Saves");
        string gamepath = Application.persistentDataPath + "/" + folder + "/gamedata.dat";
        string sounddata = Application.persistentDataPath + "/" + folder + "/sounddata.dat";

        FileStream file;

        if (File.Exists(gamepath))
        {
            file = File.Open(gamepath, FileMode.Open);
            Stages = (GameData[])format.Deserialize(file);
            file.Close();
            Debug.Log(gamepath);
            Debug.Log("Loaded Game Data");
        }
        else
        {
            Debug.Log(gamepath);
            Debug.Log("NO LOAD GAME DATA");
        }

        if (File.Exists(sounddata))
        {
            file = File.Open(sounddata, FileMode.Open);
            Volume = (Sounddata)format.Deserialize(file);
            file.Close();
            Debug.Log(sounddata);
            Debug.Log("Loaded Sound Data");
            m_BGMMixer.audioMixer.SetFloat("BGMVolume", Volume.m_Music);
            m_SEMixer.audioMixer.SetFloat("SEVolume", Volume.m_Soundeffects);
        }
        else
        {
            Debug.Log(sounddata);
            Debug.Log("NO LOAD SOUND DATA");
            Save();
        }
    }

    /// <summary>
    /// @brief      ゲームクリア時のセーブ処理
    /// @param (data)	        stage情報
    /// @param (stagenumber)	stage番号
    /// </summary>
    public void SetStageData(GameData data, int stagenumber)
    {
        Debug.Log("Confirming Stage Data Changes...");
        Stages[stagenumber] = data;
        if (stagenumber < 27)
        {
            Stages[stagenumber + 1].m_Unlocked = true;
        }
        Save();
    }

    /// <summary>
    /// @brief      オプション画面のセーブ処理
    /// @param (data)	sound情報
    /// </summary>
    public void SetSoundData(Sounddata data)
    {
        Debug.Log("Confirming Sound Data Changes...");
        Volume = data;
        Save();
    }

    /// <summary>
    /// @brief      データ消去処理
    /// </summary>
    public void ClearData()
    {
        Debug.Log("Flushing Save Data...");
        Stages = new GameData[28];
        for (int i = 0; i < 28; i++)
        {
            Stages[i] = new GameData();
        }
        Volume = new Sounddata();
        Stages[0].m_Unlocked = true;

        //! TotalPenguins
        Stages[0].m_TotalPenguins = 43;
        Stages[1].m_TotalPenguins = 28;
        Stages[2].m_TotalPenguins = 23;
        Stages[3].m_TotalPenguins = 19;
        Stages[4].m_TotalPenguins = 34;
        Stages[5].m_TotalPenguins = 24;
        Stages[6].m_TotalPenguins = 40;
        Stages[7].m_TotalPenguins = 34;
        Stages[8].m_TotalPenguins = 33;
        Stages[9].m_TotalPenguins = 68;

        Stages[10].m_TotalPenguins = 36;
        Stages[11].m_TotalPenguins = 58;
        Stages[12].m_TotalPenguins = 51;
        Stages[13].m_TotalPenguins = 28;
        Stages[14].m_TotalPenguins = 20;
        Stages[15].m_TotalPenguins = 43;
        Stages[16].m_TotalPenguins = 26;
        Stages[17].m_TotalPenguins = 20;
        Stages[18].m_TotalPenguins = 25;
        Stages[19].m_TotalPenguins = 68;

        Stages[20].m_TotalPenguins = 56;
        Stages[21].m_TotalPenguins = 31;
        Stages[22].m_TotalPenguins = 23;
        Stages[23].m_TotalPenguins = 20;
        Stages[24].m_TotalPenguins = 28;
        Stages[25].m_TotalPenguins = 39;
        Stages[26].m_TotalPenguins = 26;
        Stages[27].m_TotalPenguins = 48;


        //! StarPenguin
        Stages[0].m_StarPenguin = 40;
        Stages[1].m_StarPenguin = 25;
        Stages[2].m_StarPenguin = 20;
        Stages[3].m_StarPenguin = 16;
        Stages[4].m_StarPenguin = 30;
        Stages[5].m_StarPenguin = 22;
        Stages[6].m_StarPenguin = 36;
        Stages[7].m_StarPenguin = 30;
        Stages[8].m_StarPenguin = 28;
        Stages[9].m_StarPenguin = 68;

        Stages[10].m_StarPenguin = 30;
        Stages[11].m_StarPenguin = 58;
        Stages[12].m_StarPenguin = 51;
        Stages[13].m_StarPenguin = 23;
        Stages[14].m_StarPenguin = 18;
        Stages[15].m_StarPenguin = 38;
        Stages[16].m_StarPenguin = 26;
        Stages[17].m_StarPenguin = 18;
        Stages[18].m_StarPenguin = 23;
        Stages[19].m_StarPenguin = 66;

        Stages[20].m_StarPenguin = 56;
        Stages[21].m_StarPenguin = 28;
        Stages[22].m_StarPenguin = 19;
        Stages[23].m_StarPenguin = 18;
        Stages[24].m_StarPenguin = 28;
        Stages[25].m_StarPenguin = 39;
        Stages[26].m_StarPenguin = 26;
        Stages[27].m_StarPenguin = 48;

        //! m_StarTime
        Stages[0].m_StarTime = 25;
        Stages[1].m_StarTime = 12;
        Stages[2].m_StarTime = 8;
        Stages[3].m_StarTime = 20;
        Stages[4].m_StarTime = 25;
        Stages[5].m_StarTime = 12;
        Stages[6].m_StarTime = 18;
        Stages[7].m_StarTime = 25;
        Stages[8].m_StarTime = 18;
        Stages[9].m_StarTime = 10;

        Stages[10].m_StarTime = 25;
        Stages[11].m_StarTime = 25;
        Stages[12].m_StarTime = 27;
        Stages[13].m_StarTime = 22;
        Stages[14].m_StarTime = 22;
        Stages[15].m_StarTime = 15;
        Stages[16].m_StarTime = 27;
        Stages[17].m_StarTime = 20;
        Stages[18].m_StarTime = 20;
        Stages[19].m_StarTime = 20;

        Stages[20].m_StarTime = 20;
        Stages[21].m_StarTime = 27;
        Stages[22].m_StarTime = 25;
        Stages[23].m_StarTime = 19;
        Stages[24].m_StarTime = 15;
        Stages[25].m_StarTime = 20;
        Stages[26].m_StarTime = 19;
        Stages[27].m_StarTime = 45;

        Save();
        Load();
    }

    /// <summary>
    /// @brief      デバッグ機能：全ステージアンロック
    /// </summary>
    private void AllUnlock()
    {
        foreach (var data in Stages)
		{
            data.m_Unlocked = true;

        }
    }

}

[System.Serializable]
public class GameData
{
    public bool m_Unlocked = false;
    public bool m_Star1 = true;
    public bool m_Star2 = true;
    public bool m_Star3 = true;
    public float m_Time = 0;
    public int m_TotalPenguins = 0;
    public int m_SavedPenguins = 0;
    public int m_StarPenguin = 0;
    public int m_StarTime = 0;
    public FaceIcon.kState m_FaceIcon = FaceIcon.kState.Normal; 

    public GameData()
    {
        m_Unlocked = false;
        m_Star1 = true;
        m_Star2 = true;
        m_Star3 = true;
        m_Time = 0;
        m_TotalPenguins = 0;
        m_SavedPenguins = 0;
        m_StarPenguin = 0;
        m_StarTime = 0;
        m_FaceIcon = FaceIcon.kState.Normal;
    }
}

[System.Serializable] 
public class Sounddata
{
    public float m_Music = 0.0f;
    public float m_Soundeffects = 0.0f;

    public Sounddata()
    {
        m_Music = 0.0f;
        m_Soundeffects = 0.0f;
    }
}