using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PenguinJoin : MonoBehaviour
{
    [SerializeField]
    private Image m_PenguinImage;

    [SerializeField]
    private GameObject m_Destination;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    public void StartJoin(Vector3 penguinpos)
    {
        Image img = Instantiate(m_PenguinImage);
        img.gameObject.transform.position = penguinpos;
        img.transform.SetParent(this.transform);

        StartCoroutine(GotoDestination(img));
    }

    IEnumerator GotoDestination(Image img)
    {
        float time = 0;
        Debug.Log("starting coroutine");
        while (Vector3.Distance(m_Destination.transform.position, img.transform.position) > 0.001f)
        {
            time += Time.deltaTime;
            Debug.Log("img.transform.position: " + img.transform.position);
            img.transform.position = Vector3.Lerp(m_Destination.transform.position, img.transform.position, time / 5.0f);

            yield return null;
        }
        yield break;
    }
}
