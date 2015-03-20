---
title: RadToolTip
page_title: RadToolTip
description: RadToolTip
slug: tpf-radtooltip
tags: radtooltip
published: True
position: 15
---

# RadToolTip



__RadToolTip__ is a class derived from the standard __ToolTip__ class in the __System.Windows.Forms__ namespace. The need of a derived class arisen from the fact that the ToolTips needs a Control in order to be shown. __RadToolTip__ encapsulates all that functionality inside of it, which makes it very flexible, requiring only the most basic parameters in order to be shown, even only the text is enough.
      

## Usage

__RadToolTip__ has a __Show__ method with 6 overloads. The base class also has a __Show__ method, you can tell them apart by the fact that __RadToolTip__ does not require an __IWin32Window__ instance. Below are all overloads coming from __RadToolTip__:
        

#### __[C#] __

{{region CreateToolTip}}
	            RadToolTip toolTip = new RadToolTip();
	{{endregion}}



#### __[VB] __

{{region CreateToolTip}}
	        Dim toolTip As New RadToolTip()
	{{endregion}}



* Shows a RadToolTip with the specified text on the position of the mouse with the default duration.
            

#### __[C#] __

{{region ShowText}}
	            toolTip.Show("Tooltip text");
	{{endregion}}



#### __[VB] __

{{region ShowText}}
	        toolTip.Show("Tooltip text")
	{{endregion}}



* Shows a RadToolTip with the specified text on the position of the mouse and with the specified duration.
            

#### __[C#] __

{{region ShowTextDuration}}
	            toolTip.Show("Tooltip text", 2000);
	{{endregion}}



#### __[VB] __

{{region ShowTextDuration}}
	        toolTip.Show("Tooltip text", 2000)
	{{endregion}}



* Shows a RadToolTip with the specified text on the specified position relative to the screen coordinates and with the default duration.
            

#### __[C#] __

{{region ShowTextPoint}}
	            toolTip.Show("Tooltip text", Cursor.Position);
	{{endregion}}



#### __[VB] __

{{region ShowTextPoint}}
	        toolTip.Show("Tooltip text", Windows.Forms.Cursor.Position)
	{{endregion}}



* Shows a RadToolTip with the specified text on the specified X and Y coordinates relative to the screen coordinates and with the default duration.
            

#### __[C#] __

{{region ShowTextXY}}
	            toolTip.Show("Tooltip text", 500, 500);
	{{endregion}}



#### __[VB] __

{{region ShowTextXY}}
	        toolTip.Show("Tooltip text", 500, 500)
	{{endregion}}



* Shows a RadToolTip with the specified text on the specified X and Y coordinates relative to the screen coordinates and with the specified duration.
            

#### __[C#] __

{{region ShowTextXYDuration}}
	            toolTip.Show("Tooltip text", 500, 500, 2000);
	{{endregion}}



#### __[VB] __

{{region ShowTextXYDuration}}
	        toolTip.Show("Tooltip text", 500, 500, 2000)
	{{endregion}}



* Shows a RadToolTip with the specified text on the specified position relative to the screen coordinates and with the specified duration.
            

#### __[C#] __

{{region ShowTextPointDuration}}
	            toolTip.Show("Tooltip text", new Point(500,500), 2000);
	{{endregion}}



#### __[VB] __

{{region ShowTextPointDuration}}
	        toolTip.Show("Tooltip text", New Point(500, 500), 2000)
	{{endregion}}



You can also hide an active ToolTip at any time using the __Hide__ method. This method accepts no arguments, the base Hide method accepts an __IWin32Window__ instance.
        

## Example

Below you will see how to show a RadToolTip on a RadForm.
        

Create a new RadForm and in the code behind subscribe to its Click event. Replace the automatically generated event handler code with the following:
        

#### __[C#] __

{{region ClickHandler}}
	        void RadToolTipExample_Click(object sender, EventArgs e)
	        {
	            RadToolTip newToolTip = new RadToolTip();
	            newToolTip.Show("A tooltip which appears at mouse position", 2000);
	        }
	{{endregion}}



#### __[VB] __

{{region ClickHandler}}
	Private Sub RadToolTipExample_Click(sender As Object, e As EventArgs)
	    Dim newToolTip As New RadToolTip()
	    newToolTip.Show("A tooltip which appears at mouse position", 2000)
	 End Sub 
	{{endregion}}



Now, every time you click on the form you should see a ToolTip which will hide after 2 seconds.
        
