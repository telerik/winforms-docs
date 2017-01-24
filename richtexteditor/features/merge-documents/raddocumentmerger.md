---
title: RadDocumentMerger
page_title: RadDocumentMerger | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
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
'#Region commands
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
'#End Region
'#Region API
Private Sub BoldButton_Click(ByVal sender As Object, ByVal e As RoutedEventArgs)
Me.radRichTextEditor1.ToggleBold()
Me.radRichTextEditor1.Focus() 'return focus to the control
End Sub
Private Sub ItalicButton_Click(ByVal sender As Object, ByVal e As RoutedEventArgs)
Me.radRichTextEditor1.ToggleItalic()
Me.radRichTextEditor1.Focus() 'return focus to the control
End Sub
Private Sub UnderlineButton_Click(ByVal sender As Object, ByVal e As RoutedEventArgs)
Me.radRichTextEditor1.ToggleUnderline()
Me.radRichTextEditor1.Focus() 'return focus to the control
End Sub
'#End Region
Public Sub CreteDocument()
'#region code
Dim document As New RadDocument()
Dim section As New Section()
Dim paragraph1 As New Paragraph()
paragraph1.TextAlignment = Telerik.WinForms.Documents.Layout.RadTextAlignment.Center
Dim span1 As New Span("Thank you for choosing Telerik")
paragraph1.Inlines.Add(span1)
Dim span2 As New Span()
span2.Text = " radRichTextEditor1!"
span2.FontWeight = Telerik.WinControls.RichTextEditor.UI.FontWeights.Bold
paragraph1.Inlines.Add(span2)
section.Blocks.Add(paragraph1)
Dim paragraph2 As New Paragraph()
Dim span3 As New Span("radRichTextEditor1")
span3.FontWeight = Telerik.WinControls.RichTextEditor.UI.FontWeights.Bold
paragraph2.Inlines.Add(span3)
Dim span4 As New Span(" is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs) etc.")
paragraph2.Inlines.Add(span4)
section.Blocks.Add(paragraph2)
Dim table As New Table()
table.LayoutMode = TableLayoutMode.AutoFit
table.StyleName = RadDocumentDefaultStyles.DefaultTableGridStyleName
Dim row1 As New TableRow()
Dim cell1 As New TableCell()
Dim p1 As New Paragraph()
Dim s1 As New Span()
s1.Text = "Cell 1"
p1.Inlines.Add(s1)
cell1.Blocks.Add(p1)
row1.Cells.Add(cell1)
Dim cell2 As New TableCell()
Dim p2 As New Paragraph()
Dim s2 As New Span()
s2.Text = "Cell 2"
p2.Inlines.Add(s2)
cell2.Blocks.Add(p2)
row1.Cells.Add(cell2)
table.Rows.Add(row1)
Dim row2 As New TableRow()
Dim cell3 As New TableCell()
cell3.ColumnSpan = 2
Dim p3 As New Paragraph()
Dim s3 As New Span()
s3.Text = "Cell 3"
p3.Inlines.Add(s3)
cell3.Blocks.Add(p3)
row2.Cells.Add(cell3)
table.Rows.Add(row2)
section.Blocks.Add(table)
section.Blocks.Add(New Paragraph())
document.Sections.Add(section)
Me.radRichTextEditor1.Document = document

````

{{endregion}} 

The document passed to the constructor can be obtained through the **Document** property of the __RadDocumentMerger__ instance.

You can use the methods of the __RadDocumentMerger__ class to [insert the content of the desired documents at the caret position]({%slug winforms/richtexteditor/features/merge-documents/merge%}) or just [append]({%slug winforms/richtexteditor/features/merge-documents/append%}) it to the target document.

## See Also

* [Insert Document at the Caret Position]({%slug winforms/richtexteditor/features/merge-documents/merge%})
* [Append a Document]({%slug winforms/richtexteditor/features/merge-documents/append%})