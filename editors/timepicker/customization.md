---
title: Customization
page_title: Customization | UI for WinForms Documentation
description: Customization
slug: winforms/editors/timepicker/customization
tags: customization
published: True
position: 3
previous_url: editors-timepicker-customization
---

# Customization

Each of the control's elements can be accessed and customized. At the [Structure, properties and events article]({%slug winforms/editors/timepicker/structure,-properties-and-events%}) , you can find what is the control's structure. Once you access the desired elements, you can tweak its properties in order to modify it. In this tutorial, we will take a look at code snippets, demonstrating how to access and modify different parts of the control:
      

## Customize text box

For example the editable area of the control consist of RadTextBoxItem hosted in RadMaskedEditBoxElement. So in order to customize the text box BackColor you need to set both the BackColor of the RadTextBoxItem and of the RadMaskedEditBoxElement’s FillPrimitive: 

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeTextBox}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeTextBox}} 

````C#
radTimePicker1.TimePickerElement.MaskedEditBox.Fill.BackColor = Color.Red;
radTimePicker1.TimePickerElement.MaskedEditBox.TextBoxItem.BackColor = Color.Red;

````
````VB.NET
RadTimePicker1.TimePickerElement.MaskedEditBox.Fill.BackColor = Color.Red
RadTimePicker1.TimePickerElement.MaskedEditBox.TextBoxItem.BackColor = Color.Red

````

{{endregion}} 
 

![editors-timepicker-customization 001](images/editors-timepicker-customization001.png)

## Customize dropdown button

Here is how you can set some left and right padding of the drop down button: 

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeDropDownButton}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeDropDownButton}} 

````C#
radTimePicker1.TimePickerElement.DropDownButton.Padding = new Padding(10,0,10,0);

````
````VB.NET
RadTimePicker1.TimePickerElement.DropDownButton.Padding = New Windows.Forms.Padding(10, 0, 10, 0)

````

{{endregion}} 
 

![editors-timepicker-customization 002](images/editors-timepicker-customization002.png)

## Customize up/down buttons

Here is how to access and set the border color of the arrow buttons: 

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeArrowButtons}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeArrowButtons}} 

````C#
radTimePicker1.TimePickerElement.UpButton.Border.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.UpButton.Border.ForeColor = Color.Blue;
radTimePicker1.TimePickerElement.DownButton.Border.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.DownButton.Border.ForeColor = Color.Blue;

````
````VB.NET
RadTimePicker1.TimePickerElement.UpButton.Border.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.UpButton.Border.ForeColor = Color.Blue
RadTimePicker1.TimePickerElement.DownButton.Border.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.DownButton.Border.ForeColor = Color.Blue

````

{{endregion}} 


![editors-timepicker-customization 003](images/editors-timepicker-customization003.png)

## Customize clock element appearance

Here is how to change the clock header background and font and also how to hide the seconds arrow from the clock:
         

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeClock}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeClock}} 

````C#
//customize header
radTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.Font = new System.Drawing.Font("Arial", 22);
radTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.BackColor = Color.YellowGreen;
//hide seconds arrow
radTimePicker1.TimePickerElement.PopupContentElement.ClockElement.SecondsArrow.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;

````
````VB.NET
'customize header
RadTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.Font = New System.Drawing.Font("Arial", 22)
RadTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.PopupContentElement.ClockHeaderElement.BackColor = Color.YellowGreen
'hide seconds arrow
RadTimePicker1.TimePickerElement.PopupContentElement.ClockElement.SecondsArrow.Visibility = Telerik.WinControls.ElementVisibility.Collapsed

````

{{endregion}} 

![editors-timepicker-customization 004](images/editors-timepicker-customization004.png)

## Customize hours and minutes headers

This code snippet demonstrates how to change the hours header back color and the minutes header border appearance:
        
{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeHoursAndMinutesHeaders}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeHoursAndMinutesHeaders}} 

