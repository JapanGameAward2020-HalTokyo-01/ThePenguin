/**
 * @file    AudioBGMList.cs
 * @brief   オーディオパラメータのScriptableObjectをまとめるリスト
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   AudioBGMListクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/AudioBGMList", fileName = "NewBGMList")]
public class BGMs : ScriptableObject
{
    public enum Index
    {
        None = -1,
        Title, Select, Result, GameOver, GameClear, BossBattle, GamePlay
    }

    //! このオーディオリスト用ミキサー
    [SerializeField, NonEditableField, Tooltip("BGM用オーディオミキサー")]
    private AudioMixerGroup m_bgm_mixer = null;

    //! システムオーディオリスト
    [SerializeField, Tooltip("タイトルシーン")]
    private AudioBGMParams m_title = null;
    [SerializeField, Tooltip("ステージセレクトシーン")]
    private AudioBGMParams m_select = null;
    [SerializeField, Tooltip("結果シーン")]
    private AudioBGMParams m_result = null;
    [SerializeField, Tooltip("ゲームオーバーシーン")]
    private AudioBGMParams m_gameover = null;
    [SerializeField, Tooltip("ゲームクリアファンファーレ")]
    private AudioBGMParams m_gameclear = null;
    [SerializeField, Tooltip("ボス戦")]
    private AudioBGMParams m_boss_battle = null;

    //! レベル別オーディオリスト
    [SerializeField, Tooltip("ゲームメイン・エリア別オーディオリスト")]
    private List<AudioBGMParams> m_area_bgm_list = new List<AudioBGMParams>();

    public AudioMixerGroup BGMMixer { get => m_bgm_mixer; }
    public AudioBGMParams Title { get => m_title; }
    public AudioBGMParams Select { get => m_select; }
    public AudioBGMParams Result { get => m_result; }
    public AudioBGMParams GameOver { get => m_gameover; }
    public AudioBGMParams GameClear { get => m_gameclear; }
    public AudioBGMParams BossBattle { get => m_boss_battle; }

    public List<AudioBGMParams> AreaBGM { get => m_area_bgm_list; }

    public AudioBGMParams SelectBGM(Index _id, int _area = 0)
	{
        if (_id == Index.Title) return Title;
        if (_id == Index.Select) return Select;
        if (_id == Index.Result) return Result;
        if (_id == Index.GameOver) return GameOver;
        if (_id == Index.GameClear) return GameClear;
        if (_id == Index.BossBattle) return BossBattle;
        if (_id == Index.GamePlay) return AreaBGM[Mathf.Clamp(_area, 0, m_area_bgm_list.Count)];
        return null;
    }
}
