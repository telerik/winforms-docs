---
title: Positioning
page_title: Positioning | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.
slug: winforms/richtexteditor-/features/positioning
tags: positioning
published: True
position: 9
previous_url: richtexteditor-features-positioning
---

# Positioning

The positioning feature in the __RadRichTextEditor__ is used to navigate through document's content and to get information about the document's elements at a specific position. The __RadDocument__ uses the positioning to track the movement of the caret and to control the selection.
      
The positioning is implemented via the __DocumentPosition__ class. This class can be used by the developer to programmatically control the positioning or the selection. __DocumentPosition__ offers methods, such as __MoveToNextWord()__, __MoveToPreviousWord()__, __MoveToCurrentLineStart/End()__ and so on, which will navigate to the given document element. In order to get information about the element at a given position you can use several methods such as __GetCurrentSpanBox()__, __GetCurrentParagraphBox()__, __GetCurrentSectionBox()__ and so on which will return the LayoutBox of an element. Another option is to use directly the methods returning the specific document element - **GetCurrentSpan()**, **GetCurrentParagraph()**, **GetCurrentTable()** etc.
      
__DocumentPosition__ also redefines equality and comparison operators for more convenience, when you should find whether the __DocumentPosition__ is before or after another position in the natural flow of the document. By default, __RadRichTextEditor__ moves __Document.CaretPosition__ using arrow keys or on mouse click.   __DocumentPosition__ can also be obtained by giving the coordinates of a point in the document using the method __DocumentPosition.SetPosition__.      

You can manage the caret position for a specific __RadDocument__ by either accessing its __CaretPosition__    property, which is of type __DocumentPosition__, or by creating a new instance of the __DocumentPosition__  class and associating it with the desired __RadDocument__.
      
>note When using the __CaretPosition__ property you are directly managing the caret position in the __RadDocument__. By using the __DocumentPosition__ class you can create instances of several positions inside the document without changing the current caret position.
>

## CaretPosition property

This property enables you to manage the position of the caret inside the document and to obtain information about its location and the elements it currently resides at. Here is an example of how to use the **CaretPosition** property to get the current word.

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

>note When instantiated in such a way, the position will be at the start of the document, so the result will be the first word in the text. The position of the instance won't be affected by the UI. To change it, you have to use the [API of the DocumentPosition class](https://docs.telerik.com/devtools/winforms/api/telerik.winforms.documents.documentposition).

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

### Tracking Positions

When you need to ensure that the position is kept between the same characters, no matter the modifications users can do on the document content, you can instantiate the **DocumentPosition** object using one of the constructors accepting a boolean value. This boolean value indicates whether the position should track the changes in the document and move accordingly so it can be located on the same position in the word.

**DocumentPosition** created with any of the constructors accepting the boolean *trackDocumentChangeEvents* parameter set to *true* moves automatically when the document is edited before the position (just like the caret position).

>note Positions created in such a way could be explicitly disposed to avoid preserving them too much in memory.

## Determine The Type of Element The Position Is At

The **DocumentPosition** class offers different properties allowing you to determine where the position is located. For example, you can check whether the position is at the start of the document or at its end. Similarly, you can obtain information whether the position is inside table. Here is a list of these properties:

* **IsPositionAtDocumentEnd**
* **IsPositionAtDocumentStart**
* **IsPositionAtParagraphEnd**
* **IsPositionAtParagraphStart**
* **IsPositionAtTableCellEnd**
* **IsPositionAtTableCellStart**
* **IsPositionAtTableRowStart**
* **IsPositionInsideTable**

There is also a **Location** property holding information about where in the layout the position is situated.

## Access Document Element from Caret Position

You can use the methods of the **DocumentPosition** class to get the document element at the specific position. The following list shows the methods which can be used.

* **GetCurrentInline()**
* **GetCurrentParagraph()**
* **GetCurrentSpan()**
* **GetCurrentTable()**
* **GetCurrentTableCell()**
* **GetCurrentTableRow()**
* **GetNextInline()**
* **GetNextSpan()**
* **GetPreviousInline()**

In addition to the above-mentioned methods, **DocumentPosition** exposes also **GetCurrent[document element]Box** methods returning objects of type **LayoutBox**, which can be used to get the relevant layout information about a document element. To get the element from the layout box, you can use the **AssociatedDocumentElement** property.

In the different implementations of the **LayoutBox** class (examples: **ParagraphLayoutBox**, **SectionLayoutBox**, etc.) there are also more specific properties that allow you to easily get the associated document element without casting it from the base **DocumentElement** class. For example, the **GetCurrentParagraphBox()** method returns an object of type **ParagraphLayoutBox** which has **AssociatedParagraph** property. And the **GetCurrentSectionBox()** returns **SectionLayoutBox** which has **AssociatedSection** property. This rule applies to all **LayoutBox** elements (also **TableLayoutBox**, **SpanLayoutBox**, etc.).