````C#
//hours header
radTimePicker1.TimePickerElement.PopupContentElement.HoursTable.TableHeader.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.PopupContentElement.HoursTable.TableHeader.BackColor = Color.Yellow;
//minutes header
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.DrawBorder = true;
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderWidth = 3;
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderColor = Color.Red;
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid;

````
````VB.NET
'hours header
RadTimePicker1.TimePickerElement.PopupContentElement.HoursTable.TableHeader.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.PopupContentElement.HoursTable.TableHeader.BackColor = Color.Yellow
'minutes header
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.DrawBorder = True
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderWidth = 3
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderColor = Color.Red
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.TableHeader.HeaderElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid

````

{{endregion}} 

![editors-timepicker-customization 005](images/editors-timepicker-customization005.png)

## Customize hours and minutes cells appearance

The cells in both minutes and hours tables are placed in a GridLayout. To customize the cells, you can use the TimeCellFormatting event of the control:
        
{{source=..\SamplesCS\Editors\TimePicker1.cs region=CellFormatting}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CellFormatting}} 

````C#
void radTimePicker1_TimeCellFormatting(object sender, Telerik.WinControls.UI.TimeCellFormattingEventArgs e)
{
    e.Element.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
    e.Element.Margin = new Padding(2);
    if (e.IsMinute)
    {
        //set minute cells specific properties
        e.Element.BackColor = Color.Lime;
    }
    else
    {
        //set hours cells specific properties
        e.Element.BackColor = Color.Green;
    }
}

````
````VB.NET
Private Sub radTimePicker1_TimeCellFormatting(sender As Object, e As Telerik.WinControls.UI.TimeCellFormattingEventArgs)
    e.Element.GradientStyle = Telerik.WinControls.GradientStyles.Solid
    e.Element.Margin = New Windows.Forms.Padding(2)
    If e.IsMinute Then
        'set minute cells specific properties
        e.Element.BackColor = Color.Lime
    Else
        'set hours cells specific properties
        e.Element.BackColor = Color.Green
    End If
End Sub

````

{{endregion}} 

![editors-timepicker-customization 006](images/editors-timepicker-customization006.png)

## Customize hours and minutes tables 

This is how you can set the hours and minutes tables background color:
         

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeHoursAndMinutesTables}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeHoursAndMinutesTables}} 

````C#
//hours table
radTimePicker1.TimePickerElement.PopupContentElement.HoursTable.DrawFill = true;
radTimePicker1.TimePickerElement.PopupContentElement.HoursTable.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.PopupContentElement.HoursTable.BackColor = Color.Red;
//minutes table
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.DrawFill = true;
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
radTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.BackColor = Color.Blue;

````
````VB.NET
'hours table
RadTimePicker1.TimePickerElement.PopupContentElement.HoursTable.DrawFill = True
RadTimePicker1.TimePickerElement.PopupContentElement.HoursTable.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.PopupContentElement.HoursTable.BackColor = Color.Red
'minutes table
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.DrawFill = True
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.GradientStyle = Telerik.WinControls.GradientStyles.Solid
RadTimePicker1.TimePickerElement.PopupContentElement.MinutesTable.BackColor = Color.Blue

````

{{endregion}} 

 
![editors-timepicker-customization 007](images/editors-timepicker-customization007.png)

## Customize button panel

Here is how to change the BackColor of the FooterPanel:
         

{{source=..\SamplesCS\Editors\TimePicker1.cs region=CustomizeFooterPanel}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=CustomizeFooterPanel}} 

````C#
radTimePicker1.TimePickerElement.PopupContentElement.FooterPanel.BackColor = Color.BlanchedAlmond;

````
````VB.NET
RadTimePicker1.TimePickerElement.PopupContentElement.FooterPanel.BackColor = Color.BlanchedAlmond

````

{{endregion}} 

![editors-timepicker-customization 008](images/editors-timepicker-customization008.png)
