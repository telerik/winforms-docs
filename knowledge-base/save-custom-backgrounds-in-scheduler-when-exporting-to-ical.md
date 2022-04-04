---
title: How to Save Custom Backgrounds in RadScheduler when Exporting to ICal
description: Learn how to keep the custom backgrounds in RadScheduler exported to ICal.
type: how-to 
page_title: How to Save Custom Backgrounds in RadScheduler when Exporting to ICal
slug: save-custom-backgrounds-in-scheduler-when-exporting-to-ical
position: 39
tags: scheduler, export, custom, ical
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.1.222|RadScheduler for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

RadScheduler offers a predefined list of available statuses and backgrounds for its appointments. There are cases when none of the available options is suitable for your specific scenario. You can add your [custom status or background]({%slug customize-appointment-backgrounds-and-statuses%}). However, the custom added backgrounds or statuses are not automatically saved when [exporting to ICal]({%slug winforms/scheduler/importing-and-exporting-appointments/export-to-icalendar%}).

**SchedulerICalendarExporter** is purposed to export these statuses and backgrounds that are available by default. For any custom added statuses/backgrounds, it is necessary to adopt the **SchedulerICalendarExporter** and cover these cases. This article demonstrates a sample approach how to do it. 

## Solution

Let's start with providing some information about the default export logic that the SchedulerICalendarExporter class offers:

>caption WriteAdditionalDataForAppointment method 

````C#      
      
protected virtual void WriteAdditionalDataForAppointment(IEvent appointment, CalObject calObject)
{
    if (appointment == null)
    {
        return;
    }

    if (appointment.Description != null)
    {
        calObject.AddProperty(CalendarConstants.Description, CalHelper.CalTextEncode(appointment.Description));
    }

    object idObject = appointment.UniqueId.KeyValue;
    string idString = (idObject != null) ? idObject.ToString() : string.Empty;
    calObject.ReplaceProperty(CalendarConstants.UniqueId, idString);

    if (appointment.Location != null)
    {
        calObject.AddProperty(CalendarConstants.Location, appointment.Location);
    }

    calObject.AddProperty(CalendarConstants.MSStatus, CalHelper.GetAppointmentStatusName((AppointmentStatus)appointment.StatusId));

    calObject.AddProperty(CalendarConstants.Background, CalHelper.GetAppointmentBackgroundName((AppointmentBackground)appointment.BackgroundId));

    IRemindObject remindObject = appointment as IRemindObject;
    if (remindObject != null && remindObject.Reminder.HasValue && !remindObject.Dismissed)
    {
        CalObject alarmObject = new CalObject(CalendarConstants.Alarm);
        alarmObject.AddProperty(CalendarConstants.Action, CalendarConstants.DisplayValue);
        alarmObject.AddProperty(CalendarConstants.Description, "Reminder");
        alarmObject.AddProperty(CalendarConstants.Trigger, CalHelper.GetReminderString(remindObject.Reminder.Value));
        calObject.Children.Add(alarmObject);
    }
}

````

>caption GetAppointmentStatusName method

````C#  
          
public static string GetAppointmentStatusName(AppointmentStatus status)
{
    string name = "BUSY";
    switch (status)
    {
        case AppointmentStatus.Free:
            name = "FREE";
            break;
        case AppointmentStatus.Tentative:
            name = "TENTATIVE";
            break;
        case AppointmentStatus.Unavailable:
            name = "UNAVAILABLE";
            break;
    }

    return name;
}

````

>caption GetAppointmentBackgroundName method

````C#          
  
public static string GetAppointmentBackgroundName(AppointmentBackground background)
{
    string name = "BUSY";
    switch (background)
    {
        case AppointmentBackground.Anniversary:
            name = "ANNIVERSARY";
            break;
        case AppointmentBackground.Birthday:
            name = "BIRTHDAY";
            break;
        case AppointmentBackground.Business:
            name = "BUSINESS";
            break;
        case AppointmentBackground.Important:
            name = "IMPORTANT";
            break;
        case AppointmentBackground.MustAttend:
            name = "MUSTATTEND";
            break;
        case AppointmentBackground.NeedsPreparation:
            name = "NEEDSPREPARATION";
            break;
        case AppointmentBackground.Personal:
            name = "PERSONAL";
            break;
        case AppointmentBackground.PhoneCall:
            name = "PHONECALL";
            break;
        case AppointmentBackground.TravelRequired:
            name = "TRAVELREQUIRED";
            break;
        case AppointmentBackground.Vacation:
            name = "VACATION";
            break;
    }

    return name;
}

````

>caption AppointmentStatus

````C#  