#### Getting the Paragraph on the caret position

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=Paragraph}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=Paragraph}} 


````C#
        
            DocumentPosition documentPosition = this.radRichTextEditor1.Document.CaretPosition;
            Paragraph paragraph = documentPosition.GetCurrentParagraph();

````
````VB.NET
        Dim documentPosition As DocumentPosition = Me.radRichTextEditor1.Document.CaretPosition()
        Dim paragraph As Paragraph = documentPosition.GetCurrentParagraph()

````

{{endregion}} 

#### Getting the Inline on the caret position

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=Inline}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=Inline}} 


````C#
              documentPosition = this.radRichTextEditor1.Document.CaretPosition;
            Inline inline = documentPosition.GetCurrentInline();      
   

````
````VB.NET
  
        documentPosition = Me.radRichTextEditor1.Document.CaretPosition
        Dim inline As Inline = documentPosition.GetCurrentInline()

````

{{endregion}} 

To get the word on the document position, you can use the **GetCurrentWord()** method.

#### Getting the word on the caret position


{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=Word}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=Word}} 


````C#
     
            documentPosition = this.radRichTextEditor1.Document.CaretPosition;
            string word = documentPosition.GetCurrentWord(); 
   

````
````VB.NET
          documentPosition = Me.radRichTextEditor1.Document.CaretPosition
        Dim word As String = documentPosition.GetCurrentWord()
        


````

{{endregion}} 

If the searched document element (paragraph, span, table, etc.) cannot be found on the caret position, the corresponding method will return null.

## Convert Between DocumentPosition And Screen Position

You can use the **ActiveEditorPresenter** of **RadRichTextEditor** to convert a screen position to **DocumentPosition** and vice versa. The **ActiveEditorPresenter** exposes a couple of methods which can be used.

* **GetDocumentPositionFromViewPoint()**: The method accepts an argument of type System.Windows.Point and returns an instance of type DocumentPosition.

#### Screen position to DocumentPosition conversion

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=DocumentPosition}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=DocumentPosition}} 


````C#
            Point position = GetMousePosition();
            DocumentPosition documentPosition = this.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetDocumentPositionFromViewPoint(position);   

````
````VB.NET
       
             Dim position As Point = GetMousePosition()
        Dim documentPosition As DocumentPosition = Me.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetDocumentPositionFromViewPoint(position)   


````

{{endregion}} 

* **GetViewPointFromDocumentPosition()**: The method accepts an argument of type DocumentPosition and returns an instance of type System.Windows.Point

#### DocumentPosition to screen position conversion

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=Point}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=Point}} 


````C#
            documentPosition = this.radRichTextEditor1.Document.CaretPosition;
            position = this.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetViewPointFromDocumentPosition(documentPosition);

````
````VB.NET
       
           documentPosition = Me.radRichTextEditor1.Document.CaretPosition
        position = Me.radRichTextEditor1.RichTextBoxElement.ActiveEditorPresenter.GetViewPointFromDocumentPosition(documentPosition)


````

{{endregion}} 

## Events

There are several events that you can use to track changes in the position.

* **LocationChanging**: Occurs before changing the coordinates of a position. For the caret position, this can be also achieved by typing, using the arrows keys or by clicking somewhere in the document.
LocationChanged: Occurs when changing the coordinates of a position. For the caret position, this can be also achieved by typing, using the arrows keys or by clicking somewhere in the document.

* **PositionChanging**: Occurs before the position is moved. For the caret position, this can be also achieved using the arrows keys or by clicking somewhere in the document.

* **PositionChanged**: Occurs when the position is moved. For the caret position, this can be also achieved using the arrows keys or by clicking somewhere in the document.

The following example shows how you can change the background of a Table object once the caret is positioned inside a Table.

#### Using DocumentPosition events

{{source=..\SamplesCS\RichTextEditor\Features\PositioningCode.cs region=Events}} 
{{source=..\SamplesVB\RichTextEditor\Features\PositioningCode.vb region=Events}} 


````C#
                   private void CaretPosition_LocationChanged(object sender, EventArgs e)
        {
            if (this.radRichTextEditor1.Document.CaretPosition.IsPositionInsideTable)
            {
                Table table = this.radRichTextEditor1.Document.CaretPosition.GetCurrentTable();
                table.Background = Colors.Red;
            }
        } 

````
````VB.NET
       
    Private Sub CaretPosition_LocationChanged(ByVal sender As Object, ByVal e As EventArgs) 
    If Me.radRichTextBox.Document.CaretPosition.IsPositionInsideTable Then 
        Dim table As Table = Me.radRichTextBox.Document.CaretPosition.GetCurrentTable() 
        table.Background = Colors.Red 
    End If 
End Sub    

````

{{endregion}} 

# See Also

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [History]({%slug winforms/richtexteditor-/features/history%})
