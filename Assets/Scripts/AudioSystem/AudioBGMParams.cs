using System;
using UnityEngine;

[CreateAssetMenu(menuName = "CreateData/AudioParam(BGM)", fileName = "AudioBGMParam")]
public class AudioBGMParams : ScriptableObject
{
    [SerializeField]
    private string m_index_name;

    [SerializeField]
    private KSceneIndex _index;

    [SerializeField]
    private AudioClip m_clip;
    public AudioClip Clip
    {
        get { return m_clip; }
    }

    //! LoopParam
    [SerializeField]
    private uint m_loop_begin;
    public uint LoopBegin
    {
        get { return m_loop_begin; }
    }

    [SerializeField]
    private uint m_loop_end;
    public uint LoopEnd
    {
        get { return m_loop_end; }
    }
}
