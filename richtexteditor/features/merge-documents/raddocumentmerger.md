---
title: RadDocumentMerger
page_title: RadDocumentMerger | RadRichTextEditor
description: RadDocumentMerger
slug: winforms/richtexteditor/features/merge-documents/raddocumentmerger
tags: events
published: True
position: 0 
---

# RadDocumentMerger Overview

**RadDocumentMerger** introduces an API that enables users to merge two __RadDocument__ instances or append them to each other. When performing merging operations, you may encounter conflicts between the different settings of two documents. Such conflicts can be resolved/avoided by changing the settings of **RadDocumentMerger**.


## Create a RadDocumentMerger

When instantiating the **RadDocumentMerger** class, you should pass to its constructor a [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%}) instance. This parameter represents the document that is used as a target when performing the merging operations.

#### Example 1: Create a RadDocumentMerger

{{source=..\SamplesCS\RichTextEditor\GettingStarted\Main.cs region=DocumentMerger}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\Main.vb region=DocumentMerger}} 

````C#
Telerik.WinForms.Documents.Model.Merging.RadDocumentMerger merger = new RadDocumentMerger(targetDocument);

````
````VB.NET
Dim merger As Telerik.WinForms.Documents.Model.Merging.RadDocumentMerger = New RadDocumentMerger(targetDocument)
'#End Region
Dim section As New Section()
Dim span As New Span("document 1")
Dim p As New Paragraph()
p.Inlines.Add(span)
section.Blocks.Add(p)
targetDocument.Sections.Add(section)
Dim sourceDocument As Telerik.WinForms.Documents.Model.RadDocument = New RadDocument()
Dim section2 As New Section()
Dim span2 As New Span("document 2")
Dim p2 As New Paragraph()
p2.Inlines.Add(span2)
section2.Blocks.Add(p2)
sourceDocument.Sections.Add(section2)
'#Region "cs-radrichtextbox-features-merge-append-documents_1"
Dim documentMerger As Telerik.WinForms.Documents.Model.Merging.RadDocumentMerger = New RadDocumentMerger(targetDocument)
Dim options As Telerik.WinForms.Documents.Model.Merging.AppendDocumentOptions = New AppendDocumentOptions()
options.ConflictingStylesResolutionMode = ConflictingStylesResolutionMode.UseTargetStyle
options.FirstSourceSectionPropertiesResolutionMode = SectionPropertiesResolutionMode.Target
documentMerger.AppendDocument(sourceDocument, options)
'#End Region
'#Region "radrichtextbox-features-raddocumentmerger_1"
Dim insertOptions As New InsertDocumentOptions()
insertOptions.ConflictingStylesResolutionMode = ConflictingStylesResolutionMode.UseTargetStyle
insertOptions.InsertLastParagraphMarker = False
merger.InsertDocument(sourceDocument, insertOptions)
'#End Region
Me.radRichTextEditor1.Document = documentMerger.Document
End Sub
'#region commands
Private Sub Main_Load(ByVal sender As Object, ByVal e As EventArgs)
AddHandler radRichTextEditor1.Commands.ToggleBoldCommand.ToggleStateChanged, AddressOf ToggleBoldCommand_ToggleStateChanged
AddHandler radRichTextEditor1.Commands.ToggleItalicCommand.ToggleStateChanged, AddressOf ToggleItalicCommand_ToggleStateChanged
AddHandler radRichTextEditor1.Commands.ToggleUnderlineCommand.ToggleStateChanged, AddressOf ToggleUnderlineCommand_ToggleStateChanged
End Sub
Private Sub ToggleBoldCommand_ToggleStateChanged(ByVal sender As Object, ByVal e As Telerik.WinForms.Documents.RichTextBoxCommands.StylePropertyChangedEventArgs(Of Boolean))
Me.BoldButton.IsChecked = e.NewValue
End Sub
Private Sub ToggleUnderlineCommand_ToggleStateChanged(ByVal sender As Object, ByVal e As Telerik.WinForms.Documents.RichTextBoxCommands.StylePropertyChangedEventArgs(Of Boolean))
Me.UnderlineButton.IsChecked = e.NewValue
End Sub
Private Sub ToggleItalicCommand_ToggleStateChanged(ByVal sender As Object, ByVal e As Telerik.WinForms.Documents.RichTextBoxCommands.StylePropertyChangedEventArgs(Of Boolean))
Me.ItalicButton.IsChecked = e.NewValue
End Sub

````

{{endregion}} 

The document passed to the constructor can be obtained through the **Document property** of the __RadDocumentMerger__ instance.

You can use the methods of the __RadDocumentMerger__ class to [insert the content of the desired documents at the caret position]({%slug winforms/richtexteditor/features/merge-documents/merge%}) or just [append]({%slug winforms/richtexteditor/features/merge-documents/append%}) it to the target document.

## See Also

* [Insert Document at the Caret Position]({%slug winforms/richtexteditor/features/merge-documents/merge%})
* [Append a Document]({%slug winforms/richtexteditor/features/merge-documents/append%})