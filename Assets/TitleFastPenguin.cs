using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TitleFastPenguin : MonoBehaviour
{
    bool oneWay = true;
    bool slow = false;

    [SerializeField]
    int turnTimer = 0;
    int slowTimer = 0;
    int fastTimer = 0;

    int slowThreshold = 70;

    int turnThreshold = 200;

    int fastTreshold = 25;

    [SerializeField]
    float ZMove = 1.5f;

    void Start()
    {
        
    }

    void FixedUpdate()
    {
        transform.Translate(transform.forward * ZMove * Time.deltaTime, Space.World);

        if (!slow)
        {
            slowTimer++;
            if (slowTimer > slowThreshold)
            {
                ZMove -= 0.5f;
                slowTimer = 0;
                slow = true;
            } 
        }

        if (slow)
        {
            fastTimer++;
            if (fastTimer > fastTreshold)
            {
                ZMove += 0.5f;
                fastTimer = 0;
                slow = false;
            } 
        }

        turnTimer++;
        if (turnTimer > turnThreshold)
        {
            turnTimer = 0;
            oneWay = !oneWay;
            transform.Rotate(new Vector3(0f, 180f, 0f));
            //StartCoroutine(RotateMe());
        }
    }

    IEnumerator RotateMe()
    {
        var fromAngle = transform.rotation;
        var toAngle = Quaternion.Euler(transform.eulerAngles + Vector3.up * 180);
        for (var t = 0f; t < 1; t += Time.deltaTime / 0.5f)
        {
            transform.rotation = Quaternion.Slerp(fromAngle, toAngle, t);
            yield return null;
        }
    }
}
