---
title: Tooltips
page_title: Tooltips | UI for WinForms Documentation
description: RadRepeatButton provides press-and-hold functionality and it is an ideal UI element for allowing users to control an increasing or decreasing value, such as volume or brightness. 
slug: winforms/buttons/repeatbutton/tooltips
tags: repeatbutton
published: True
position: 6
previous_url: buttons-repeatbutton-tooltips
---

# Tooltips

There are two ways to assign tooltips to __RadRepeatButton__, namely setting the __ToolTipText__ property of the __RadRepeatButtonElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadRepeatButton__. It is necessary the __ShowItemToolTips__ property to be set to *true* which is the default value.

#### Setting the ToolTipText property

{{source=..\SamplesCS\Buttons\RepeatButton.cs region=SetToolTipText}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=SetToolTipText}}

````C#
this.radRepeatButton1.ButtonElement.ToolTipText = "sample tooltip";

````
````VB.NET
 
Me.radRepeatButton1.ButtonElement.ToolTipText = "sample tooltip"

````

{{endregion}} 


![buttons-repeatbutton-tooltips 001](images/buttons-repeatbutton-tooltips001.png)

#### Setting tool tips in the ToolTipTextNeeded event

{{source=..\SamplesCS\Buttons\RepeatButton.cs region=ToolTipTextNeeded}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=ToolTipTextNeeded}}

````C#
private void RadRepeatButton1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    e.ToolTipText = "Increase value";
}

````
````VB.NET
Private Sub RadRepeatButton1_ToolTipTextNeeded(sender As Object, e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    e.ToolTipText = "Increase value"
End Sub

````

{{endregion}} 

![buttons-repeatbutton-tooltips 002](images/buttons-repeatbutton-tooltips002.png)

>note The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set in the __ToolTipText__ property.


 
