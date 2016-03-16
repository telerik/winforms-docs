---
title: Positioning
page_title: Positioning | UI for WinForms Documentation
description: Positioning
slug: winforms/richtexteditor-/features/positioning
tags: positioning
published: True
position: 0
previous_url: richtexteditor-features-positioning
---

# Positioning

The positioning feature in the __RadRichTextEditor__ is used to navigate through document's content and to get information about  the document's elements at a specific position. The __RadDocument__ uses the positioning to track the movement of the caret and to control the selection.
      

The positioning is implemented via the __DocumentPosition__ class. This class can be used by the developer to programmatically control the positioning or the selection. __DocumentPosition__ offers methods, such as __MoveToNextWord()__, __MoveToPreviousWord()__, __MoveToCurrentLineStart/End()__ and so on, which will navigate to the given document element. In order to get information about the element at a given position you can use several methods such as __GetCurrentSpanBox()__, __GetCurrentParagraphBox()__, __GetCurrentSectionBox()__ and so on.
      

__DocumentPosition__ also redefines equality and comparison operators for more convenience, when you should find whether the  __DocumentPosition__ is before or after another position in the natural flow of the document. By default __RadRichTextEditor__ moves __Document.CaretPosition__ using arrow keys or on mouse click.   __DocumentPosition__ can also be obtained by giving the coordinates of a point in the document using the method __DocumentPosition.SetPosition__.
      

You can manage the caret position for a specific __RadDocument__ by either accessing its __CaretPosition__    property, which is of type __DocumentPosition__, or by creating a new instance of the __DocumentPosition__  class and associating it with the desired __RadDocument__.
      

>note When using the __CaretPosition__ property you are directly managing the caret position in the __RadDocument__. By using the __DocumentPosition__ class you can create instances of several positions inside the document without changing the current caret position.
>


## CaretPosition property

Here is an example of how to use the __CaretPosition__ property to get the current word.

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=caret}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=caret}} 

````C#
            
string currentSpanText = this.radRichTextEditor1.Document.CaretPosition.GetCurrentSpanBox().Text;

````
````VB.NET
Dim currentSpanText As String = Me.radRichTextEditor1.Document.CaretPosition.GetCurrentSpanBox().Text

````

{{endregion}} 


## DocumentPosition class

An alternative of using the __CaretPosition__ property is to create an instance of the __DocumentPosition__ class. Here is the same example from the previous chapter done with an instance of the __DocumentPosition__ class.

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=position}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=position}} 

````C#
        
Telerik.WinForms.Documents.DocumentPosition position = new Telerik.WinForms.Documents.DocumentPosition(this.radRichTextEditor1.Document);
string currentSpanText1 = position.GetCurrentSpanBox().Text;

````
````VB.NET
Dim position As New Telerik.WinForms.Documents.DocumentPosition(Me.radRichTextEditor1.Document)
Dim currentSpanText1 As String = position.GetCurrentSpanBox().Text

````

{{endregion}} 


# See Also

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [History]({%slug winforms/richtexteditor-/features/history%})
