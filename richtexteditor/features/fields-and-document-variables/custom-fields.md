---
title: Custom Fields
page_title: Custom Fields | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.
slug: winforms/richtexteditor-/features/fields-and-document-variables/custom-fields
tags: custom,fields
published: True
position: 2
previous_url: richtexteditor-features-fields-and-document-variables-custom-fields
---

# Custom Fields

Fields are a convenient way to show non-static data in the document. In this way, you could present different data to the end-user without actually changing the document content.

For a description of the supported out of the box field types, please refer to [this article]({%slug winforms/richtexteditor-/features/fields-and-document-variables/fields%}).
      
This topic will explain how custom fields can be created in order to suit application-specific purposes. It contains the following sections:

* [Creating a Custom Field](#create-custom-field)

* [Adding Properties](#adding-properties)

## Create Custom Field

In some cases, it is convenient to extend the currently available fields to suit application-specific scenarios. This can be done by inheriting from __CodeBasedField__ or (if the functionality of the new field will be closely connected to Mail Merge) from __MergeField__.        

This topic will list the steps for creating such a custom field.

1\. Have your class inherit from **MergeField** or **CodeBasedField**:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=define}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=define}} 

````C#
public class CustomField : CodeBasedField

````
````VB.NET
Public Class CustomField
Inherits CodeBasedField

````

{{endregion}} 

2\. Give a **FieldTypeName** to instances of your field:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=TypeName}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=TypeName}} 

````C#
        
private static readonly string FieldType = "CUSTOMFIELD";
    
public override string FieldTypeName
{
    get
    {
        return CustomField.FieldType;
    }
}

````
````VB.NET
Private Shared ReadOnly FieldType As String = "CUSTOMFIELD"
Public Overrides ReadOnly Property FieldTypeName() As String
    Get
        Return CustomField.FieldType
    End Get
End Property

````

{{endregion}} 

The field type is shown when the field is in code mode, just after the opening curly bracket. If you toggle the field to Code mode and modify this first word, the type of the field will also change. That is why it is important to give a meaningful name to the field.
            
3\. Register your custom field type in the factory that **RadDocument** uses. It is convenient to use the static constructor of the class for that purpose:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=ctor}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=ctor}} 

````C#
    
static CustomField()
{
    CodeBasedFieldFactory.RegisterFieldType(CustomField.FieldType, () => new CustomField());
}

````
````VB.NET
Shared Sub New()
    CodeBasedFieldFactory.RegisterFieldType(CustomField.FieldType, Function() New CustomField())
End Sub

````

{{endregion}} 

The function passed as a second parameter essentially tells the document how it could create a new instance of the field. This is required because fields have to be created internally when you copy/paste or even when you toggle field modes.
            
4\. Override the **CreateInstance()** method to return a new instance of your custom field:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=create}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=create}} 

````C#
    
public override Field CreateInstance()
{
    return new CustomField();
}

````
````VB.NET
Public Overrides Function CreateInstance() As Field
    Return New CustomField()
End Function

````

{{endregion}}

5\. If you have inherited from **CodeBasedField** or you would like to customize the way the field appears in the document in *ResultMode*, override the __GetResultFragment__ method. In short, it will return a **DocumentFragment** with the content that should be shown when the field is updated and its mode is changed to *Result*.
            
That is all that needs to be done in order to be able to get your custom field working, insert it in documents, serialize and deserialize it.

## Adding Properties

If you would like to add some properties to this field, similar to the **PropertyPath** field of **MergeFields**, you can do so following the steps bellow:

1\. Create a read-only **FieldProperty**:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=field}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=field}} 

````C#
        
private readonly FieldProperty myProperty;

````
````VB.NET
Private ReadOnly _myProperty As FieldProperty

````

{{endregion}} 

2\. Add a public CLR property. Properties of type string can be set and retrieved from the **FieldProperty** directly. No other types are accepted, as it would not be possible to convert them correctly to text for the purpose of field evaluation when inserted in the document. Therefore, if you would like to have non-string properties, you would have to make the conversion to/from string yourself:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=property}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=property}} 

````C#
        
[XamlSerializable]
public string MyProperty
{
    get
    {
        return this.myProperty.GetValue();
    }
    set
    {
        if (!this.myProperty.IsNestedField && this.myProperty.GetValue() == value)
        {
            return;
        }
    
        this.myProperty.SetValue(value);
        this.InvalidateCode();
    }
}

