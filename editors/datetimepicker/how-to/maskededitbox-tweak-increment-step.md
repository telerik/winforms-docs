---
title: Tweak Increment Step
page_title: Tweak Increment Step
description: Tweak Increment Step
slug: editors-maskededitbox-how-to-tweak-increment-step
tags: tweak,increment,step
published: True
position: 2
---

# Tweak Increment Step



The rich API of RadDateTimePicker allows you to change
      the increment/decrement step for each date/time part of the datetime value.
      For example, you can allow the end-user to increment/decrement the minutes value only by 5
      and not by 1 as it is by default. The example below demonstrates how to do this:           
      

## Increasing increment/decrement step example

Let's give a brief overview of the approach. When the user clicks the up/down arrow buttons
        or presses the arrow keys, the ValueChanged event is fired. We need to handle this event for 
        several reasons. First, we need to understand where the value of the RadDateTimePicker
        is increased or decreased. To do so, we have initially set a variable equal to the initial value of 
        RadDateTimePicker which we compare to the changed value of RadDateTimePicker. Second, we use 
        ValueChanged event to additionally modify the changed value of RadDateTimePicker in the appropriate
        direction (up or down). Since we are changing a value in ValueChanged event, we need to set and reset
        a boolean flag, thus avoiding StackOverflowException. 
       
       

As a prerequisite for the example, RadDateTimePicker should of course show minutes and to demonstrate the 
       full power of the example, we also may want to show up/down arrow buttons instead of a dropdown button. To these
       customizations, we need to set the following code lines:
         

#### __[C#]__

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=prerequisite}}
	            this.radDateTimePicker1.CustomFormat = "hh:mm";
	            this.radDateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
	            this.radDateTimePicker1.ShowUpDown = true;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=prerequisite}}
	        Me.RadDateTimePicker1.CustomFormat = "hh:mm"
	        Me.RadDateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom
	        Me.RadDateTimePicker1.ShowUpDown = True
	{{endregion}}



Here is the approach divided into separate steps:

1. In Form Load event handler we subscribe to the ValueChanged event of RadDateTimePicker. We also 
  define a DateTime variable globally which holds the initial value of RadDateTimePicker:
    

#### __[C#]__

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=initialization}}
	        DateTime initialDateTime;
	
	        private void Form1_Load(object sender, EventArgs e)
	        {
	            initialDateTime = this.radDateTimePicker1.Value;
	
	            this.radDateTimePicker1.ValueChanged += new EventHandler(radDateTimePicker1_ValueChanged);
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=initialization}}
	    Private initialDateTime As Date
	
	    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
	        initialDateTime = Me.RadDateTimePicker1.Value
	
	        AddHandler RadDateTimePicker1.ValueChanged, AddressOf radDateTimePicker1_ValueChanged
	    End Sub
	{{endregion}}



1. Here comes the ValueChanged handler implementation. In this part we are
  first checking whether the new value of RadDateTimePicker is bigger than 
  the old one or not. Then, we are getting the MaskDateTimeProvider
  responsible for the navigation between the date/time parts - hours, minutes, etc.
  If the provider states that the currently selected time part is minutes,
  we, depending on the the direction in which we want to change the value,
  call the Up/Down method four times, so that we can have a step of 5 minutes
  as a result. Please note that we are setting and resetting the boolean flag
  suspendValueChanged so that we can safely call Up/Down methods:
  

#### __[C#]__

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=valueChanged}}
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
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=valueChanged}}
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
	{{endregion}}



The result is shown below. Just with a single key stroke of the up arrow key, we increase the value of the
minutes by 5:
![editors-maskededitbox-how-to-tweak-increment-step 001](images/editors-maskededitbox-how-to-tweak-increment-step001.png)![editors-maskededitbox-how-to-tweak-increment-step 002](images/editors-maskededitbox-how-to-tweak-increment-step002.png)
