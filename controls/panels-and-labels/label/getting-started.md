---
title: Getting Started
page_title: Getting Started - WinForms Label Control
description: WinForms Label is a themeable alternative to the standard Windows Forms label control.
slug: winforms/panels-and-labels/label/getting-started
tags: getting started,radlabel
published: True
position: 3
previous_url: panels-and-labels-label-programming-radlabel
---

# Getting Started with WinForms Label

You can add a **Radlabel** either at design time or at run-time:

## Design Time

1. To add a **Radlabel** to your form, drag a **Radlabel** from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio change the __Text__ property of **Radlabel**.
4. Click `F5` to start the application.

## Run Time

To programmatically add a **Radlabel** to a form, create a new instance of a **Radlabel**, and add it to the form`s __Controls__ collection. Change its **Text** and **ForeColor** properties.

#### Adding a Radlabel at Run-time 

{{source=..\SamplesCS\PanelsAndLabels\Label\LabelHtmlLikeTextFormatting.cs region=AddLabel}} 
{{source=..\SamplesVB\PanelsAndLabels\Label\LabelHtmlLikeTextFormatting.vb region=AddLabel}}
````C#
RadLabel label = new RadLabel();
this.Controls.Add(label);
label.ForeColor = Color.Green;
label.Text = "I am a RadLabel!";

````
````VB.NET
Dim label As New RadLabel()
Me.Controls.Add(label)
label.ForeColor = Color.Green
label.Text = "I am a RadLabel!"

```` 



{{endregion}}

## Programming RadLabel

**RadLabel** shares most of the properties of the standard Windows Form Label, including:

* The __BackColor__ property sets the background color of the control.

* The __BackgroundImage__ and __BackgroundImageLayout__ properties allow you to tile, center, stretch, or zoom an image across the control.

* The __ForeColor__ property sets the color of control`s text.

* The __Text__ property sets the text in the control.

The example below has the BackgroundImage property set to "BlueHills.jpg" (available in the \Samples Pictures directory of many Windows installations) and __BackgroundImageLayout__ set to __Stretch__. The ForeColor property is set to White.

>caption Figure 1: RadLabel BackgroundImage
![WinForms RadLabel BackgroundImage](images/panels-and-labels-label-programming-radlabel001.png)

# See Also

* [Design Time]({%slug winforms/panels-and-labels/label/design-time%})
* [Structure]({%slug winforms/panels-and-labels/label/structure%})
* [HTML-like Formatting]({%slug winforms/panels-and-labels/label/html-like-text-formatting%})
