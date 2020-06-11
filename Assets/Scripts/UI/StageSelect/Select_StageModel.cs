/**
 * @file    Select_StageModel.cs
 * @brief   ステージセレクトでステージイメージを表示する
 * @author  En Yuki
 */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Select_StageModel : MonoBehaviour
{
    [SerializeField,NonEditableField]
    private StageMetaParam m_stage_param;

    [SerializeField]
    private Animator m_Animator;

    // Update is called once per frame
    void Update()
    {
        m_Animator.SetInteger("Area",m_stage_param.m_current_area_index);
        m_Animator.SetInteger("Stage", m_stage_param.m_current_stage_index);
    }
}
