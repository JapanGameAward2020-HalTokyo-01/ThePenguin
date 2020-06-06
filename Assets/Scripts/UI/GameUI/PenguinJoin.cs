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

    public float m_Speed;

    //! 群れ化処理
    public System.Action onReachedDestination;

    // Start is called before the first frame update
    void Start()
    {
        onReachedDestination = delegate () { };
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
        img.transform.position = new Vector3(img.transform.position.x, img.transform.position.y, 0.0f);
        Vector3 initdist = m_Destination.transform.position - img.transform.position;

        while (Vector3.Distance(m_Destination.transform.position, img.transform.position) > 1.0f * m_Speed)
        {
            Debug.Log("img.transform.position: " + img.transform.position);

            Vector3 currentdist = m_Destination.transform.position - img.transform.position;

            img.transform.position += Vector3.Normalize(currentdist) * 100 * m_Speed * Time.deltaTime;

            if (img.transform.localScale.magnitude > 0.5)
            {
                img.transform.localScale = Vector3.one * (currentdist.magnitude / initdist.magnitude);
            }
            yield return null;
        }
        this.onReachedDestination();
        Destroy(img.gameObject);
        yield break;
    }


}
