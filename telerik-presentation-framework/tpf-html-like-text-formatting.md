---
title: HTML-like Text Formatting
page_title: HTML-like Text Formatting
description: HTML-like Text Formatting
slug: tpf-html-like-text-formatting
tags: html-like,text,formatting
published: True
position: 9
---

# HTML-like Text Formatting


<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>[Enhanced HTML-like Markup Support](http://tv.telerik.com/winforms/utility/enhanced-html-like-markup-support)

This video goes over the new text rendering tags provided with the Q3 2009 release. It also shows the RadMarkupEditor and gives an
              example of how to use it from within your own applications. (Runtime: 04:11)
            </td><td>

![tpf-html-like-text-formatting 001](images/tpf-html-like-text-formatting001.png)</td></tr></table>

## Introduction



Telerik UI for WinForms provide an advance text styling mechanism which can be applied to all Telerik controls for WinForms and their elements,
          because it enhances one of the smallest element in Telerik Presentation Framework -- the text primitive. The new rich text formatting mechanism uses
          plain HTML tags to display formatted text such as font style, font color, font size, etc.
        

Your text must start with the __<html>__ tag so that Html-like formatting is activated. The list of supported markup
          tags is given below:
        

## Supported Tags 


<table><th><tr><td>

Tag</td><td>

End Tag</td><td>

Description</td></tr></th><tr><td>

<b><font></b></td><td>

N/A</td><td>

Font Family. Please use the span tag since the font tag is not supported by RadMarkupEditor.</td></tr><tr><td>

<b><color></b></td><td>

N/A</td><td>

Text color. Please use the span tag since the color tag is not supported by RadMarkupEditor.</td></tr><tr><td>

<b><size></b></td><td>

N/A</td><td>

Font size. Please use the span tag since the size tag is not supported by RadMarkupEditor.</td></tr><tr><td>

<b><b>, <strong></b></td><td>

<b></b>, </strong></b></td><td>

Bold</td></tr><tr><td>

<b><i>, <em></b></td><td>

<b></i>, </em></b></td><td>

Italic</td></tr><tr><td>

<b><u></b></td><td>

<b></u></b></td><td>

Underlined text</td></tr><tr><td>

<b><br></b></td><td>

N/A</td><td>

Line break</td></tr><tr><td>

<b><p></b></td><td>

<b></p></b></td><td>

Paragraph</td></tr><tr><td>

<b><span></b></td><td>

<b></span></b></td><td>

Span. There is limited support of the style attribute and the CSS properties: font-family, font-size, color, and background-color. Refer
                to the example below. The <i>Span</i> tag is preferable to font, color, and size tags.
              </td></tr><tr><td>

<b><ol></b></td><td>

<b></ol></b></td><td>

Ordered list</td></tr><tr><td>

<b><ul></b></td><td>

<b></ul></b></td><td>

Unordered list</td></tr><tr><td>

<b><li></b></td><td>

<b></li></b></td><td>

List item. Defines a list item in an ordered or unordered list.</td></tr><tr><td>

<b><strike></b></td><td>

<b></strike></b></td><td>

Striked text.</td></tr><tr><td>

<b><a></b></td><td>

<b></a></b></td><td>

Link</td></tr><tr><td>

<b><img></b></td><td>

N/A</td><td>

Image</td></tr></table>





* __Bold, italic, and underline__In the example below the first word is italic and the second one is both bold and italic. The third and the forth words are underlined.

#### __[HTML] Bold, italic, underline__

{{region boldItalic}}
	  <html>
	    <b>some <i> text </i></b><u> some text </u>
	  </html>
	{{endregion}}



* __Paragraphs__

#### __[HTML] Paragraphs__

{{region paragraphs}}
	  <html>
	    <p>First paragraph</p>
	    <p>Second paragraph</p>
	  </html>
	{{endregion}}



* __Font color__Font color using color name e.g. *red* or using hex color e.g. *0000FF*.
            

#### __[HTML] Font color__

{{region fontColor}}
	  <html>
	    <span style="color:red">font color (color name) </span>
	    <span style="color:#0000FF">font color (hex color) </span>
	  </html>
	{{endregion}}



* __Font size__Absolute and relative font sizes. The valid relative values are *larger* and *smaller*. The
              absolute valid values are: xx-small, x-small, small, medium, large, x-large, and xx-large. The default value is *medium*.
              Font size can also be set in pt(s). The default font size in Windows Forms on most computers is *8.25pt* i.e. the font
              size returned by *SystemFonts.DefaultFont* property.
            

#### __[HTML] Font size__

{{region fontSize}}
	  <html>
	    <span style="font-size:large">font size(absolute) </span>
	    <span style="font-size:12">font size in pt(s) (absolute) </span>
	    <span style="font-size:smaller">font size(absolute) </span>
	  </html>
	{{endregion}}



* __Highlighted text__

#### __[HTML] Highlighted text__

{{region highText}}
	<html><span style="background-color:red">Highlighted Text</span></html>
	{{endregion}}



* __Font family__

#### __[HTML] Font family__

{{region fontFamily}}
	<html><span style="font-family:georgia">Font Family</span></html>
	{{endregion}}



* __Striked text__

#### __[HTML] Striked text__

{{region strikedText}}
	<html><strike> Some text </strike></html>
	{{endregion}}



* __Links__

#### __[HTML] Links__

{{region links}}
	<html><a href="<externalLink><linkText>www.telerik.com</linkText><linkUri>http://www.telerik.com</linkUri></externalLink>"> Telerik Corporation</a></html>
	{{endregion}}



* __Images__

#### __[HTML] Images (path)__

{{region imagepath}}
	<html><img src="ImagePath"></html>
	{{endregion}}

The image path can be a resource or file on the disk.To specify a resource, you can use the __res__ keyword:
            

#### __[HTML] Images (resource)__

{{region imageresource}}
	<img src="res:Telerik.Examples.WinControls.SomeImage.jpg">
	{{endregion}}

To specify a file on the disk you have to specify the disk path e.g. src="C:\some path\image.png" or use the ~ to specify the current directory
              e.g. src= "~\some path\image.gif".
            All image types supported by .net framework class *Image* are supported as well by the img tag.
            

## RadMarkupEditor specifics

You can also use some tags that are not present in Html but are currently supported by the TextPrimitive.
        

>please refer to the [RadMarkupDialog]({%slug tpf-radmarkupdialog%}) article
            about the list of supported tags; *font*, *color* and *size* tags are
            not supported by RadMarkupDialog, but can be rendered by TextPrimitive.
          

You can use <size=[+|-]value> to set font size use, and __<br>__ to create new line feed. To set bold, underline,
          and italic text use the corresponding opening and closing tags. Font family is set through __<font=Family>__. 
        

The following code snippet will produce the result shown in the screen-shot below:

#### __[C#]__

{{region labelFormatting}}
	            
	            this.radLabel1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text";
	
	{{endregion}}



#### __[VB.NET]__

{{region labelFormatting}}
	        Me.RadLabel1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text"
	{{endregion}}

![tpf-html-like-text-formatting 002](images/tpf-html-like-text-formatting002.png)

By using the HTML-like text formatting functionality, the __RadLabel__ can display several hyperlinks. Here is a sample
          code snippet:
        

#### __[C#]__

{{region Hyperlinks}}
	                                  
	            this.radLabel1.Text = "<html><size=12><a href=www.telerik.com>Telerik</a>" + Environment.NewLine +
	                                  "<a href=www.telerik.com/help/winforms>Documentation</a> " + Environment.NewLine +
	                                  "<a href=www.telerik.com/forums/winforms>Forum</a> ";
	
	{{endregion}}



#### __[VB.NET]__

{{region Hyperlinks}}
	        Me.RadLabel1.Text = "<html><size=12><a href=www.telerik.com>Telerik</a>" & Environment.NewLine & _
	        "<a href=www.telerik.com/help/winforms>Documentation</a> " & Environment.NewLine & _
	        "<a href=www.telerik.com/forums/winforms>Forum</a> "
	        '#End Region
	
	        AddHandler Me.RadLabel1.MouseDown, AddressOf RadLabel1_MouseDown
	    End Sub
	    '#Region "MouseDown"
	
	    Private Sub RadLabel1_MouseDown(sender As Object, e As MouseEventArgs)
	        Dim text As TextPrimitiveHtmlImpl = TryCast(Me.RadLabel1.LabelElement.LabelText.Impl, TextPrimitiveHtmlImpl)
	        Dim textBlock As FormattedTextBlock = text.TextBlock
	        Dim clickedLink As FormattedText = IsMouseOverBlock(textBlock, e)
	        If clickedLink IsNot Nothing Then
	            MessageBox.Show(clickedLink.Text + " pressed")
	        End If
	    End Sub
	
	    Private Function IsMouseOverBlock(textBlock As FormattedTextBlock, e As MouseEventArgs) As FormattedText
	        Dim elementAtPoint As Point = Me.RadLabel1.LabelElement.PointFromControl(e.Location)
	        Dim linesCount As Integer = textBlock.Lines.Count
	        For i As Integer = 0 To linesCount - 1
	            Dim textLine As TextLine = textBlock.Lines(i)
	            Dim textLineCount As Integer = textLine.List.Count
	            For j As Integer = 0 To textLineCount - 1
	                Dim formattedText As FormattedText = textLine.List(j)
	                If formattedText.DrawingRectangle.Contains(elementAtPoint) Then
	                    'found link under mouse
	                    Return formattedText
	                End If
	            Next
	        Next
	
	        Return Nothing
	    End Function
	
	    '#End Region
	
	End Class

![tpf-html-like-text-formatting 003](images/tpf-html-like-text-formatting003.png)

It is possible to detect which link among several ones is clicked within the __RadLabel__.
          For this purpose we will use the TextPrimitiveHtmlImpl.TextBlock.__Lines__ collection,
          which represents the available text lines in the __RadLabel__. Each __TextLine__ consists of
          __FormattedText__  parts. This __FormattedText__ containing the mouse is associated with the clicked hyperlink:
        

#### __[C#]__

{{region MouseDown}}
	        
	        private void RadLabel1_MouseDown(object sender, MouseEventArgs e)
	        {
	            TextPrimitiveHtmlImpl text = this.radLabel1.LabelElement.LabelText.Impl as TextPrimitiveHtmlImpl;
	            FormattedTextBlock textBlock = text.TextBlock;
	            FormattedText clickedLink = IsMouseOverBlock(textBlock, e);
	            if (clickedLink != null)
	            {
	                MessageBox.Show(clickedLink.Text + " pressed");
	            }
	        }
	        
	        private FormattedText IsMouseOverBlock(FormattedTextBlock textBlock, MouseEventArgs e)
	        {
	            Point elementAtPoint = this.radLabel1.LabelElement.PointFromControl(e.Location);
	            int linesCount = textBlock.Lines.Count;
	            for (int i = 0; i <= linesCount - 1; i++)
	            {
	                TextLine textLine = textBlock.Lines[i];
	                int textLineCount = textLine.List.Count;
	                for (int j = 0; j <= textLineCount - 1; j++)
	                {
	                    FormattedText formattedText = textLine.List[j];
	                    if (formattedText.DrawingRectangle.Contains(elementAtPoint))
	                    {
	                        //found link under mouse
	                        return formattedText;
	                    }
	                }
	            }
	            
	            return null;
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{region MouseDown}}
	
	    Private Sub RadLabel1_MouseDown(sender As Object, e As MouseEventArgs)
	        Dim text As TextPrimitiveHtmlImpl = TryCast(Me.RadLabel1.LabelElement.LabelText.Impl, TextPrimitiveHtmlImpl)
	        Dim textBlock As FormattedTextBlock = text.TextBlock
	        Dim clickedLink As FormattedText = IsMouseOverBlock(textBlock, e)
	        If clickedLink IsNot Nothing Then
	            MessageBox.Show(clickedLink.Text + " pressed")
	        End If
	    End Sub
	
	    Private Function IsMouseOverBlock(textBlock As FormattedTextBlock, e As MouseEventArgs) As FormattedText
	        Dim elementAtPoint As Point = Me.RadLabel1.LabelElement.PointFromControl(e.Location)
	        Dim linesCount As Integer = textBlock.Lines.Count
	        For i As Integer = 0 To linesCount - 1
	            Dim textLine As TextLine = textBlock.Lines(i)
	            Dim textLineCount As Integer = textLine.List.Count
	            For j As Integer = 0 To textLineCount - 1
	                Dim formattedText As FormattedText = textLine.List(j)
	                If formattedText.DrawingRectangle.Contains(elementAtPoint) Then
	                    'found link under mouse
	                    Return formattedText
	                End If
	            Next
	        Next
	
	        Return Nothing
	    End Function
	
	    '#End Region
	
	End Class


