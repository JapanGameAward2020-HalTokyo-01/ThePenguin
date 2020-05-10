using UnityEngine;

[CreateAssetMenu(menuName = "CreateData/AudioParam(SE)", fileName = "AudioSEParam")]
public class AudioSEParams : ScriptableObject
{
    [SerializeField]
    public string m_index_name;

    [SerializeField]
    public AudioClip m_clip;
}
