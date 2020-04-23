using UnityEngine;
using UnityEngine.UI;
using Assets.Scripts.SceneManagement;

public class StateBase_GameMain : MonoBehaviour
{
	//! 文字描画用テキストオブジェクト
	[SerializeField]
	protected Text m_text = null;

	//! 状態を持つオブジェクト
	[SerializeField]
	protected GameMainTransition m_owner_obj = null;

	//! シーン遷移オブジェクト
	protected TransScene m_transitioner = null;


	public virtual void OnStart() { }
	public virtual void OnUpdate(GameMainTransition state_holder) { }
	public virtual void OnEndState() { }
}
