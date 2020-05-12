using System;
using UnityEngine;

[Serializable]
public class SoundEffect : MonoBehaviour
{
    //! 再生する効果音リスト
    [SerializeField]
    private AudioSEList m_list;

    //! 再生するオーディオパラメータ(検索履歴的な)
    private AudioSEParams m_se_param = null;

    /**
     * @brief   使いまわすオーディオクリップをあらかじめ検索する
     */
    public void FindAudioClip(string _index_name)
    {
        m_se_param = m_list.List.Find((AudioSEParams _target) => { return _target.Name.Equals(_index_name); });
    }

    /**
     * @brief   ゲームオブジェクトがもともと持つAudioSourceを使って効果音再生
     *          使い道：１か所から発する効果音が重ならない、同じ効果音を再生する
     * @param   (_source)
     */
    public void PlayOneShot(AudioSource _source)
    {
        _source.loop = false;
        _source.outputAudioMixerGroup = m_se_param.Mixer;

        _source.PlayOneShot(m_se_param.Clip);
    }

    /**
     * @brief   AudioSourceを持ったゲームオブジェクトを生成して効果音再生
     *          使い道：１か所から発する効果音が重なる、同じ効果音を再生する
     */
    public void PlayOneShot()
    {
        GameObject _se_object = new GameObject("se_obj");
        AudioSource _source = _se_object.AddComponent<AudioSource>();
        _se_object.transform.parent = gameObject.transform;

        this.PlayOneShot(_source);
        GameObject.Destroy(_se_object, m_se_param.Clip.length);
    }


}
