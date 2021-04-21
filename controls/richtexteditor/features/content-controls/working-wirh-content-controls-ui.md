---
title: Working with Content Controls UI
page_title:  Working with Content Controls UI | RadRichTextEditor
description: This article show you you can access the content controls in UI
slug: radrichtexteditor-features-working-with-content-controls-ui
tags: content controls, richtexteditor, ui
published: True
position: 2
---

# Working with Content Controls UI

The easiest way to create a content control is through the user interface. You can also create them programmatically following the [Working with Content Controls article]({%slug radrichtexteditor-features-working-with-content-controls%}).

## User Interface

You can specify which type of content control you wish to insert from the predefined UI of __RadRichTextEditor__. You can select it from the Developer Tab which is part of the [RadRichTextEditorRibbonUI]({%slug richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui%}) by default:

![working-with-content-controls-ui-001](images/working-with-content-controls-ui-001.png)

You can choose between the following content controls:

* __Rich Text__ content control
* __Plain Text__ content control
* __Picture__ content control
* __Repeating Section__ content control
* __Check Box__ content control
* __Combo Box__ content control
* __Drop-Down List__ content control
* __Date Picker__ content control

## Content controls API

The following commands related to the content controls functionality are available in the __RadRichTextEditor__:

* __InsertStructuredDocumentTagCommand__

In order to successfully execute the __InsertStructuredDocumentTagCommand__ you have to pass the wanted content control type (SdtType) as a CommandParameter:

#### Example 1: Execute InsertStructuredDocumentTagCommand()

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=ExecuteInsertStructuredDocumentTag}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=ExecuteInsertStructuredDocumentTag}} 

````C# 
this.radRichTextEditor1.InsertStructuredDocumentTag(SdtType.Picture);

````
````VB.NET 
Me.RadRichTextEditor1.InsertStructuredDocumentTag(SdtType.Picture)

````

{{endregion}}

Another way is to create a new instance of the __InsertStructuredDocumentTagCommand__ and call the __Execute__ method:

#### Example 2: Create new InsertStructuredDocumentTagCommand and call Execute() 

{{source=..\SamplesCS\RichTextEditor\Features\ContentControls.cs region=}} 
{{source=..\SamplesVB\RichTextEditor\Features\ContentControls.vb region=}} 

````C# 
InsertStructuredDocumentTagCommand sdtCommand = new InsertStructuredDocumentTagCommand(this.radRichTextEditor1.RichTextBoxElement);
sdtCommand.Execute("Picture");
//OR
this.radRichTextEditor1.Commands.InsertSdtCommand.Execute("Picture");

````
````VB.NET 
Dim sdtCommand As InsertStructuredDocumentTagCommand = New InsertStructuredDocumentTagCommand(Me.RadRichTextEditor1.RichTextBoxElement)
sdtCommand.Execute("Picture")
'OR
Me.RadRichTextEditor1.Commands.InsertSdtCommand.Execute("Picture")

````

{{endregion}}


* __ShowContentControlPropertiesDialogCommand__

