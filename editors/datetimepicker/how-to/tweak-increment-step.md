---
title: Tweak Increment Step
page_title: Tweak Increment Step | RadDateTimePicker
description: This article shows how you can change th increment step of the up/down buttons. 
slug: winforms/editors/datetimepicker/how-to/tweak-increment-step
tags: tweak,increment,step
published: True
position: 2
previous_url: editors-maskededitbox-how-to-tweak-increment-step
---

# Tweak Increment Step
 
The rich API of __RadDateTimePicker__ allows you to change the increment/decrement step for each date/time part of the datetime value. For example, you can allow the end-user to increment/decrement the minutes value only by 5 and not by 1 as it is by default. The example below demonstrates how to do this:    

## Increasing increment/decrement step example

When the user clicks the up/down arrow buttons or presses the arrow keys, the __ValueChanged__ event is fired. We need to handle this event for several reasons. First, we need to understand if the value of the __RadDateTimePicker__ is increased or decreased.  Second, we use __ValueChanged__ event to additionally modify the changed value of RadDateTimePicker in the appropriate direction (up or down). Since we are changing a value in __ValueChanged__ event, we need to set and reset a boolean flag, this is necessary because setting the value in the code will trigger the event as well.  

As a prerequisite for the example, __RadDateTimePicker__ should of course show minutes and to demonstrate the full power of the example, we also may want to show up/down arrow buttons instead of a dropdown button. To these customizations, we need to add the following code: 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=prerequisite}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=prerequisite}} 

````C#
this.radDateTimePicker1.CustomFormat = "hh:mm";
this.radDateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
this.radDateTimePicker1.ShowUpDown = true;

````
````VB.NET
Me.RadDateTimePicker1.CustomFormat = "hh:mm"
Me.RadDateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom
Me.RadDateTimePicker1.ShowUpDown = True

````

{{endregion}} 
 
Here is the approach divided into separate steps:

1\. In the form's `Load` event handler subscribe to the __ValueChanged__ event of RadDateTimePicker. Define a DateTime variable globally which holds the initial value: 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=initialization}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=initialization}} 

````C#
DateTime initialDateTime;
private void Form1_Load(object sender, EventArgs e)
{
    initialDateTime = this.radDateTimePicker1.Value;
    this.radDateTimePicker1.ValueChanged += new EventHandler(radDateTimePicker1_ValueChanged);
}

````
````VB.NET
Private initialDateTime As Date
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
    initialDateTime = Me.RadDateTimePicker1.Value
    AddHandler RadDateTimePicker1.ValueChanged, AddressOf radDateTimePicker1_ValueChanged
End Sub

````

{{endregion}} 
 
2\. Here comes the ValueChanged handler implementation. In this part we are first checking whether the new value of RadDateTimePicker is bigger than the old one or not. Then, we are getting the MaskDateTimeProvider responsible for the navigation between the date/time parts - hours, minutes, etc. If the provider states that the currently selected time part is minutes, we, depending on the the direction in which we want to change the value, call the __Up/Down__ method four times, so that we can have a step of 5 minutes as a result. Please note that we are setting and resetting the boolean flag __suspendValueChanged__ so that we can safely call __Up/Down__ methods: 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=valueChanged}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=valueChanged}} 

````C#
bool suspendValueChanged = false;
void radDateTimePicker1_ValueChanged(object sender, EventArgs e)
{
    DateTime dt = this.radDateTimePicker1.Value;
    TimeSpan sp = dt - initialDateTime;
    if (!suspendValueChanged)
    {
        MaskDateTimeProvider provider = (this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider);
        if (provider.List[provider.SelectedItemIndex].type == PartTypes.Minutes)
        {
            suspendValueChanged = true;
            if (sp.Ticks < 0)
            {
                for (int i = 0; i < 4; ++i)
                {
                    this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Down();
                }
            }
            if (sp.Ticks > 0)
            {
                for (int i = 0; i < 4; ++i)
                {
                    this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Up();
                }
            }
            initialDateTime = this.radDateTimePicker1.Value;
            suspendValueChanged = false;
        }
    }
}

````
````VB.NET
Private suspendValueChanged As Boolean = False
Private Sub radDateTimePicker1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim dt As Date = Me.RadDateTimePicker1.Value
    Dim sp As TimeSpan = dt.Subtract(initialDateTime)
    If Not suspendValueChanged Then
        Dim provider As MaskDateTimeProvider = (TryCast(Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider))
        If provider.List(provider.SelectedItemIndex).type = PartTypes.Minutes Then
            suspendValueChanged = True
            If sp.Ticks < 0 Then
                For i As Integer = 0 To 3
                    Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Down()
                Next i
            End If
            If sp.Ticks > 0 Then
                For i As Integer = 0 To 3
                    Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Up()
                Next i
            End If
            initialDateTime = Me.RadDateTimePicker1.Value
            suspendValueChanged = False
        End If
    End If
End Sub

````

{{endregion}} 
 
The result is shown below. Just with a single click of the up arrow key, we increase the value of the minutes by 5:

![editors-maskededitbox-how-to-tweak-increment-step 001](images/editors-maskededitbox-how-to-tweak-increment-step001.gif)

# See Also

[Design Time]({%slug winforms/editors/datetimepicker/designtime%})
[Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
[MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
[Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
[Structure]({%slug winforms/editors/datetimepicker%})
