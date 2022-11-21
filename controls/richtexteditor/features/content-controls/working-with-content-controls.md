---
title: Working with Content Controls
page_title:  Working with Content Controls - RadRichTextEditor
description: This article show you you can access the content controls in code
slug: radrichtexteditor-features-working-with-content-controls
tags: content controls, richtexteditor
published: True
position: 1
---

# Working with Content Controls

This article shows some examples of how you can access a content control and modify their properties from the code. In general, the content controls are marked with annotations and you can manipulate them as such. Detailed information is available here: [Manipulating Annotations]({%slug winforms/richtexteditor-/document-elements/annotations/manipulating-annotations%}) 

## Manipulate existing content controls

### Get the content controls. 

The content controls can be retrieved by using the __GetAnnotationMarkersOfType__ method. This is demonstrated in the following example. 

#### Example 1: Get all Content Controls

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=IterateContentControls}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=IterateContentControls}} 

````C# 
IEnumerable<SdtRangeStart> content_controls = this.radRichTextEditor1.Document.GetAnnotationMarkersOfType<SdtRangeStart>();
foreach (var item in content_controls)
{
    Console.WriteLine("Type: {0} ID:{1}", item.SdtProperties.Type, item.SdtProperties.ID);
}

````
````VB.NET 
Dim content_controls As IEnumerable(Of SdtRangeStart) = Me.RadRichTextEditor1.Document.GetAnnotationMarkersOfType(Of SdtRangeStart)()
For Each item In content_controls
    Console.WriteLine("Type: {0} ID:{1}", item.SdtProperties.Type, item.SdtProperties.ID)
Next

````

{{endregion}} 
  

### Set content controls properties.

This example shows how you can iterate the items and add an item to a existing ComboBox content control. 

#### Example 2: Adding items to a ComboBox or a DropDownList

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=AddItemsToCombo}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=AddItemsToCombo}} 

````C# 
foreach (var item in content_controls)
{
    if (item.SdtProperties.Type == SdtType.ComboBox)
    {
        ComboBoxProperties properties = item.SdtProperties as ComboBoxProperties;
        ListItem newItem = new System.Windows.Documents.ListItem();
        newItem.DisplayText = "New Item Text";
        properties.Items.Add(newItem);
    }
}

````
````VB.NET 
For Each item In content_controls
    If item.SdtProperties.Type = SdtType.ComboBox Then
        Dim properties As ComboBoxProperties = TryCast(item.SdtProperties, ComboBoxProperties)
        Dim newItem As New ListItem()
        newItem.DisplayText = "New Item Text"
        properties.Items.Add(newItem)
    End If
Next

````

{{endregion}} 


## Insert new content controls

New content controls can be inserted trough one of the overloads of the __InsertStructuredDocumentTag__ method accessible from __RadRichTextEditor__ and [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}):

#### Example 3: Inserting a content control

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=InsertContentControl}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=InsertContentControl}} 

````C# 
this.radRichTextEditor1.InsertStructuredDocumentTag();
// OR 
RadDocumentEditor editor = new RadDocumentEditor(this.radRichTextEditor1.Document);
editor.InsertStructuredDocumentTag();

````
````VB.NET 
Me.RadRichTextEditor1.InsertStructuredDocumentTag()
'OR
Dim editor As RadDocumentEditor = New RadDocumentEditor(Me.RadRichTextEditor1.Document)
editor.InsertStructuredDocumentTag()

````

{{endregion}}


#### Example 4: Inserting a content control using content control type

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=InsertContentControlUsingType}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=InsertContentControlUsingType}} 

````C# 
this.radRichTextEditor1.InsertStructuredDocumentTag(SdtType.CheckBox);
// OR 
RadDocumentEditor editor = new RadDocumentEditor(this.radRichTextEditor1.Document);
editor.InsertStructuredDocumentTag(SdtType.CheckBox);

````
````VB.NET 
Me.RadRichTextEditor1.InsertStructuredDocumentTag(SdtType.CheckBox)
'OR
Dim editor As RadDocumentEditor = New RadDocumentEditor(Me.RadRichTextEditor1.Document)
editor.InsertStructuredDocumentTag(SdtType.CheckBox)

````

{{endregion}} 


#### Example 5: Inserting a content control using content control properties

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=InsertContentControlUsingProperties}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=InsertContentControlUsingProperties}} 

````C# 
SdtProperties sdtProperties = new SdtProperties(SdtType.RichText)
{
    Alias = "AliasName",
    Lock = Lock.SdtContentLocked,
};
this.radRichTextEditor1.InsertStructuredDocumentTag(sdtProperties);
// OR 
RadDocumentEditor editor = new RadDocumentEditor(this.radRichTextEditor1.Document);
editor.InsertStructuredDocumentTag(sdtProperties);

````
````VB.NET 
Dim sdtProperties As SdtProperties = New SdtProperties(SdtType.RichText) With {
Alias = "AliasName",
Lock = Lock.SdtContentLocked
}
Me.RadRichTextEditor1.InsertStructuredDocumentTag(sdtProperties)
'OR
Dim editor As RadDocumentEditor = New RadDocumentEditor(Me.RadRichTextEditor1.Document)
editor.InsertStructuredDocumentTag(sdtProperties)

````

{{endregion}} 


# See Also
* [Content Controls Overview]({%slug radrichtexteditor-features-content-controls%})
