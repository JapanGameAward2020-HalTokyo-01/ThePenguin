/**
 *  @file   NonEditableAttribute.cs
 *  @brief  Inspector上で編集できなくなる 
 *  @author 池田 博雅
 */

using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public sealed class NonEditableField : PropertyAttribute { }

#if UNITY_EDITOR
[CustomPropertyDrawer(typeof(NonEditableField))]
public class NonEditableDrawer : PropertyDrawer
{
    public override float GetPropertyHeight(SerializedProperty property, GUIContent label)
    {
        return EditorGUI.GetPropertyHeight(property,label,true);
    }

    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        GUI.enabled = false;
        EditorGUI.PropertyField(position,property,label,true);
        GUI.enabled = true;
    }
}

#endif
