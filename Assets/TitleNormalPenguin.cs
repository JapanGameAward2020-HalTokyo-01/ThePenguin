using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TitleNormalPenguin : MonoBehaviour
{
    [SerializeField]
    float m_RotateSpeed;
    void Start()
    {
        
    }

    void Update()
    {
        transform.Rotate(new Vector3(0f, m_RotateSpeed, 0f));
    }
}
