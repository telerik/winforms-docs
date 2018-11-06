---
title: Holidays
page_title: Holidays | RadScheduler
description: Telerik RadScheduler supports loading holidays from a .hol file.
slug: winforms/scheduler/holidays
tags: scheduler
published: True
position: 10
---

# Holidays

Similar to Outlook, since **R2 2018** **RadScheduler** provides holidays support. It allows loading holidays for different countries from a .hol file or adding them programmatically.

>caption Figure1: Holidays

![scheduler-holidays 001](images/scheduler-holidays001.png)

The RadScheduler.**Holidays** collection stores all special days. It is of type **SchedulerHolidays** which is actually **IEnumerable&lt;Holiday&gt;**. For each **Holiday** object you can specify **Date**, **Location** and **HolidayName**.

## SchedulerHolidays' API

|Method|Description|
|----|----|
|**IsHoliday(DateTime dateTime)**|Check if the specific date is contained in the Holidays collection.|
|**GetHolidays(DateTime dateTime)**|Return all holidays for the specific date (if any).|
|**AddHoliday(Holiday holiday, bool createAppointment)**|Add holiday to the Holidays collection. If 'createAppointment' is true this will create an all day appointment.|
|**AddHolidays(IEnumerable<Holiday> holidays, bool createAppointment)**|Add a collection of holidays to the Holidays collection.If 'createAppointment' is true this will create an all day appointment.|
|**Clear**| Clear the Holidays collections. This does not affect already created appointments.|
|**GetAllLocations(string fileName)**| Return all locations from the file.|
|**GetAllLocations(Stream stream)**| Get all location from the stream.|
|**ReadHolidays(string fileName, bool createAppointment)**|Read the holidays information from the file and create Holidays objects in the holidays collection. Optionally can create also all day appointments for the holidays.|
|**ReadHolidays(string fileName, bool createAppointment, IEnumerable<string> locations)**|Read the holidays information from the file and create Holidays objects in the holidays collection only for holidays in the specific locations. Optionally can create also all day appointments for the holidays.|
|**ReadHolidays(Stream stream, bool createAppointment)**|Read the holidays information from the stream and create Holidays objects in the holidays collection. Optionally can create also and all day appointments for the holidays.|
|**ReadHolidays(Stream stream, bool createAppointment, IEnumerable<string> locations)**|Read the holidays information and create Holidays objects in the holidays collection only for holidays in the specific locations. Optionally can create also all day appointments for the holidays.|

## Add Holidays Programmatically
 
The following code snippet demonstrates how to add a holiday. The passed Boolean parameter to the **AddHoliday** method indicates whether an all-day appointment will be created for the specific day or not. 

#### Add a holiday programmatically

{{source=..\SamplesCS\Scheduler\SchedulerHolidays.cs region=AddHolidayProgrammatically}} 
{{source=..\SamplesVB\Scheduler\SchedulerHolidays.vb region=AddHolidayProgrammatically}} 

````C#
Holiday holiday = new Holiday();
holiday.Date = new DateTime(2018, 5, 24);
holiday.HolidayName = "Saints Cyril and Methodius Day";
holiday.Location = "Bulgaria";
bool generateAppointment = true;
this.radScheduler1.Holidays.AddHoliday(holiday, generateAppointment);

````
````VB.NET
Dim holiday As Holiday = New Holiday()
holiday.Date = New DateTime(2018, 5, 24)
holiday.HolidayName = "Saints Cyril and Methodius Day"
holiday.Location = "Bulgaria"
Dim generateAppointment As Boolean = True
Me.radScheduler1.Holidays.AddHoliday(holiday, generateAppointment)

````

{{endregion}} 

## Load Holidays from a File

{{source=..\SamplesCS\Scheduler\SchedulerHolidays.cs region=LoadFile}} 
{{source=..\SamplesVB\Scheduler\SchedulerHolidays.vb region=LoadFile}} 

````C#
            
string fileName = @".hol file location";
bool createAppointment = true;
this.radScheduler1.Holidays.ReadHolidays(fileName, createAppointment);

````
````VB.NET
Dim fileName As String = ".hol file location"
Dim createAppointment As Boolean = True
Me.radScheduler1.Holidays.ReadHolidays(fileName, createAppointment)

````

{{endregion}} 

## Load Holidays from a Stream

{{source=..\SamplesCS\Scheduler\SchedulerHolidays.cs region=LoadStream}} 
{{source=..\SamplesVB\Scheduler\SchedulerHolidays.vb region=LoadStream}} 

