using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossFlyAnimation : MonoBehaviour
{
    void BossFlying()
    {
        SoundEffect.Instance.PlayOneShot(SoundEffect.Instance.SEList.Boss_Defeat);
    }
}
