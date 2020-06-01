using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

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

        Save();
        Load();
    }
}

[System.Serializable]
public class GameData
{
    public bool m_Unlocked = false;
    public bool m_Star1 = false;
    public bool m_Star2 = false;
    public bool m_Star3 = false;
    public float m_Time = 0;
    public int m_TotalPenguins = 0;
    public int m_SavedPenguins = 0;

    public GameData()
    {
        m_Unlocked = false;
        m_Star1 = false;
        m_Star2 = false;
        m_Star3 = false;
        m_Time = 0;
        m_TotalPenguins = 0;
        m_SavedPenguins = 0;
    }
}

[System.Serializable] 
public class Sounddata
{
    public float m_Music = 0.5f;
    public float m_Soundeffects = 0.5f;

    public Sounddata()
    {
        m_Music = 0.5f;
        m_Soundeffects = 0.5f;
    }
}