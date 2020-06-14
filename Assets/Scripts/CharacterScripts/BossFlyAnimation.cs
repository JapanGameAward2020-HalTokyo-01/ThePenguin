using Effekseer;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossFlyAnimation : MonoBehaviour
{
    [SerializeField]
    EffekseerEmitter jetPack;

    void BossFlying()
    {
        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Boss_Defeat, 0.56f, 128);
    }

    void JungleBossJetpack()
    {
        if (GetComponent<Animator>().name == "bear_jangle_motion")
        {
            jetPack.transform.parent = transform;
        }
    }
}
