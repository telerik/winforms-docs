---
title: Format Painter
page_title: Format Painter | RadRichTextEditor
description: The Format Painter feature in RadRichTextBox enables you to copy the formatting of a document element and apply it to other elements.
slug: winforms/richtexteditor/features/format-painter
tags: format, painter
published: True
position: 11
---

# Format Painter

The Format Painter feature in **RadRichTextEditor** enables you to copy the formatting of a document element and apply it to other elements. the functionality can be used programmatically through the methods of the [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}) class or you can use the UI.
      
* [UI and Commands](#ui-and-commands)
* [Using Format Painter Programmatically](#using-format-painter-programmatically)

## UI and Commands

The Format Painter functionality can be used through the button inside the Home tab of [Ribbon UI]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/ribbon-ui%}).

>caption Figure 1: Format Painter
![richtexteditorfeatures-format-painter 001](images/richtexteditorfeatures-format-painter001.png)


The following commands related to the copying of formatting are available in the **Commands** property of **RadRichTextEditor**:

* **CopyFormatting**: Copies the formatting of the current selection.
* **PasteFormatting**: Pastes the currently copied formatting on the current selection.
* **CancelFormatPainter**: Untoggles the UI button and stops pasting of the formatting by using the selection. Still, pasting is possible through the Ctrl+Shift+V shortcut and through the **PasteFormatting** command.
* **ChangeFormatPainterState**: The Execute method of this command accepts a parameter of type *ChangeFormatPainterStateCommandParameter*. Depending on the parameter passed to this command, it can perform one of the following actions:
	* **CopyForSinglePaste**: The format painter copies the current formatting and prepares to paste it once.
	* **CopyForMultiplePaste**: The format painter copies the current formatting and prepares to paste it in multiple places.
	* **Cancel**: The format painter cancels pasting.


>tip In order to learn more about commands and how to use them refer to the [Commands]({%slug winforms/richtexteditor-/features/commands%}) topic.
        
>There are also shortcuts implemented for easier usage:
>- *Ctrl+Shift+C* copies the formatting.
>- *Ctrl+Shift+V* pastes the formatting to the current selection.
>- *Esc* untoggles the UI button and stops pasting of the formatting by using the selection.


## Using Format Painter Programmatically

The format painting functionality can be programmatically used through the following methods of RadRichTextEditor.**RichTextBoxElement** object:
        
* **CopyFormatting**: Copies the formatting of the current selection.
* **PasteFormatting**: Pastes the currently copied formatting on the current selection.

Note, that these methods work with the current position and selection in the document.
        
#### Copying and Pasting Formatting

{{source=..\SamplesCS\RichTextEditor\Features\FormatPainter.cs region=FormatPainter}} 
{{source=..\SamplesVB\RichTextEditor\Features\FormatPainter.vb region=FormatPainter}}
````C#
this.radRichTextEditor1.RichTextBoxElement.CopyFormatting();
            
DocumentPosition start = new DocumentPosition(this.radRichTextEditor1.Document.CaretPosition);
DocumentPosition end = new DocumentPosition(start);
            
start.MoveToFirstPositionInDocument();
end.MoveToEndOfDocumentElement(start.GetCurrentParagraphBox().AssociatedParagraph);
            
this.radRichTextEditor1.Document.Selection.SetSelectionStart(start);
this.radRichTextEditor1.Document.Selection.AddSelectionEnd(end);
            
this.radRichTextEditor1.RichTextBoxElement.PasteFormatting();

````
````VB.NET
Me.radRichTextEditor1.RichTextBoxElement.CopyFormatting()
Dim start As DocumentPosition = New DocumentPosition(Me.radRichTextEditor1.Document.CaretPosition)
Dim [end] As DocumentPosition = New DocumentPosition(start)
start.MoveToFirstPositionInDocument()
[end].MoveToEndOfDocumentElement(start.GetCurrentParagraphBox().AssociatedParagraph)
Me.radRichTextEditor1.Document.Selection.SetSelectionStart(start)
Me.radRichTextEditor1.Document.Selection.AddSelectionEnd([end])
Me.radRichTextEditor1.RichTextBoxElement.PasteFormatting()

```` 

{{endregion}}

The example uses the **DocumentPosition** and **DocumentSelection** APIs to create different positions and select content. More information about these APIs is available in the [Positioning]({%slug winforms/richtexteditor-/features/positioning%}) and [Selection]({%slug winforms/richtexteditor-/features/selection%}) topics. 

## See Also

 * [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%})
 * [Ribbon UI]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/ribbon-ui%})
 * [Styles]({%slug winforms/richtexteditor/features/styles%})