````
````VB.NET
<XamlSerializable>
Public Property MyProperty() As String
    Get
        Return Me._myProperty.GetValue()
    End Get
    Set(ByVal value As String)
        If (Not Me._myProperty.IsNestedField) AndAlso Me._myProperty.GetValue() = value Then
            Return
        End If
        Me._myProperty.SetValue(value)
        Me.InvalidateCode()
    End Set
End Property

````

{{endregion}} 

The **XamlSerializable** attribute ensures that this property will be exported and imported to/from XAML when **XamlFormatProvider** is used. The other part of the code ensures that the field will be reset only if the new value is different and that the code will be invalidated, so as to be correctly updated on the next pass.
            
3\. Declare a static **FieldPropertyDefinition** wired to your property:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=static}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=static}} 

````C#
        
public static readonly FieldPropertyDefinition MyPropertyProperty = new FieldPropertyDefinition("MyProperty");

````
````VB.NET
Public Shared ReadOnly MyPropertyProperty As New FieldPropertyDefinition("MyProperty")

````

{{endregion}} 

4\. Make sure to initialize the **FieldProperty** in the constructor of your field:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=ctor2}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=ctor2}} 

````C#
    
public CustomField()
{
    this.myProperty = new FieldProperty(this, CustomField.MyPropertyProperty);
}

````
````VB.NET
Public Sub New()
    Me._myProperty = New FieldProperty(Me, CustomField.MyPropertyProperty)
End Sub

````

{{endregion}} 

5\. Ensure that your custom property is copied along with the other field properties:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=codeExpression}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=codeExpression}} 

````C#
    
protected override void CopyPropertiesFromCodeExpression(FieldCodeExpression fieldCodeExpression)
{
    base.CopyPropertiesFromCodeExpression(fieldCodeExpression);
    this.myProperty.SetValue(fieldCodeExpression.FieldArgumentNode);
}

````
````VB.NET
Protected Overrides Sub CopyPropertiesFromCodeExpression(ByVal fieldCodeExpression As FieldCodeExpression)
    MyBase.CopyPropertiesFromCodeExpression(fieldCodeExpression)
    Me._myProperty.SetValue(fieldCodeExpression.FieldArgumentNode)
End Sub

````

{{endregion}} 

This method is used when a field is created from field fragment. This happens when you update a field and is what enables changing the property path of a merge field by typing in the editor or even changing a **PageField** to a **DateField**. As the type of the new field is inferred from the text in the document, it is required that the field be created anew and the respective properties must be copied as well.

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=build}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=build}} 

````C#
    
protected override void BuildCodeOverride()
{
    base.BuildCodeOverride();
    this.CodeBuilder.SetFieldArgument(this.myProperty);
}

````
````VB.NET
Protected Overrides Sub BuildCodeOverride()
    MyBase.BuildCodeOverride()
    Me.CodeBuilder.SetFieldArgument(Me._myProperty)
End Sub

````

{{endregion}} 

This method is invoked when the **CodeFragment** of the field is requested. In it, the field arguments and switches must be added, so that they are properly included in the field.

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=copy}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=copy}} 

````C#
    
public override void CopyPropertiesFrom(Field fromField)
{
    base.CopyPropertiesFrom(fromField);
    CustomField customField = (CustomField)fromField;
    this.myProperty.CopyPropertiesFrom(customField.myProperty);
}

````
````VB.NET
Public Overrides Sub CopyPropertiesFrom(ByVal fromField As Field)
    MyBase.CopyPropertiesFrom(fromField)
    Dim _customField As CustomField = CType(fromField, CustomField)
    Me._myProperty.CopyPropertiesFrom(_customField._myProperty)
End Sub

````

{{endregion}} 

As field ranges are copyable, this method must be overridden in order to ensure that the added properties will also be copied.

6\. If you like, you can also customize the fragment that is returned when the **ResultFragment** is requested. This is done by overriding the __GetResultFragment__ method. Here is an example:

{{source=..\SamplesCS\RichTextEditor\Features\CustomFields.cs region=fragment}} 
{{source=..\SamplesVB\RichTextEditor\Features\CustomFields.vb region=fragment}} 

````C#
    
protected override DocumentFragment GetResultFragment()
{
    return DocumentFragment.CreateFromInline(new Span(this.MyProperty));
}

````
````VB.NET
Protected Overrides Function GetResultFragment() As DocumentFragment
    Return DocumentFragment.CreateFromInline(New Span(Me.MyProperty))
End Function

````

{{endregion}} 



