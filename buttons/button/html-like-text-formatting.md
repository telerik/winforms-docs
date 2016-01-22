---
title: HTML-like Text Formatting
page_title: HTML-like Text Formatting | UI for WinForms Documentation
description: HTML-like Text Formatting
slug: winforms/buttons/button/html-like-text-formatting
tags: html-like,text,formatting
published: True
position: 1
previous_url: /help/winforms/buttons-button-html-like-text-formatting.html
---

# HTML-like Text Formatting



## Introduction



Telerik UI for WinForms provides an advanced text styling mechanism, which can be applied to all controls in the suite, because it enhances one of the smallest elements in the *Telerik Presentation Framework* - the [TextPrimitive]({%slug winforms/telerik-presentation-framework/primitives/textprimitive%}). The new rich text formatting mechanism uses plain HTML tags to display formatted text such as font style, font color, font size, and simple layouts. The Html-like formatting the text must start with an __<html>__ tag; use __<size=[+|-]value>__ to set font size and to create a new line feed. To make the font bold, underlined, and italic use the corresponding opening and closing tags. Font family is set through __&lt;font=Family&gt;.__ 
        

## Supported Tags 




|  __Tag__  |  __End Tag__  |  __Description__  |
| ------ | ------ | ------ |
| __&lt;font&gt;__ |N/A|Specifies the font family|
| __&lt;color&gt;__ |N/A|Specifies the text color.|
| __&lt;size&gt;__ |N/A|Specifies the font size.|
| __&lt;b&gt;__ | __&lt;/b&gt;__ |Defines bold text.|
| __&lt;i&gt;__ | __&lt;/i&gt;__ |Defines italic text.|
| __&lt;u&gt;__ | __&lt;/u&gt;__ |Defines underlined text.|
| __&lt;br&gt;__ |N/A|Single line break.|

## Example

The following code snippet will produce the result shown in the screen-shot below:

__[C#] Setting HTML-like text__
 

{{source=..\SamplesCS\Buttons\Button.cs region=htmltextrendering}} 
{{source=..\SamplesVB\Buttons\Button.vb region=htmltextrendering}} 

````C#
this.radButton1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text";

````
````VB.NET
Me.radButton1.Text = "<html><size=12>This is RadLabel <br><b><font=Arial>Arial, Bold</b><br><i><color= Red><font=Times New Roman>Times, Italic <u>Underline</u><br><size=9>Size = 9<br><color= 0, 0, 255>Sample Text"

````

{{endregion}} 


![buttons-button-html-like-text-formatting 001](images/buttons-button-html-like-text-formatting001.png)
