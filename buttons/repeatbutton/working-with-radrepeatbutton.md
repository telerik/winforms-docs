---
title: Working with RadRepeatButton
page_title: Working with RadRepeatButton
description: Working with RadRepeatButton
slug: buttons-repeatbutton-working-with-radrepeatbutton
tags: working,with,radrepeatbutton
published: True
position: 0
---

# Working with RadRepeatButton



## 

In addition to the standard properties shared by all buttons, notice a new 
        property named __Interval__. This property determines the time, 
        in milliseconds, between button click events after the control begins repeating events. 
        The default value is 33.

To begin the repeat process, use the __ButtonClick__ event instead of __Click__. To create an event handler for this event, change the filter in the Property Grid to __Events__ and find the entry for __ButtonClick__. Double-click in the empty value drop-down list for the property to have the designer create a method to handle __ButtonClick__.

The following code illustrates the use of a __RadRepeatButton__ to manipulate a __ProgressBar__ control. At each interval the __ProgressBar__ value will increment. You do not need to write any additional code to handle the repeating event. As long as the mouse button is pressed down on the __RepeatButton__ control, the code in the __ButtonClick__ event handler will run at each interval.

#### __[C#]__

{{region handlingClickEvent}}
	
	        void radRepeatButton1_Click(object sender, EventArgs e)
	        {
	            if (radProgressBar1.Value1 < radProgressBar1.Maximum)
	            {
	                radProgressBar1.Value1++;
	            }
	            else
	            {
	                radProgressBar1.Value1 = radProgressBar1.Minimum;
	            }
	        }
	
	{{endregion}}



#### __[VB.NET]__

{{region handlingClickEvent}}
	
	    Private Sub radRepeatButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
	        If radProgressBar1.Value1 < radProgressBar1.Maximum Then
	            System.Math.Max(System.Threading.Interlocked.Increment(radProgressBar1.Value1), radProgressBar1.Value1 - 1)
	        Else
	            radProgressBar1.Value1 = radProgressBar1.Minimum
	        End If
	    End Sub
	
	{{endregion}}



![buttons-repeatbutton-working-with-radrepeatbutton 001](images/buttons-repeatbutton-working-with-radrepeatbutton001.png)
