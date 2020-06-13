/**
 * @file    SoundEffect.cs
 * @brief   効果音を鳴らす場合はこのMonoBehaviourに指示してください
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;

/**
 * @class   SoundEffectクラス
 * @brief   子オブジェクトとして効果音オブジェクトを生成する方針で作成(再生終了後も残す、新たに再生する場合はそこから検索)
 */
public class SoundEffect : MonoBehaviour
{
    [Header("General")]

    //! オーディオリスト(そーディオソースへの再生ファイル指定等に使用)
    [SerializeField]
    private SEs m_se_list = null;
    public SEs SEList { get => m_se_list; }

    [Header("SE")]
    // 通常１回のみ再生される効果音のオーディオソースリスト
    private List<AudioSource> m_source_list_oneshot = new List<AudioSource>();
    [SerializeField, Tooltip("同時再生可能数(単発系効果音)")]
    private int m_oneshot_num_max = 8;

    // ループ再生する効果音のオーディオソースリスト(全部重なる可能性ある)
    private List<AudioSource> m_source_list_loop = new List<AudioSource>();
    [SerializeField, Tooltip("同時再生可能数(ループ系効果音)")]
    private int m_loop_se_num_max = 4;

    // 複数化回避
    private static SoundEffect m_instance = null;
    public static SoundEffect Instance { get => m_instance; }

    // オーディオ追加機能
    AudioFade m_fade = new AudioFade();

    public static void OnAwake()
    {
        if (m_instance == null)
        {
            m_instance = FindObjectOfType<SoundEffect>();
        }
    }

    /**
     * @brief   使っていないオーディオソースの検索
     */
    private AudioSource FindAudioSource(List<AudioSource> _list, int _max_num, string _name = "se_object")
    {
        if (_list.Count > 0)
        {
            AudioSource ret = _list[0];
            foreach (AudioSource _s in _list)
            {
                // 再生中でないもの
                if (!_s.isPlaying) return _s;
                // 最も長く再生したものを取っておく
                if (ret.timeSamples < _s.timeSamples) ret = _s;
            }

            // フル稼働の場合 基も長く再生したオーディオソースを返す
            if (_list.Count >= _max_num)
                return ret;
        }

        // そうでなければ新たに生成
        return CreateSEObject(_list, _name);
    }

    /**
     * @brief   使っていないオーディオソースの検索(リストのインデックスを返すオーバーロード付き)
     */
    private AudioSource FindAudioSource(List<AudioSource> _list, int _max_num, out int _index, string _name = "se_object")
    {
        // 対象オーディオソースのリスト内インデックス
        _index = 0;

        if (_list.Count > 0)
        {
            AudioSource ret = _list[0];
            foreach (AudioSource _s in _list)
            {
                // 再生中でないもの
                if (!_s.isPlaying) return _s;

                // 最も長く再生したものを取っておく(ループすると正確には取得できないけど)
                if (ret.timeSamples < _s.timeSamples)
                {
                    ret = _s;
                }
                _index++;
            }

            Debug.Log( string.Format( "選ばれたのは、 {0}番でした", _index));
            // フル稼働の場合 基も長く再生したオーディオソースを返す
            if (_list.Count >= _max_num)
                return ret;
        }

        // そうでなければ新たに生成
        _index = _list.Count;
        return CreateSEObject(_list, _name);
    }

    // オーディオソースオブジェクトの作成
    private AudioSource CreateSEObject(List<AudioSource> _list, string _object_name)
    {
        // 無ければ作ってリストに追加
        GameObject _se_object = new GameObject(_object_name);
        AudioSource _source = _se_object.AddComponent<AudioSource>();
        _list.Add(_source);

        _source.gameObject.transform.parent = gameObject.transform;
        return _source;
    }

    /**
     * @brief   AudioSourceを持ったゲームオブジェクトを生成して効果音再生
     *          使い道：１か所から発する効果音が重なる、同じ効果音を再生する
     */
    public void PlayOneShot(AudioSEParams _se)
    {
        // 余ってるオーディオソースの検索
        AudioSource _source = FindAudioSource(m_source_list_oneshot, m_oneshot_num_max, "SE_OneShot");

        _source.clip = _se.Clip;
        _source.outputAudioMixerGroup = _se.Mixer;
        _source.volume = 1.0f;
        _source.Play();
    }

    public void PlayOneShot(AudioSEParams _se, Vector3 _pos)
    {
        // 余ってるオーディオソースの検索
        AudioSource _source = FindAudioSource(m_source_list_oneshot, m_oneshot_num_max, "SE_OneShot");

        // 再生するワールド座標変更
        _source.gameObject.transform.position = _pos;

        _source.clip = _se.Clip;
        _source.outputAudioMixerGroup = _se.Mixer;
        _source.volume = 1.0f;
        _source.loop = false;
        _source.Play();
    }

    public void PlayOneShot(AudioSEParams _se, float _volume)
    {
        // 余ってるオーディオソースの検索
        AudioSource _source = FindAudioSource(m_source_list_oneshot, m_oneshot_num_max, "SE_OneShot");

        _source.clip = _se.Clip;
        _source.outputAudioMixerGroup = _se.Mixer;
        _source.volume = Mathf.Clamp(_volume, 0.0f, 1.0f);
        _source.loop = false;
        _source.Play();
    }

    /**
     * @brief   
     */
    public int PlayLoopSE(AudioSEParams _se)
    {
        // 余ってるオーディオソースの検索
        AudioSource _source = FindAudioSource(m_source_list_loop, m_loop_se_num_max, out int index, "SE_Loop");

        _source.clip = _se.Clip;
        _source.outputAudioMixerGroup = _se.Mixer;
        _source.volume = 1.0f;
        _source.loop = true;
        _source.Play();

        // 対応オーディオソースへのリスト内インデックスを返す
        return index;
    }

    public void StopLoopSE(int _index)
    {
        // 配列範囲外参照警戒
        if (_index > m_source_list_loop.Count - 1)
        {
            Debug.LogAssertion(string.Format("ループ効果音リスト外のオーディオソースが選択されました ：index = {0}", _index));
            return;
        }
        
        AudioSource _source = m_source_list_loop[_index];

        if (!_source.isPlaying)
        {
            Debug.Log("既に止まってる");
            return;
        }
        Debug.Log(string.Format("ループ停止 ：index = {0}", _index));

        // 瞬間フェードかけて停止(ノイズ防止)
        m_fade.Set(_source, 0.0f, 0.017f);
        StartCoroutine(m_fade.FadeUpdate());
    }
}
