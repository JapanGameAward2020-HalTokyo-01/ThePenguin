using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestMove : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKey(KeyCode.UpArrow))
        {
            GetComponent<Transform>().position += new Vector3(0, 0, 0.04f);
        }
        if (Input.GetKey(KeyCode.DownArrow))
        {
            GetComponent<Transform>().position += new Vector3(0, 0, -0.04f);
        }
        if (Input.GetKey(KeyCode.LeftArrow))
        {
            GetComponent<Transform>().position += new Vector3(-0.04f, 0, 0);
        }
        if (Input.GetKey(KeyCode.RightArrow))
        {
            GetComponent<Transform>().position += new Vector3(0.04f, 0, 0);
        }
    }
}
