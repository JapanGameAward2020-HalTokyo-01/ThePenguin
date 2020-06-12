/// <summary>
/// @file   PenguinJoin.cs
/// @brief	ペンギン群れ化の演出
/// @author	北林和哉
/// </summary>

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

    private bool m_StageClear;

    private void Awake()
    {
        onReachedDestination = delegate () { };
    }

    // Start is called before the first frame update
    void Start()
    {
        m_StageClear = false;
    }

    public void StartJoin(Vector3 penguinpos)
    {
        Image img = Instantiate(m_PenguinImage);
        img.gameObject.transform.position = penguinpos;
        img.transform.SetParent(this.transform);

        StartCoroutine(GotoDestination(img));
    }

    public void EndJoin()
    {
        m_StageClear = true;
    }

    IEnumerator GotoDestination(Image img)
    {
        //img.transform.position = new Vector3(img.transform.position.x, img.transform.position.y, 0.0f);

        while (Vector3.Distance(m_Destination.transform.position, img.transform.position) > 0.05f)
        {
            img.transform.position = Vector3.MoveTowards(img.transform.position, m_Destination.transform.position, Time.deltaTime * m_Speed * 100);

            if (img.transform.localScale.magnitude > 0.5)
            {
                img.transform.localScale = Vector3.MoveTowards(img.transform.localScale, Vector2.zero, Time.deltaTime);
            }

            if (!this | m_StageClear)
            {
                this.onReachedDestination();
                yield break;
            }

            yield return null;
        }

        this.onReachedDestination();
        Destroy(img.gameObject);
        yield break;
    }


}
