using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Canvas_SetCamera : MonoBehaviour
{
	public void Awake()
	{
		Canvas _self = GetComponent<Canvas>();
		_self.worldCamera = Camera.main;
		_self.planeDistance = 0.31f;
	}
}
