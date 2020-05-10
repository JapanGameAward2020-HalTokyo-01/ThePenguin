using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "CreateData/AudioList", fileName = "AudioList")]
public class AudioList : ScriptableObject
{
    [SerializeField]
    private List<AudioBGMParams> m_bgm_list = new List<AudioBGMParams>();

    [SerializeField]
    private List<AudioSEParams> m_se_list = new List<AudioSEParams>();

    public List<AudioBGMParams> BGMList
    {
        get { return m_bgm_list; }
    }

    public List<AudioSEParams> SEList
    {
        get { return m_se_list; }
    }

}