public enum AppointmentStatus
{
    /// <summary>
    /// Specifies that the status of an appointment is Free
    /// </summary>
	Free = 1,
    /// <summary>
    ///  Specifies that the status of an appointment is Busy
    /// </summary>
	Busy,
    /// <summary>
    ///  Specifies that the status of an appointment is Unavailable
    /// </summary>
	Unavailable,
    /// <summary>
    ///  Specifies that the status of an appointment is Tentative
    /// </summary>
	Tentative
}
````

>caption AppointmentBackground

````C#   
         
public enum AppointmentBackground
{
    /// <summary>
    /// Specifies that no background fill is drawn
    /// </summary>
	None = 1,
    /// <summary>
    /// Specifies that the important type of background fill should be drawn
    /// </summary>
	Important,
    /// <summary>
    /// Specifies that the business type background fill should be drawn
    /// </summary>
	Business,
    /// <summary>
    /// Specifies that the personal type of background fill should be drawn
    /// </summary>
	Personal,
    /// <summary>
    /// Specifies that vacation type of background fill should be drawn
    /// </summary>
	Vacation,
    /// <summary>
    /// Specifies that the MustAttend type of background fill should be drawn
    /// </summary>
	MustAttend,
    /// <summary>
    /// Specifies that the TravelRequired type of background fill should be drawn
    /// </summary>
	TravelRequired,
    /// <summary>
    /// Specifies that the NeedsPreparation type of background fill should be drawn
    /// </summary>
	NeedsPreparation,
    /// <summary>
    /// Specifies that the Birthday type of background fill should be drawn
    /// </summary>
	Birthday,
    /// <summary>
    /// Specifies that the Anniversary type of background fill should be drawn
    /// </summary>
	Anniversary,
    /// <summary>
    /// Specifies that the PhoneCall type of background fill should be drawn
    /// </summary>
	PhoneCall
}

````

In the **WriteAdditionalDataForAppointment** method both, **StatusId** and **BackgroundId** are converted to **AppointmentStatus** and **AppointmentBackground** respectively. If you use a custom status/background, the ID wouldn't be available in the respective enum. Hence, the default value will be exported. This behavior is expected.

If you want to export the custom status/background, it would be necessary to create a derivative of the **SchedulerICalendarExporter** class and override its **WriteAdditionalDataForAppointment** method. You can refer to the above default logic and adjust this part of the method that adds the status/background to the cal object according to the custom requirement you have.

#### Custom SchedulerICalendarExporter

````C#            

public class CustomSchedulerICalendarExporter : SchedulerICalendarExporter
{
    private RadScheduler Scheduler;

    public CustomSchedulerICalendarExporter(RadScheduler radScheduler)
    { 
        this.Scheduler = radScheduler;
    }
    protected override void WriteAdditionalDataForAppointment(IEvent appointment, CalObject calObject)
    {
        if (appointment == null)
        {
            return;
        }

        if (appointment.Description != null)
        {
            calObject.AddProperty("DESCRIPTION", CalTextEncode(appointment.Description));
        }

        object idObject = appointment.UniqueId.KeyValue;
        string idString = (idObject != null) ? idObject.ToString() : string.Empty;
        calObject.AddProperty("UID", idString);

        if (appointment.Location != null)
        {
            calObject.AddProperty("LOCATION", appointment.Location);
        }

        bool exists = Enum.IsDefined(typeof(AppointmentStatus), appointment.StatusId);
        if (exists)
        {
            calObject.AddProperty(@"X-MICROSOFT-CDO-BUSYSTATUS", CalHelper.GetAppointmentStatusName((AppointmentStatus)appointment.StatusId));
        }
        else
        { 
            calObject.AddProperty(@"X-MICROSOFT-CDO-BUSYSTATUS",GetAppointmentStatusName(appointment.StatusId));
        }

        exists= Enum.IsDefined(typeof(AppointmentBackground), appointment.BackgroundId);
        if (exists)
        {
            calObject.AddProperty("BACKGROUND", CalHelper.GetAppointmentBackgroundName((AppointmentBackground)appointment.BackgroundId));
        }
        else
        { 
           calObject.AddProperty("BACKGROUND", GetAppointmentBackgroundName(appointment.BackgroundId));
        }

        IRemindObject remindObject = appointment as IRemindObject;
        if (remindObject != null && remindObject.Reminder.HasValue && !remindObject.Dismissed)
        {
            CalObject alarmObject = new CalObject("VALARM");
            alarmObject.AddProperty("ACTION", "DISPLAY");
            alarmObject.AddProperty("DESCRIPTION", "Reminder");
            alarmObject.AddProperty("TRIGGER", CalHelper.GetReminderString(remindObject.Reminder.Value));
            calObject.Children.Add(alarmObject);
        }
    }

