/**
* @file     TagAttribute.cs
* @brief    Inspector上にタグを選択できる様にする
* @author   池田 博雅
*/
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif  

public sealed class TagField : PropertyAttribute { }

#if UNITY_EDITOR
[CustomPropertyDrawer(typeof(TagField))]
public class TagDrawer : PropertyDrawer
{
    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        EditorGUI.BeginProperty(position, label, property);

        property.stringValue = EditorGUI.TagField(position,label,property.stringValue);

        EditorGUI.EndProperty();
    }
}
#endif
