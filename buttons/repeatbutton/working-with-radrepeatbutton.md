---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: RadRepeatButton provides press-and-hold functionality and it is an ideal UI element for allowing users to control an increasing or decreasing value, such as volume or brightness.
slug: winforms/buttons/repeatbutton/working-with-radrepeatbutton
tags: working,with,radrepeatbutton
published: True
position: 3
previous_url: buttons-repeatbutton-working-with-radrepeatbutton
---

# Getting Started

You can add __RadRepeatButton__ either at design time or at run time:

## Design Time

1. To add a __RadRepeatButton__ to your form, drag a __RadRepeatButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio you can change the __Text__ property.
3. Double click the __RadRepeatButton__ at design time in order to generate the __Click__ event handler.
4. Click `F5` to start the application.

## Run Time

To programmatically add a __RadRepeatButton__ to a form, create a new instance of a __RadRepeatButton__, and add it to the form __Controls__ collection.

#### Adding a RadButton at runtime 

{{source=..\SamplesCS\Buttons\RepeatButton.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=creatingbutton}} 

````C#
RadRepeatButton repeatButton = new RadRepeatButton();
repeatButton.Text = "Increase value";
this.Controls.Add(repeatButton);

````
````VB.NET
Dim repeatButton As New RadRepeatButton()
repeatButton.Text = "Increase value"
Me.Controls.Add(repeatButton)

````

{{endregion}} 

# Working with RadRepeatButton

In addition to the standard properties shared by all buttons, notice a new property named __Interval__. This property determines the time, in milliseconds, between button click events after the control begins repeating events. The default value is 33.

To begin the repeat process, use the __ButtonClick__ event instead of __Click__. To create an event handler for this event, change the filter in the Property Grid to __Events__ and find the entry for __ButtonClick__. Double-click in the empty value drop-down list for the property to have the designer create a method to handle __ButtonClick__.

The following code illustrates the use of a __RadRepeatButton__ to manipulate a __ProgressBar__ control. At each interval the __ProgressBar__ value will increment. You do not need to write any additional code to handle the repeating event. As long as the mouse button is pressed down on the __RepeatButton__ control, the code in the __ButtonClick__ event handler will run at each interval. 


{{source=..\SamplesCS\Buttons\RepeatButton.cs region=handlingClickEvent}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=handlingClickEvent}} 

````C#
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

````
````VB.NET
Private Sub radRepeatButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    If radProgressBar1.Value1 < radProgressBar1.Maximum Then
        System.Math.Max(System.Threading.Interlocked.Increment(radProgressBar1.Value1), radProgressBar1.Value1 - 1)
    Else
        radProgressBar1.Value1 = radProgressBar1.Minimum
    End If
End Sub

````

{{endregion}} 

![buttons-repeatbutton-overview 001](images/buttons-repeatbutton-overview001.gif)
