---
title: Export to ICalendar
page_title: Export to ICalendar | UI for WinForms Documentation
description: Export to ICalendar
slug: winforms/scheduler/importing-and-exporting-appointments/export-to-icalendar
tags: export,to,icalendar
published: True
position: 1
---

# Export to ICalendar

## 

|RELATED VIDEOS|
|-----|
|Have you had a need to build scheduler functionality into your applications? If so, then this webinar is for you, where Telerik Evangelist John Kellar shows a variety of features like iCal support, multiple view options, strong data binding support, and an out of the box appointment dialogs.[(Runtime: 32:46)](http://www.telerik.com/videos/winforms/using-radscheduler-for-winforms)|

RadScheduler allows you to export appointments in the industry-standard ICalendar format. For that purpose you need to use the __Export__ method of the RadScheduler class. By using this method you can easily export the appointments in a given SchedulerICalendarExporter instance to a string:

{{source=..\SamplesCS\Scheduler\ImportExport\ImEx.cs region=iCalExport}} 
{{source=..\SamplesVB\Scheduler\ImportExport\ImEx.vb region=iCalExport}} 

````C#
string exportResult = this.radScheduler1.Export(new SchedulerICalendarExporter());

````
````VB.NET
Dim exportResult As String = Me.RadScheduler1.Export(New SchedulerICalendarExporter)

````

{{endregion}} 

Another override of the __Export__ method allows writing the appointment data to a Stream. The following example demonstrates how easy it is to export the appointment data contained in a RadScheduler instance to a file:

{{source=..\SamplesCS\Scheduler\ImportExport\ImEx.cs region=iCalEFile}} 
{{source=..\SamplesVB\Scheduler\ImportExport\ImEx.vb region=iCalEFile}} 

````C#
using (FileStream stream = File.Create("schedule.ics"))
{
    this.radScheduler1.Export(stream, new SchedulerICalendarExporter());
}

````
````VB.NET
Using stream As FileStream = File.Create("schedule.ics")
    Me.RadScheduler1.Export(stream, New SchedulerICalendarExporter)
End Using

````

{{endregion}}
