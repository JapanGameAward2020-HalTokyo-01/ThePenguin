/**
* @file     LayerAttribute.cs
* @brief    Inspector上にLayerを選択できる様にする
* @author   池田 博雅
*/
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class LayerField : PropertyAttribute { }

#if UNITY_EDITOR
[CustomPropertyDrawer(typeof(LayerField))]
public class LayerDrawer : PropertyDrawer
{
    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        EditorGUI.BeginProperty(position,label,property);

        property.intValue = EditorGUI.LayerField(position,label,property.intValue);

        EditorGUI.EndProperty();
    }
}
#endif