    private string GetAppointmentBackgroundName(int background)
    {
       foreach (AppointmentBackgroundInfo b in this.Scheduler.Backgrounds)
        {
            if (b.Id ==background)
            {
                return b.DisplayName;
            }
        }
        return "default background";
    }

    private string GetAppointmentStatusName(int status)
    {
        foreach (AppointmentStatusInfo s in this.Scheduler.Statuses)
        {
            if (s.Id ==status)
            {
                return s.DisplayName;
            }
        }
        return "default status";
    }
  
    internal string CalTextEncode(string value)
    {
        string v = NormalizeString(value);
        v = v.Replace(@"\", @"\\");
        v = v.Replace("\n", @"\n");
        v = v.Replace(";", @"\;");
        v = v.Replace(",", @"\,");

        return v;
    }

    private static string NormalizeString(string value)
    {
        string v = value;

        v = v.Replace("\r\n", @"\n");
        v = v.Replace("\r", @"\n");
        v = v.Replace("\n", @"\n");
        v = v.Replace(@"\n", "\n");
        v = v.Replace(@"\N", "\n");
        v = v.Replace(@"\;", ";");
        v = v.Replace(@"\,", ",");
        v = v.Replace("\\\"", "\"");
        v = v.Replace(@"\\", @"\");

        return v;
    }
}

````
````VB.NET

Public Class CustomSchedulerICalendarExporter
    Inherits SchedulerICalendarExporter

    Private Scheduler As RadScheduler

    Public Sub New(ByVal radScheduler As RadScheduler)
        Me.Scheduler = radScheduler
    End Sub

    Protected Overrides Sub WriteAdditionalDataForAppointment(ByVal appointment As IEvent, ByVal calObject As CalObject)
        If appointment Is Nothing Then
            Return
        End If

        If appointment.Description IsNot Nothing Then
            calObject.AddProperty("DESCRIPTION", CalTextEncode(appointment.Description))
        End If

        Dim idObject As Object = appointment.UniqueId.KeyValue
        Dim idString As String = If((idObject IsNot Nothing), idObject.ToString(), String.Empty)
        calObject.AddProperty("UID", idString)

        If appointment.Location IsNot Nothing Then
            calObject.AddProperty("LOCATION", appointment.Location)
        End If

        Dim exists As Boolean = [Enum].IsDefined(GetType(AppointmentStatus), appointment.StatusId)

        If exists Then
            calObject.AddProperty("X-MICROSOFT-CDO-BUSYSTATUS", CalHelper.GetAppointmentStatusName(CType(appointment.StatusId, AppointmentStatus)))
        Else
            calObject.AddProperty("X-MICROSOFT-CDO-BUSYSTATUS", GetAppointmentStatusName(appointment.StatusId))
        End If

        exists = [Enum].IsDefined(GetType(AppointmentBackground), appointment.BackgroundId)

        If exists Then
            calObject.AddProperty("BACKGROUND", CalHelper.GetAppointmentBackgroundName(CType(appointment.BackgroundId, AppointmentBackground)))
        Else
            calObject.AddProperty("BACKGROUND", GetAppointmentBackgroundName(appointment.BackgroundId))
        End If

        Dim remindObject As IRemindObject = TryCast(appointment, IRemindObject)

        If remindObject IsNot Nothing AndAlso remindObject.Reminder.HasValue AndAlso Not remindObject.Dismissed Then
            Dim alarmObject As CalObject = New CalObject("VALARM")
            alarmObject.AddProperty("ACTION", "DISPLAY")
            alarmObject.AddProperty("DESCRIPTION", "Reminder")
            alarmObject.AddProperty("TRIGGER", CalHelper.GetReminderString(remindObject.Reminder.Value))
            calObject.Children.Add(alarmObject)
        End If
    End Sub

    Private Function GetAppointmentBackgroundName(ByVal background As Integer) As String
        For Each b As AppointmentBackgroundInfo In Me.Scheduler.Backgrounds

            If b.Id = background Then
                Return b.DisplayName
            End If
        Next

        Return "default background"
    End Function

    Private Function GetAppointmentStatusName(ByVal status As Integer) As String
        For Each s As AppointmentStatusInfo In Me.Scheduler.Statuses

            If s.Id = status Then
                Return s.DisplayName
            End If
        Next

        Return "default status"
    End Function

    Friend Function CalTextEncode(ByVal value As String) As String
        Dim v As String = NormalizeString(value)
        v = v.Replace("\", "\\")
        v = v.Replace(vbLf, "\n")
        v = v.Replace(";", "\;")
        v = v.Replace(",", "\,")
        Return v
    End Function

    Private Shared Function NormalizeString(ByVal value As String) As String
        Dim v As String = value
        v = v.Replace(vbCrLf, "\n")
        v = v.Replace(vbCr, "\n")
        v = v.Replace(vbLf, "\n")
        v = v.Replace("\n", vbLf)
        v = v.Replace("\N", vbLf)
        v = v.Replace("\;", ";")
        v = v.Replace("\,", ",")
        v = v.Replace("\""", """")
        v = v.Replace("\\", "\")
        Return v
    End Function
End Class


````

#### Using the Custom SchedulerICalendarExporter

````C# 
           
string fileName = @"schedule.ics";
using (FileStream stream = File.Create(fileName))
{
    this.radScheduler1.Export(stream, new CustomSchedulerICalendarExporter(this.radScheduler1));
}


````
````VB.NET

Dim fileName As String = "schedule.ics"

Using stream As FileStream = File.Create(fileName)
    Me.RadScheduler1.Export(stream, New CustomSchedulerICalendarExporter(Me.RadScheduler1))
End Using

````

### Importing ICal data

Once the scheduler data is exported, it would be good to have it back by importing at a later moment. This requires creating a derivative of the **SchedulerICalendarImporter** class and overriding its **ApplyAdditionalData** method. It is necessary to find the correct ID of the custom status/background and apply it to the appointment:

#### Custom SchedulerICalendarImporter

````C#   
         
public class CustomSchedulerICalendarImporter : SchedulerICalendarImporter
{
    private RadScheduler Scheduler;

    public CustomSchedulerICalendarImporter(RadScheduler radScheduler)
    { 
        this.Scheduler = radScheduler;
    }

    protected override void ApplyAdditionalData(IEvent appointment, CalObject calObject)
    {
        base.ApplyAdditionalData(appointment, calObject); 

        CalProperty prop = calObject[@"X-MICROSOFT-CDO-BUSYSTATUS"];
        if (prop != null)
        {
            appointment.StatusId = GetAppointmentStatus(CalProperty.ToText(prop));
        }

        prop = calObject["BACKGROUND"];
        if (prop != null)
        {
            appointment.BackgroundId = GetAppointmentBackground(CalProperty.ToText(prop));
        }
    }

    private int GetAppointmentBackground(string background)
    {
         foreach (AppointmentBackgroundInfo b in this.Scheduler.Backgrounds)
        {
            if (b.DisplayName == background)
            {
                return b.Id;
            }
        }
        return 0;
    }

    private int GetAppointmentStatus(string statusName)
    {
        foreach (AppointmentStatusInfo s in this.Scheduler.Statuses)
        {
            if (s.DisplayName == statusName)
            {
                return s.Id;
            }
        }
        return 0;
    }
}


````
````VB.NET

Public Class CustomSchedulerICalendarImporter
    Inherits SchedulerICalendarImporter

    Private Scheduler As RadScheduler

    Public Sub New(ByVal radScheduler As RadScheduler)
        Me.Scheduler = radScheduler
    End Sub

    Protected Overrides Sub ApplyAdditionalData(ByVal appointment As IEvent, ByVal calObject As CalObject)
        MyBase.ApplyAdditionalData(appointment, calObject)
        Dim prop As CalProperty = calObject("X-MICROSOFT-CDO-BUSYSTATUS")

        If prop IsNot Nothing Then
            appointment.StatusId = GetAppointmentStatus(CalProperty.ToText(prop))
        End If

        prop = calObject("BACKGROUND")

        If prop IsNot Nothing Then
            appointment.BackgroundId = GetAppointmentBackground(CalProperty.ToText(prop))
        End If
    End Sub

    Private Function GetAppointmentBackground(ByVal background As String) As Integer
        For Each b As AppointmentBackgroundInfo In Me.Scheduler.Backgrounds

            If b.DisplayName = background Then
                Return b.Id
            End If
        Next

        Return 0
    End Function

    Private Function GetAppointmentStatus(ByVal statusName As String) As Integer
        For Each s As AppointmentStatusInfo In Me.Scheduler.Statuses

            If s.DisplayName = statusName Then
                Return s.Id
            End If
        Next

        Return 0
    End Function
End Class

````

#### Using the Custom SchedulerICalendarImporter

````C# 
           
string fileName = @"schedule.ics";
using (FileStream stream = File.OpenRead(fileName))
{
    this.radScheduler1.Import(stream, new CustomSchedulerICalendarImporter(this.radScheduler1));
}

````
````VB.NET

Dim fileName As String = "schedule.ics"

Using stream As FileStream = File.OpenRead(fileName)
    Me.RadScheduler1.Import(stream, New CustomSchedulerICalendarImporter(Me.RadScheduler1))
End Using

````

# See Also

* [Export to ICalendar]({%slug winforms/scheduler/importing-and-exporting-appointments/export-to-icalendar%})