/**
 * @file    AudioLoop.cs
 * @brief   AudioSystem機能群：区間ループ機能
 * @author  谷沢 瑞己
 */
using System;
using UnityEngine;

/**
 * @struct  AudioLoopParam構造体
 * @brief   機能呼び出し側で持つべきパラメータ
 */
[Serializable]
public struct AudioLoopParam
{
	//! ループ開始サンプル数
	public int m_begin;
	//! ループ終了サンプル数(0の時ループしない)
	public int m_end;
}

/**
 * @class   AudioLoopクラス
 * @brief   再生中のAudioSourceから現在サンプル数(位相)を取得し、操作する
 */
public class AudioLoop
{
	/**
	 * @brief   (Update()呼び出し)区間ループチェック
	 */
	public void OnLoopCheck(AudioSource source, AudioLoopParam param)
	{
		if (param.m_end == 0) return;

		// 再生区間オーバーのサンプル値に至った場合区間開始位置に戻す
		if (source.timeSamples > param.m_end)
			source.timeSamples = param.m_begin;
	}
}
