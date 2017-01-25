---
title: Insert Document at Caret Position
page_title: Insert Document at Caret Position | RadRichTextEditor
description: RadDocumentMerger
slug: winforms/richtexteditor/features/merge-documents/merge
tags: events
published: True
position: 2 
---

# Insert Document at Caret Position aaaa

The [RadDocumentMerger]({%slug winforms/richtexteditor/features/merge-documents/raddocumentmerger%}) class exposes the **InsertDocument()** method that enables you to merge two [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%}) instances. The documents will be merged at the caret position of the targeted instance.

Along with the [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%}) instance, the overloads of the InsertDocument() method allow you to pass a parameter of type **InsertDocumentOptions**. You can use this parameter to customize the way merge conflicts are resolved and the new document is inserted. The available properties are as follows:

* **ConflictingStylesResolutionMode**: Determines the mode of resolving conflicts between styles with the same IDs. This property is of type ConflictingStylesResolutionMode and can have the following enum values:

	* **UseTargetStyle**: The style of the target document is used. For example, if the target and source documents have a style with a name "MyStyle", but with different properties, the one from the target is used by the merged document and the one from the source document is not added to the style repository of the target document.
	
	* **RenameSourceStyle**: The style of the source document is renamed and used. For example, if the target and source documents have a style with a name "MyStyle", but with different properties, the one from the source is renamed "MyStyle\_1", added to the style repository of the target document and used by the merged document from the source document elements. *This is the default value*.

* **InsertLastParagraphMarker**: A Boolean property that determines whether the last paragraph marker is inserted and, subsequently, whether the last paragraph's formatting is preserved. When the value is **True**, a new paragraph with the same formatting is inserted. Otherwise, only the inlines from that paragraph are inserted. *The default value is **True***.

#### Merge documents with InsertDocumentOptions 

{{source=..\SamplesCS\RichTextEditor\GettingStarted\Main.cs region=radrichtextbox-features-raddocumentmerger_1}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\Main.vb region=radrichtextbox-features-raddocumentmerger_1}} 

````C#
InsertDocumentOptions insertOptions = new InsertDocumentOptions();
insertOptions.ConflictingStylesResolutionMode = ConflictingStylesResolutionMode.UseTargetStyle;
insertOptions.InsertLastParagraphMarker = false;
merger.InsertDocument(sourceDocument, insertOptions);

````
````VB.NET
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

There is another overload of InsertDocument() that takes only a [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%}) instance. When you use this overload, the default values of InsertDocumentOptions are used when merging documents.  

## Behavior

**Table 1** describes the most common scenarios in which the InsertDocument() method can be used and what the result of a merge would be.

#### **Table 1: Behavior of the InsertDocument() method in different scenarios**
<table>
<tr>
	<th>Action </th>
	<th>Result </th>
</tr>

<tr>
	<td>Insert the source document in an empty document.</td>
	<td>All of the content from the source document is inserted in the target document. The section properties are obtained from the source document.</td>
</tr>

<tr>
	<td>Insert the source document between spans. Source document contains a single section.</td>
	<td>All of the blocks (Paragraphs and Tables) in the source document’s section are inserted at the specific location. The section properties are omitted. For example, if the target document's page orientation is portrait and the source is landscape, the result document will have portrait orientation.</td>
</tr>

<tr>
	<td>Insert the source document between spans. Source document contains multiple sections.</td>
	<td>All blocks from the source document’s first section are inserted at the current editor position. All subsequent sections from the source document are inserted as separate sections. The section properties of the last section in the result document are the ones of the section from the target document where the CaretPosition is at the time the InsertDocument() method is invoked.</td>
</tr>

<tr>
	<td>Insert the source document at the beginning of the target document. Source document contains a single section.</td>
	<td>All blocks from the source document’s section are inserted at the specific location. The section properties are omitted. If the target document's page orientation is portrait and the source is landscape, the result document will have portrait orientation.</td>
</tr>

<tr>
	<td>Insert the source document at the beginning of the target document. Source document contains multiple sections.</td>
	<td>All blocks from the source document’s first section are inserted at the specific location. All subsequent sections from the source document are inserted as separate sections. The section properties of the last section in the result document are the ones of the target document’s section in which the source was inserted.</td>
</tr>

<tr>
	<td>Insert the source document at the end of the target document. Source document contains a single section.</td>
	<td>All blocks from the source document’s section are inserted at the specific location. The section properties are omitted. If the target document's page orientation is portrait and the source document's is landscape, the result document will have portrait orientation.</td>
</tr>

<tr>
	<td>Insert the source document at the end of the target document. Source document contains multiple sections.</td>
	<td>Same as the above.</td>
</tr>

<tr>
	<td>Insert the source document in a table cell and source document contains multiple sections.</td>
	<td>An InvalidOperationException is thrown.</td>
</tr>

<tr>
	<td>Source document is empty.</td>
	<td>An ArgumentException is thrown.</td>
</tr>

</table>


## See Also

 * [RadDocumentMerger]({%slug winforms/richtexteditor/features/merge-documents/raddocumentmerger%})
 * [Append Document]({%slug winforms/richtexteditor/features/merge-documents/append%})
 * [Using RadRichTextEditor's formatting API ]({%slug winforms/richtexteditor-/getting-started/formatting-api%})