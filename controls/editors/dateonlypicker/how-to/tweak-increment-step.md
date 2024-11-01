---
title: Tweak Increment Step
page_title: Tweak Increment Step - RadDateOnlyPicker
description: This article shows how you can change th increment step of the up/down buttons. 
slug: editors-dateonlypicker-how-to-tweak-increment-step
tags: tweak,increment,step, netcore
published: True
position: 2
---

# Tweak Increment Step
 
The rich API of __RadDateOnlyPicker__ allows you to change the increment/decrement step for each date part of the __DateOnly__ value. For example, you can allow the end-user to increment/decrement the day value only by 5 and not by 1 as it is by default. The example below demonstrates how to do this:    

## Increasing increment/decrement step example

When the user clicks the up/down arrow buttons or presses the arrow keys, the __ValueChanged__ event is fired. We need to handle this event for several reasons. First, we need to understand if the value of the __RadDateOnlyPicker__ is increased or decreased.  Second, we use __ValueChanged__ event to additionally modify the changed value of RadDateOnlyPicker in the appropriate direction (up or down). Since we are changing a value in __ValueChanged__ event, we need to set and reset a boolean flag, this is necessary because setting the value in the code will trigger the event as well.  

As a prerequisite for the example, __RadDateOnlyPicker__ should show up/down arrow buttons instead of a dropdown button. To these customizations, we need to add the following code: 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=prerequisite}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=prerequisite}} 

````C#
this.radDateOnlyPicker1.ShowUpDown = true;

````
````VB.NET
Me.RadDateOnlyPicker1.ShowUpDown = True

````

{{endregion}} 
 
Here is the approach divided into separate steps:

1\. In the form's `Load` event handler subscribe to the __ValueChanged__ event of RadDateOnlyPicker. Define a DateOnly variable globally which holds the initial value: 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=initialization}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=initialization}} 

````C#
DateOnly initialDateOnly;
private void Form1_Load(object sender, EventArgs e)
{
    initialDateOnly = this.radDateOnlyPicker1.Value;
    this.radDateOnlyPicker1.ValueChanged += new EventHandler(radDateOnlyPicker1_ValueChanged);
}

````
````VB.NET
Private initialDateOnly As DateOnly
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
    initialDateOnly = Me.RadDateOnlyPicker1.Value
    AddHandler RadDateOnlyPicker1.ValueChanged, AddressOf radDateOnlyPicker1_ValueChanged
End Sub

````

{{endregion}} 
 
2\. Here comes the ValueChanged handler implementation. In this part we are first checking whether the new value of RadDateOnlyPicker is bigger than the old one or not. Then, we are getting the MaskDateOnlyProvider responsible for the navigation between the date/time parts - hours, months, and years. If the provider states that the currently selected date part is day, we, depending on the the direction in which we want to change the value, call the __Up/Down__ method four times, so that we can have a step of 5 days as a result. Please note that we are setting and resetting the boolean flag __suspendValueChanged__ so that we can safely call __Up/Down__ methods: 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=valueChanged}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=valueChanged}} 

````C#
bool suspendValueChanged = false;
private void RadDateOnlyPicker1_ValueChanged1(object? sender, EventArgs e)
{
    DateOnly dt = this.radDateOnlyPicker1.Value;
    var daysDifference = dt.DayNumber - initialDateOnly.DayNumber;
    if (!suspendValueChanged)
    {
        MaskDateOnlyProvider provider = (this.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Provider as MaskDateOnlyProvider);
        if (provider.List[provider.SelectedItemIndex].type  == PartTypes.Day)
        {
            suspendValueChanged = true;
            if (daysDifference < 0)
            {
                for (int i = 0; i < 4; ++i)
                {
                    this.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Down();
                }
            }
            if (daysDifference > 0)
            {
                for (int i = 0; i < 4; ++i)
                {
                    this.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Up();
                }
            }
            initialDateOnly = this.radDateOnlyPicker1.Value;
            suspendValueChanged = false;
        }
    }
}

````
````VB.NET

Private suspendValueChanged As Boolean = False

Private Sub RadDateOnlyPicker1_ValueChanged1(ByVal sender As Object?, ByVal e As EventArgs)
	Dim dt As DateOnly = Me.radDateOnlyPicker1.Value
	Dim daysDifference = dt.DayNumber - initialDateOnly.DayNumber

	If Not suspendValueChanged Then
		Dim provider As MaskDateOnlyProvider = (TryCast(Me.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Provider, MaskDateOnlyProvider))

		If provider.List(provider.SelectedItemIndex).type = PartTypes.Day Then
			suspendValueChanged = True

			If daysDifference < 0 Then

				For i As Integer = 0 To 4 - 1
					Me.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Down()
				Next
			End If

			If daysDifference > 0 Then

				For i As Integer = 0 To 4 - 1
					Me.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Up()
				Next
			End If

			initialDateOnly = Me.radDateOnlyPicker1.Value
			suspendValueChanged = False
		End If
	End If
End Sub


````

{{endregion}} 
 
The result is shown below. Just with a single click of the up arrow key, we increase the value of the minutes by 5:

![WinForms RadDateOnlyPicker Tweak Increment Step](images/editors-maskededitbox-how-to-tweak-increment-step001.gif)

## See Also

[Design Time]({%slug editors-dateonlypicker-design-time%})
[MaskDateOnlyProvider]({%slug editors-features-maskdateonlyprovider%})
[Properties]({%slug editors-dateonlypicker-properties%})
[Structure]({%slug editors-dateonlypicker-structure%})
