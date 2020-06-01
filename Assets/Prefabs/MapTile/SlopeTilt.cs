using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlopeTilt : MonoBehaviour
{
    [SerializeField]
    private float m_Angle;

    [SerializeField, NonEditableField]
    private Vector3 m_Tilt;

    // Start is called before the first frame update
    void Start()
    {
        float angleRad = m_Angle * Mathf.Deg2Rad;
        m_Tilt = (transform.up * Mathf.Cos(angleRad) + transform.right * Mathf.Sin(angleRad)).normalized;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == 8)
        {
            Penguin penguin = collision.gameObject.GetComponent<Penguin>();
            if (penguin != null)
            {
                StartCoroutine(Tilter(penguin));
            }
        }
    }

    IEnumerator Tilter(Penguin penguin)
    {
        penguin.Tilting = true;
        while (penguin.Tilting)
        {
            RaycastHit m_Hit;
            Debug.Log("Checking if on Slope...");
            if(Physics.Raycast(penguin.transform.position, -penguin.transform.up, out m_Hit))
            {
                if (m_Hit.collider.gameObject.GetComponent<SlopeTilt>() != null)
                {
                    Debug.Log("Penguin on Slope!");
                    Debug.DrawRay(penguin.transform.position, -penguin.transform.up * 5, Color.green);
                    penguin.SetModelRotation(m_Tilt);
                }
            }
            yield return new WaitForSecondsRealtime(0.2f);
        }
    }

    private void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.layer == 8)
        {
            Penguin penguin = collision.gameObject.GetComponent<Penguin>();
            penguin.SetModelRotation(Vector3.up);
            penguin.Tilting = false;
            Debug.Log("Stopped checking for slopes");
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
