using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testobj : MonoBehaviour
{
    [SerializeField]
    SceneObject obj;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            SceneData.m_Static_ClearCount = 90;
            SceneData.m_Static_ClearTime =119.99f;
            UnityEngine.SceneManagement.SceneManager.LoadScene(obj);
        }
    }
}
