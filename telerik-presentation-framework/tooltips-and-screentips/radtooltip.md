---
title: RadToolTip
page_title: RadToolTip | Telerik Presentation Framework
description: RadToolTip
slug: winforms/telerik-presentation-framework/radtooltip
tags: radtooltip
published: True
position: 2
previous_url: tpf-radtooltip
---

# RadToolTip

__RadToolTip__ is a class derived from the standard __ToolTip__ class in the __System.Windows.Forms__ namespace. The need of a derived class arisen from the fact that the ToolTips needs a Control in order to be shown. __RadToolTip__ encapsulates all that functionality inside of it, which makes it very flexible, requiring only the most basic parameters in order to be shown (only the text is required).
      

## Usage

__RadToolTip__ has a __Show__ method with 6 overloads. The base class also has a __Show__ method, you can tell them apart by the fact that __RadToolTip__ does not require an __IWin32Window__ instance. The first example shows how you can create the tooltip. Below it are all overloads coming from __RadToolTip__:

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=CreateToolTip}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=CreateToolTip}} 

````C#
RadToolTip toolTip = new RadToolTip();

````
````VB.NET
Dim toolTip As New RadToolTip()

````

{{endregion}} 

* Shows a RadToolTip with the specified text on the position of the mouse with the default duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowText}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowText}} 

````C#
toolTip.Show("Tooltip text");

````
````VB.NET
toolTip.Show("Tooltip text")

````

{{endregion}} 

* Shows a RadToolTip with the specified text on the position of the mouse and with the specified duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowTextDuration}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowTextDuration}} 

````C#
toolTip.Show("Tooltip text", 2000);

````
````VB.NET
toolTip.Show("Tooltip text", 2000)

````

{{endregion}} 

* Shows a RadToolTip with the specified text on the specified position relative to the screen coordinates and with the default duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowTextPoint}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowTextPoint}} 

````C#
toolTip.Show("Tooltip text", Cursor.Position);

````
````VB.NET
toolTip.Show("Tooltip text", Windows.Forms.Cursor.Position)

````

{{endregion}} 

* Shows a RadToolTip with the specified text on the specified X and Y coordinates relative to the screen coordinates and with the default duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowTextXY}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowTextXY}} 

````C#
toolTip.Show("Tooltip text", 500, 500);

````
````VB.NET
toolTip.Show("Tooltip text", 500, 500)

````

{{endregion}}

* Shows a RadToolTip with the specified text on the specified X and Y coordinates relative to the screen coordinates and with the specified duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowTextXYDuration}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowTextXYDuration}} 

````C#
toolTip.Show("Tooltip text", 500, 500, 2000);

````
````VB.NET
toolTip.Show("Tooltip text", 500, 500, 2000)

````

{{endregion}} 

* Shows a RadToolTip with the specified text on the specified position relative to the screen coordinates and with the specified duration.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ShowTextPointDuration}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ShowTextPointDuration}} 

````C#
toolTip.Show("Tooltip text", new Point(500,500), 2000);

````
````VB.NET
toolTip.Show("Tooltip text", New Point(500, 500), 2000)

````

{{endregion}} 

>important You can also hide an active ToolTip at any time using the __Hide__ method. This method accepts no arguments, the base Hide method accepts an __IWin32Window__ instance.
>

## Example: Show a RadToolTip on a RadForm.

Create a new RadForm and in the code behind subscribe to its __Click__ event. Replace the automatically generated event handler code with the following:

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=ClickHandler}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=ClickHandler}} 

````C#
void RadToolTipExample_Click(object sender, EventArgs e)
{
    RadToolTip newToolTip = new RadToolTip();
    newToolTip.Show("A tooltip which appears at mouse position", 2000);
}

````
````VB.NET
Private Sub RadToolTipExample_Click(sender As Object, e As EventArgs)
    Dim newToolTip As New RadToolTip()
    newToolTip.Show("A tooltip which appears at mouse position", 2000)
 End Sub

````

{{endregion}} 

Now, every time you click on the form you should see a ToolTip which will hide after 2 seconds.
        

# See Also
* [Screen Tips]({%slug winforms/telerik-presentation-framework/screen-tips%})

* [ToolTips]({%slug winforms/telerik-presentation-framework/tooltips%})

