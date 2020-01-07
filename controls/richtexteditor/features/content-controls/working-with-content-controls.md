---
title: Working with content controls
page_title:  Working with content controls | RadRichTextEditor
description: This article show you you can access the content controls in code
slug: radrichtexteditor-features-working-with-content-controls
tags: content controls, richtexteditor
published: True
position: 1
---

# Working with Content Controls

This article shows some examples of how you can access a content control and modify their properties from the code. In general, the content controls are marked with annotations and you can manipulate them as such. Detailed information is available here: [Manipulating Annotations]({%slug radrichtextbox-features-document-elements-manipulating-annotations%}) 

### Get the content controls. 

The content controls can be retrieved by using the __GetAnnotationMarkersOfType__ method. This is demonstrated in the following example. 

#### Example 1: Get all Content Controls

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=IterateContentControls}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=IterateContentControls}} 

````C# 

IEnumerable<Telerik.WinForms.Documents.Model.StructuredDocumentTags.SdtStart> content_controls
    = this.radRichTextEditor1.Document.GetAnnotationMarkersOfType<Telerik.WinForms.Documents.Model.StructuredDocumentTags.SdtStart>();
foreach (var item in content_controls)
{
    Console.WriteLine("Type: {0} ID:{1}", item.SdtProperties.Type, item.SdtProperties.ID);
}


````
````VB.NET 
Dim content_controls As IEnumerable(Of Telerik.WinForms.Documents.Model.StructuredDocumentTags.SdtStart) = _
    Me.RadRichTextEditor1.Document.GetAnnotationMarkersOfType(Of SdtStart)()

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

    If item.SdtProperties.Type = Telerik.WinForms.Documents.Model.StructuredDocumentTags.SdtType.ComboBox Then
        Dim properties As Telerik.WinForms.Documents.Model.StructuredDocumentTags.ComboBoxProperties = TryCast(item.SdtProperties, ComboBoxProperties)
        Dim newItem As New Telerik.WinForms.Documents.Model.StructuredDocumentTags.StructuredDocumentTagProperties.ListItem()
        newItem.DisplayText = "New Item Text"
        properties.Items.Add(newItem)
    End If
Next

````

{{endregion}} 


# See Also
* [Content Controls Overview]({%slug radrichtexteditor-features-content-controls%})