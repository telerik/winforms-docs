---
title: Properties and Events
page_title: Working with RadColorBox | RadColorBox
description: Working with RadColorBox
slug: winforms/editors/colorbox/working-with-radcolorbox
tags: working,with,radcolorbox
published: True
position: 4
previous_url: editors-color-box-working-with, editors/colorbox/working-with-radcolorbox
---

## Properties

* __Value:__ this property gets or sets the value of the editor.
* __ReadOnly:__ When this property is true the control prevents direct text entry and allows the value to be changed only through the color dialog button. By default this property is *false*.
* __ColorDialog:__ This property gives access to the [RadColorDialog]({%slug winforms/forms-and-dialogs/colordialog%}) that opens when the color dialog button is pressed.
* __ColorBoxElement:__ Grants access to the RadColorBoxElement.

## Events

* __DialogClosed:__ Fires after the color dialog is closed.

* __ValueChanged:__ Fires after the editor value is changed.

* __ValueChanging__: This event fires before the value is changed and allows you to prevent the change. The event passes a __ValueChangingEventArgs__ parameter that includes the __OldValue__, __NewValue__ and __Cancel__ properties. Set __Cancel__ to true to prevent the change. The example below cancels the value changing if the new value is not a named color:

#### Example 1: Cancel the value changing. 

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

# See Also

* [Design Time]({%slug winforms/editors/design-time%})
* [Getting Started]({%slug winforms/editors/colorbox/getting-started%})
* [Structure]({%slug winforms/editors/structure%})
 
