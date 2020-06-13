/**
 * @file    SEs.cs
 * @brief   オーディオパラメータのScriptableObjectをまとめるリスト
 * @author  谷沢 瑞己
 */
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

/**
 * @class   SEsクラス
 * @brief   ScriptableObjectとして作成
 */
[CreateAssetMenu(menuName = "CreateData/SEs", fileName = "SEs")]
public class SEs : ScriptableObject
{
    //! システムオーディオリスト
    [Header("System SE List")]

    [SerializeField, Tooltip("システム：決定")]
    private AudioSEParams m_confirm = null;
    [SerializeField, Tooltip("システム：キャンセル")]
    private AudioSEParams m_cancel = null;
    [SerializeField, Tooltip("システム：カーソル移動")]
    private AudioSEParams m_cursor = null;
    public AudioSEParams Confirm { get => m_confirm; }
    public AudioSEParams Cancel { get => m_cancel; }
    public AudioSEParams Cursor { get => m_cursor; }


    //! effekseer無関係オーディオリスト
    [Header("Gimmick SE List")]

    [SerializeField, Tooltip("親：壁にぶつかる")]
    private AudioSEParams m_wall_hit_oya = null;
    [SerializeField, Tooltip("親：ゴール")]
    private AudioSEParams m_goal_oya = null;
    [SerializeField, Tooltip("子：壁にぶつかる")]
    private AudioSEParams m_wall_hit_child = null;
    [SerializeField, Tooltip("子：ゴール")]
    private AudioSEParams m_goal_child = null;

    public AudioSEParams WallHit_p { get => m_wall_hit_oya; }
    public AudioSEParams Goal_p { get => m_goal_oya; }
    public AudioSEParams WallHit_c { get => m_wall_hit_child; }
    public AudioSEParams Goal_c { get => m_goal_child; }


    [SerializeField, Tooltip("チャージ中"), Space(10)]
    private AudioSEParams m_charge = null;
    [SerializeField, Tooltip("チャージ最大")]
    private AudioSEParams m_charge_full = null;
    [SerializeField, Tooltip("チャージダッシュ")]
    private AudioSEParams m_dash = null;

    public AudioSEParams Charge { get => m_charge; }
    public AudioSEParams ChargeMax { get => m_charge_full; }
    public AudioSEParams Dash { get => m_dash; }


    [SerializeField, Tooltip("モップ：移動中"), Space(10)]
    private AudioSEParams m_mop_move = null;
    [SerializeField, Tooltip("モップ：停止")]
    private AudioSEParams m_mop_stop = null;
    public AudioSEParams MopMove { get => m_mop_move; }
    public AudioSEParams MopStop { get => m_mop_stop; }

    [SerializeField, Tooltip("爆弾カウントダウン：通常"), Space(10)]
    private AudioSEParams m_bomb_count = null;
    [SerializeField, Tooltip("爆弾カウントダウン：ボス")]
    private AudioSEParams m_bomb_count_boss = null;
    public AudioSEParams BombCount { get => m_bomb_count; }
    public AudioSEParams BombCountBoss { get => m_bomb_count_boss; }

    [Header("BOSS,GOAL SE List")]
    [SerializeField, Tooltip("ゴールジャンプ"), Space(10)]
    private AudioSEParams m_goal_jump = null;
    [SerializeField, Tooltip("ボスフィニッシュ")]
    private AudioSEParams m_boss_finish = null;
    [SerializeField, Tooltip("ボスフィニッシュ")]
    private AudioSEParams m_boss_defeat = null;
    public AudioSEParams Goal_Jump { get => m_goal_jump; }
    public AudioSEParams Boss_Finish { get => m_boss_finish; }
    public AudioSEParams Boss_Defeat { get => m_boss_defeat; }

    [Header("Scene SE")]
    [SerializeField, Tooltip("ゲームオーバー遷移時SE")]
    private AudioSEParams m_gameover = null;
    public AudioSEParams GameOver { get => m_gameover; }


    [Header("Audio SE Groups")]
    [SerializeField, Tooltip("環境音：リーダーペンギン声"), Space(10)]
    private AudioMixerGroup m_parent_env_mixer;
    [SerializeField, Tooltip("環境音：リーダーペンギン声")]
    private List<AudioClip> m_parent_env_list = null;

    [SerializeField, Tooltip("環境音：子ペンギン声"), Space(10)]
    private AudioMixerGroup m_child_env_mixer;
    [SerializeField, Tooltip("環境音：子ペンギン声")]
    private List<AudioClip> m_child_env_list = null;
    public AudioMixerGroup ParentVoiceMixer { get => m_parent_env_mixer; }
    public List<AudioClip> ParentVoice { get => m_parent_env_list; }
    public AudioMixerGroup ChildVoiceMixer { get => m_child_env_mixer; }
    public List<AudioClip> ChildVoice { get => m_child_env_list; }

    [SerializeField, Tooltip("足音：ミキサー"), Space(10)]
    private AudioMixerGroup m_foot_mixer;
    [SerializeField, Tooltip("足音：エリア１")]
    private List<AudioClip> m_foot_list_1 = null;
    [SerializeField, Tooltip("足音：エリア２")]
    private List<AudioClip> m_foot_list_2 = null;
    [SerializeField, Tooltip("足音：エリア３")]
    private List<AudioClip> m_foot_list_3 = null;
    [SerializeField, Tooltip("足音：エリア４")]
    private List<AudioClip> m_foot_list_4 = null;

    public AudioMixerGroup FootMixer { get => m_foot_mixer; }
    public List<AudioClip> Foot_1{get => m_foot_list_1; }
    public List<AudioClip> Foot_2{get => m_foot_list_2; }
    public List<AudioClip> Foot_3{get => m_foot_list_3; }
    public List<AudioClip> Foot_4{get => m_foot_list_4; }

}
