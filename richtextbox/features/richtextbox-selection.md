---
title: Selection
page_title: Selection
description: Selection
slug: richtextbox-features-selection
tags: selection
published: True
position: 3
---

# Selection



## 

The RadRichTextBox supports not only selection via the UI, but also programmatic selection. This topic will explain you how to:

### UI Selection

The user is able to select the content of the RadRichTextBox in the same way as in MS Word. This is done by clicking on
                  	the desired position and dragging to the desired end of the selection. A multiple ranges selection is also allowed. 
                  	This one is done by holding the __Ctrl__ key while selecting the different ranges.
                  

### Programmatic Selection

The developer is allowed to work with the selection programmatically. This can be used when having a 
                  	__Find__ functionality in your RadRichtextBox and you want to select the found string.
                  	Examples that involve the programmatic selection can be found in the How To section.

The programmatic selection gets implemented via the __DocumentSelection__ class.
                  	The instance of the class gets associated with the __RadDocument__ of the 
                  	RadRichTextBox and allows you to specify selection starts and ends, selection ranges and other.
                  	You can manage the selection by either using the __Selection__ property of the 
                  	__RadDocument__ or by creating an instance of the __DocumentSelection__ class.
                  

Here is an example of how to select the current word.

>To learn more about the __DocumentPosition__ read the Positioning topic.

#### __[C#] Select the current word__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSelection.cs region=selection}}
	            DocumentPosition startPosition = this.radRichTextBox1.Document.CaretPosition; //new DocumentPosition( this.radRichTextBox.Document );
	            DocumentPosition endPosition = new DocumentPosition(startPosition);
	            startPosition.MoveToCurrentWordStart();
	            endPosition.MoveToCurrentWordEnd();
	            this.radRichTextBox1.Document.Selection.AddSelectionStart(startPosition);
	            this.radRichTextBox1.Document.Selection.AddSelectionEnd(endPosition);
	{{endregion}}



#### __[VB.NET] Select the current word__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSelection.vb region=selection}}
	        Dim startPosition As DocumentPosition = Me.RadRichTextBox1.Document.CaretPosition
	        'new DocumentPosition( this.radRichTextBox.Document );
	        Dim endPosition As New DocumentPosition(startPosition)
	        startPosition.MoveToCurrentWordStart()
	        endPosition.MoveToCurrentWordEnd()
	        Me.RadRichTextBox1.Document.Selection.AddSelectionStart(startPosition)
	        Me.RadRichTextBox1.Document.Selection.AddSelectionEnd(endPosition)
	{{endregion}}



### Multi-Range Selection

You can implement Multi-Range Selection by either calling multiple times the __AddSelectionStart()__ 
                  	and __AddSelectionEnd()__ methods or by working with the __Ranges__ collection.
                  

Here is an example of selecting each "RadRichTextBox" word in the text. This example uses the first approach.

#### __[C#] Multi selection__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSelection.cs region=MultiSelection}}
	            DocumentPosition position = new DocumentPosition( this.radRichTextBox1.Document );
	            do
	            {
	               //GetCurrentSpan().Text returns the word at the position
	               string word = position.GetCurrentSpanBox().Text;
	               if ( word.Contains( "RadRichTextBox" ))
	               {
	                   DocumentPosition wordEndPosition = new DocumentPosition( position );
	                   wordEndPosition.MoveToCurrentWordEnd();
	                   this.radRichTextBox1.Document.Selection.AddSelectionStart( position );
	                   this.radRichTextBox1.Document.Selection.AddSelectionEnd( wordEndPosition );
	               }
	            }
	            while (position.MoveToNextWordStart());
	{{endregion}}



#### __[VB.NET] Multi selection__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSelection.vb region=MultiSelection}}
	        Dim position As New DocumentPosition(Me.RadRichTextBox1.Document)
	        Do
	            'GetCurrentSpan().Text returns the word at the position
	            Dim word As String = position.GetCurrentSpanBox().Text
	            If word.Contains("RadRichTextBox") Then
	                Dim wordEndPosition As New DocumentPosition(position)
	                wordEndPosition.MoveToCurrentWordEnd()
	                Me.RadRichTextBox1.Document.Selection.AddSelectionStart(position)
	
	                Me.RadRichTextBox1.Document.Selection.AddSelectionEnd(wordEndPosition)
	            End If
	        Loop While position.MoveToNextWordStart()
	{{endregion}}


