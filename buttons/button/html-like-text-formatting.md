---
title: HTML-like Text Formatting
page_title: HTML-like Text Formatting
description: HTML-like Text Formatting
slug: buttons-button-html-like-text-formatting
tags: html-like,text,formatting
published: True
position: 0
---

# HTML-like Text Formatting



## Introduction



Telerik UI for WinForms provides an advanced text styling mechanism, which can be applied to all controls in the suite, because it enhances one
          of the smallest elements in the *Telerik Presentation Framework *- the
          [TextPrimitive]({%slug tpf-primitives-textprimitive%}). The new rich text formatting mechanism uses plain HTML tags to display
          formatted text such as font style, font color, font size, and simple layouts. The Html-like formatting the text must start with an
          __<html>__ tag; use __<size=[+|-]value>__ to set font size and
          __<br>__ to create a new line feed. To make the font bold, underlined, and italic use the corresponding opening
          and closing tags. Font family is set through __<font=Family>.__ 
        

## Supported Tags 


<table><th><tr><td>

<b> Tag </b></td><td>

<b> End Tag </b></td><td>

<b>Description</b></td></tr></th><tr><td>

<b><font></b></td><td>

N/A</td><td>

Specifies the font family</td></tr><tr><td>

<b><color></b></td><td>

N/A</td><td>

Specifies the text color.</td></tr><tr><td>

<b><size></b></td><td>

N/A</td><td>

Specifies the font size.</td></tr><tr><td>

<b>
                  <b>
                </b></td><td>

<b></b></b></td><td>

Defines bold text.</td></tr><tr><td>

<b><i></b></td><td>

<b></i></b></td><td>

Defines italic text.</td></tr><tr><td>

<b><u></b></td><td>

<b></u></b></td><td>

Defines underlined text.</td></tr><tr><td>

<b><br></b></td><td>

N/A</td><td>

Single line break.</td></tr></table>

## Example

The following code snippet will produce the result shown in the screen-shot below:

#### __[C#] Setting HTML-like text__

{{region htmltextrendering}}
	
	            this.radButton1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text";
	
	{{endregion}}



#### __[VB.NET] Setting HTML-like text__

{{region htmltextrendering}}
	
	        Me.radButton1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text"
	
	{{endregion}}

![buttons-button-html-like-text-formatting 001](images/buttons-button-html-like-text-formatting001.png)
