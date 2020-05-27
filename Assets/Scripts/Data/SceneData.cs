using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.SceneManagement;

public class SceneData : MonoBehaviour
{
    //設定可能なパラメータ
    [SerializeField]
    private SceneObject m_CurrentStage;
    [SerializeField]
    private SceneObject m_NextStage;
    //星を獲得するに必要な子ペンギン数
    [SerializeField]
    private uint m_Star_ClearCount;
    //星を獲得するに必要なクリア時間
    [SerializeField]
    private float m_Star_ClearTime;

    //シーンを跨ぐパラメータ
    private static SceneObject m_Static_CurrentScene;
    private static SceneObject m_Static_NextScene;
    //実際の子ペンギン数
    public static uint m_Static_ClearCount;
    //実際のクリア時間
    public static float m_Static_ClearTime;
    //星を獲得するに必要な子ペンギン数
    private static uint m_Static_Star_ClearCount;
    //星を獲得するに必要なクリア時間
    private static float m_Static_Star_ClearTime;

    // Start is called before the first frame update
    void Start()
    {
        if(m_CurrentStage!=null)
        {
            m_Static_CurrentScene = m_CurrentStage;
        }

        if(m_NextStage!=null)
        {
            m_Static_NextScene = m_NextStage;
        }

        m_Static_Star_ClearCount = m_Star_ClearCount;
        m_Static_Star_ClearTime = m_Star_ClearTime;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnValidate()
    {
        m_Static_Star_ClearCount = m_Star_ClearCount;
        m_Static_Star_ClearTime = m_Star_ClearTime;
    }

    //シーンを跨ぐパラメータのゲッター
    static public SceneObject GetCurrentScene()
    {
        return m_Static_CurrentScene;
    }
    static public SceneObject GetNextScene()
    {
        return m_Static_NextScene;
    }
    static public uint GetStarClearCount()
    {
        return m_Static_Star_ClearCount;
    }
    static public float GetStarClearTime()
    {
        return m_Static_ClearTime;
    }
}
