---
title: TextFragment
page_title: TextFragment
description: TextFragment
slug: pdfprocessing-model-textfragment
tags: textfragment
published: True
position: 2
---

# TextFragment



__TextFragment__ is content element that represents а single-line text object.
      

* [Inserting a TextFragment](#Inserting_a_TextFragment)

* [Modifying a TextFragment](#modifying-a-textfragment)

## Inserting a TextFragment

__TextFragment__ is a content element that can be added in the __Content__ collection of a __IContainerElement__ such as [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%}). There are several approaches that can be adopted.
        

__Example 1__ shows how you can initialize a TextFragment object and add it in a previously defined container.
        

#### __[C#] Example 1: Create TextFragment and add it to container.__

{{region radpdfprocessing-model-textfragment_0}}
	            TextFragment fragment = new TextFragment();
	            container.Content.Add(fragment);
	{{endregion}}



#### __[VB.NET] Example 1: Create TextFragment and add it to container.__

{{region radpdfprocessing-model-textfragment_0}}
	        Dim fragment As TextFragment = New TextFragment()
	        container.Content.Add(fragment)
	        '	#End Region
	
	        '	#Region "radpdfprocessing-model-textfragment_1"
	        Dim textFragment As TextFragment = container.Content.AddTextFragment()
	        Dim textFragmentWithText As TextFragment = container.Content.AddTextFragment("Text")
	        '	#End Region
	    End Sub
	End Class



__Example 2__ demonstrates how to use one of the factory methods of the __ContentElementCollection__ which create new text fragment and insert it into the respective container. Both methods return the actual TextFragment instance so you can modify it.
        

#### __[C#] Example 2: Add TextFragment to container__

{{region radpdfprocessing-model-textfragment_1}}
	            TextFragment textFragment = container.Content.AddTextFragment();
	            TextFragment textFragmentWithText = container.Content.AddTextFragment("Text");
	{{endregion}}



#### __[VB.NET] Example 2: Add TextFragment to container__

{{region radpdfprocessing-model-textfragment_1}}
	        Dim textFragment As TextFragment = container.Content.AddTextFragment()
	        Dim textFragmentWithText As TextFragment = container.Content.AddTextFragment("Text")
	        '	#End Region
	    End Sub
	End Class



>tip__TextFragment__ represents a single line of text. In order to make your text "flows" in a document you should make sure all fragments you add can fit in a line or you can use [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%}).
          

## Modifying a TextFragment

TextFragment exposes the following properties that can modify the look of the represented text:
        

* __CharacterSpacing__: The spacing between the characters in the text.
            

* __WordSpacing__: The spacing between the words in the text.
            

>Only space character (Unicode 0x32) is considered a word break in RadPdfProcessing's document model.
              

* __HorizontalScaling__: The horizontal scaling that is applied to the characters.
            

* __Font__: The font that is used to draw the text.
            

* __FontSize__: The font size.
            

* __RenderingMode__: Enumeration representing the way the text should be rendered. It can have on of the following values:
            

* __Fill__: Fill text.
                

* __Stroke__: Stroke text.
                

* __FillAndStroke__: Fill, then stroke text.
                

* __None__: Neither fill nor stroke text (invisible).
                

* __FillAndAddToClippingPath__: Fill text and add to path for clipping (see above).
                

* __StrokeAndAddToClippingPath__: Stroke text and add to path for clipping.

                

* __FillStrokeAndAddToClippingPath__: Fill, then stroke text and add to path for clipping
                

* __AddToClippingPath__: Add text to path for clipping.
                The default value for this property is __Fill__.
            

* __TextRise__: Specifies the distance, in unscaled text space units, to move the baseline up or down from its default location.
            

* __Fill__: The color that is used to fill the text. The default value is Black.
            

* __Stroke__: The color that is used to stroke text. The default value is Black.
            

* __Text__: Represents the text that is drawn.
            

* __Position__: The [Position]({%slug pdfprocessing-concepts-position%}) where the text element is drawn.
            

# See Also

 * [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})

 * [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%})

 * [Position]({%slug pdfprocessing-concepts-position%})
