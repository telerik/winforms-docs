---
title: Working with RadColorBox
page_title: Working with RadColorBox | UI for WinForms Documentation
description: Working with RadColorBox
slug: winforms/editors/colorbox/working-with-radcolorbox
tags: working,with,radcolorbox
published: True
position: 2
previous_url: editors-color-box-working-with
---

# Working with RadColorBox
 
The main purpose of the control is to allow the user to select a color from a color dialog with preset colors or to type the color directly into the text field. The control then displays the color name if it is a named color or the RGB values of the selected color as well as a small rectangle filled with the selected color.  The RadColorBox supports input in the following formats:
    

* RGB – (203, 252, 12)

* Name – Red

* Hex - #CBFC0C

## Properties

__Value__: this property gets or sets the value of the editor.
        

__ReadOnly__: When this property is true the control prevents direct text entry and allows the value to be changed only through the color dialog button. By default this property is false.
		

__ColorDialog__: This property gives access to the __RadColorDialog__ that opens when the color dialog button is pressed.
		

## Events

__ValueChanging__: This event fires before the value is changed and allows you to prevent the change. The event passes a __ValueChangingEventArgs__ parameter that includes the __OldValue__, __NewValue__ and __Cancel__ properties. Set __Cancel__ to true to prevent the change. The example below cancels the value changing if the new value is not a named color:

#### Cancel changing the value 

{{source=..\SamplesCS\Editors\ColorBox1.cs region=colorBoxValueChanging}} 
{{source=..\SamplesVB\Editors\ColorBox1.vb region=colorBoxValueChanging}} 

````C#
private void radColorBox1_ValueChanging(object sender, Telerik.WinControls.UI.ValueChangingEventArgs e)
{
    e.Cancel = !((Color)e.NewValue).IsNamedColor;
}

````
````VB.NET
Private Sub RadColorBox1_ValueChanging(sender As Object, e As Telerik.WinControls.UI.ValueChangingEventArgs)
    e.Cancel = Not DirectCast(e.NewValue, System.Drawing.Color).IsNamedColor
End Sub

````

{{endregion}} 



