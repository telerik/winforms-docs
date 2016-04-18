---
title: Tooltips
page_title: Tooltips | UI for WinForms Documentation
description: RadCheckBox is designed to provide an interface element that can represent an On or Off state using a check mark.
slug: winforms/buttons/checkbox/tooltips
tags: checkbox, tooltips
published: True
position: 7
previous_url: buttons-checkbox-tooltips
---

# Tooltips

There are two ways to assign tooltips to __RadCheckBox__, namely setting the __ToolTipText__ property of the __ButtonElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadCheckBox__. It is necessary the __ShowItemToolTips__ property to be set to *true* which is the default value.

#### Setting the ToolTipText property

{{source=..\SamplesCS\Buttons\CheckBox.cs region=SetToolTipText}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=SetToolTipText}}

````C#
 this.radCheckBox1.ButtonElement.ToolTipText = "CheckBox tool tip";
````
````VB.NET
Me.radCheckBox1.ButtonElement.ToolTipText = "CheckBox tool tip"
````

{{endregion}} 

![buttons-checkbox-tooltips 001](images/buttons-checkbox-tooltips001.gif)

#### Setting tool tips in the ToolTipTextNeeded event

{{source=..\SamplesCS\Buttons\CheckBox.cs region=ToolTipTextNeeded}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=ToolTipTextNeeded}}

````C#
private void radCheckBox1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    e.ToolTipText = "I am a checkbox";
}

````
````VB.NET
Private Sub radCheckBox1_ToolTipTextNeeded(sender As Object, e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    e.ToolTipText = "I am a checkbox"
End Sub

````

{{endregion}} 

![buttons-checkbox-tooltips 002](images/buttons-checkbox-tooltips002.gif)

>note The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set in  the __ToolTipText__ property.

        

        