````C#
            
string fileToRead = @".hol file location";
bool generateAppointment = true;
using (System.IO.Stream fileStream = File.OpenRead(fileToRead))
{
    this.radScheduler1.Holidays.ReadHolidays(fileStream, generateAppointment);
}

````
````VB.NET
Dim fileToRead As String = ".hol file location"
Dim generateAppointment As Boolean = True
Using fileStream As System.IO.Stream = File.OpenRead(fileToRead)
    Me.radScheduler1.Holidays.ReadHolidays(fileStream, generateAppointment)
End Using

````

{{endregion}} 

## Formatting Holidays

**RadScheduler** allows you to control whether to create all-day appointments for the holidays or not by passing a boolean argument to the **AddHoliday** method. If no appointments are created, there isn't any indication in the scheduler view when a certain day is a holiday. A common case is formatting the holidays' cells in a different color for a better indication. For this purpose, it is necessary to handle the RadScheduler.[CellFormatting]({%slug winforms/scheduler/appearance/formatting-cells%}) event and introduce the desired style for holiday cells. The following example demonstrates how to color in *LightGreen* all holidays in Bulgaria and in *Orange* all the rest of the holidays.

>caption Figure2: Holidays Formatting 

![scheduler-holidays 002](images/scheduler-holidays002.png)

#### Formatting the holidays

{{source=..\SamplesCS\Scheduler\SchedulerHolidays.cs region=HolidaysFormatting}} 
{{source=..\SamplesVB\Scheduler\SchedulerHolidays.vb region=HolidaysFormatting}} 

````C#
private void radScheduler1_CellFormatting(object sender, SchedulerCellEventArgs e)
{
    if (!(e.CellElement is SchedulerHeaderCellElement))
    {
        if (this.radScheduler1.Holidays.IsHoliday(e.CellElement.Date))
        {
            string s = string.Empty;
            foreach (var item in radScheduler1.Holidays.GetHolidays(e.CellElement.Date).OrderBy(ae => ae.HolidayName))
            {
                if (!s.Contains(item.HolidayName))
                    s += item.HolidayName + Environment.NewLine;
            }
            e.CellElement.DrawText = true;
            e.CellElement.Text = s.ToString();
            e.CellElement.TextWrap = true;
            e.CellElement.TextAlignment = ContentAlignment.BottomCenter;
            Padding padding = e.CellElement.Padding;
            if (this.radScheduler1.ActiveViewType == SchedulerViewType.Month)
                padding.Bottom = 22;
            e.CellElement.Padding = padding;
            if (radScheduler1.Holidays.GetHolidays(e.CellElement.Date).Where(l => l.Location == "Bulgaria").Any())
                e.CellElement.BackColor = Color.LightGreen;
            else
                e.CellElement.BackColor = Color.Orange;
        }
        else
        {
            e.CellElement.DrawText = false;
            e.CellElement.ResetValue(RadItem.BackColorProperty, ValueResetFlags.Local);
        }
    }
}

````
````VB.NET
Private Sub radScheduler1_CellFormatting(ByVal sender As Object, ByVal e As SchedulerCellEventArgs)
    If Not (TypeOf e.CellElement Is SchedulerHeaderCellElement) Then
        If Me.radScheduler1.Holidays.IsHoliday(e.CellElement.Date) Then
            Dim s As String = String.Empty
            For Each item In radScheduler1.Holidays.GetHolidays(e.CellElement.Date).OrderBy(Function(ae) ae.HolidayName)
                If Not s.Contains(item.HolidayName) Then s += item.HolidayName + Environment.NewLine
            Next
            e.CellElement.DrawText = True
            e.CellElement.Text = s.ToString()
            e.CellElement.TextWrap = True
            e.CellElement.TextAlignment = ContentAlignment.BottomCenter
            Dim padding As Padding = e.CellElement.Padding
            If Me.radScheduler1.ActiveViewType = SchedulerViewType.Month Then padding.Bottom = 22
            e.CellElement.Padding = padding
            If radScheduler1.Holidays.GetHolidays(e.CellElement.Date).Where(Function(l) l.Location = "Bulgaria").Any() Then e.CellElement.BackColor = Color.LightGreen Else e.CellElement.BackColor = Color.Orange
        Else
            e.CellElement.DrawText = False
            e.CellElement.ResetValue(RadItem.BackColorProperty, ValueResetFlags.Local)
        End If
    End If
End Sub

````

{{endregion}} 



