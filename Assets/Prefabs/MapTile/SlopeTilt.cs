/// <summary>
/// @file   SlopeTilt.cs
/// @brief	坂挙動
/// @author	北林和哉
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlopeTilt : MonoBehaviour
{
    [SerializeField]
    private float m_Angle;

    [SerializeField, NonEditableField]
    private Vector3 m_Tilt;

    public enum FieldType
    {
        SNOW = 0,
        DESERT,
        JUNGLE,
        VOLCANIC
    }

    [SerializeField]
    FieldType m_Type;

    FieldType m_TypeLast;

    [SerializeField]
    TextureData m_Data;

    private void OnDrawGizmos()
    {
        if (m_Type != m_TypeLast)
        {
            var m = new Material(this.gameObject.GetComponent<MeshRenderer>().sharedMaterial);
            m.SetTexture("_BaseMap", m_Data.GetTexture((int)m_Type));
            m.shader = Shader.Find("Lightweight Render Pipeline/Unlit");
            this.gameObject.GetComponent<MeshRenderer>().sharedMaterial = m;
            m_TypeLast = m_Type;
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        float angleRad = m_Angle * Mathf.Deg2Rad;
        m_Tilt = (transform.up * Mathf.Cos(angleRad) + transform.right * Mathf.Sin(angleRad)).normalized;
    }

    private void OnCollisionStay(Collision collision)
    {
        if (collision.gameObject.layer == 8)
        {
            Penguin penguin = collision.gameObject.GetComponent<Penguin>();
            if (penguin != null)
            {
                RaycastHit m_Hit;
                Debug.Log("Checking if on Slope...");
                if (Physics.Raycast(penguin.transform.position, -penguin.transform.up, out m_Hit))
                {
                    if (m_Hit.collider.gameObject.GetComponent<SlopeTilt>() != null)
                    {
                        Debug.Log("Penguin on Slope!");
                        Debug.DrawRay(penguin.transform.position, -penguin.transform.up * 5, Color.green);
                        penguin.SetModelRotation(m_Tilt);
                    }
                }
            }
        }
    }

    //private void OnDrawGizmos()
    //{
    //    var a = m_Angle * Mathf.Deg2Rad;
    //    var dir = (transform.up * Mathf.Cos(a) + transform.right * Mathf.Sin(a)).normalized;

    //    m_Tilt = (transform.up + transform.right).normalized;
    //    Debug.DrawRay(transform.position, dir, Color.red);
    //}
}
