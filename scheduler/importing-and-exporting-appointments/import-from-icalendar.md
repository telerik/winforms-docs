---
title: Import from ICalendar
page_title: Import from ICalendar | RadScheduler
description: RadScheduler allows you to import appointments from the industry-standard ICalendar format by using the Import method of the RadScheduler class.
slug: winforms/scheduler/importing-and-exporting-appointments/import-from-icalendar
tags: import,from,icalendar
published: True
position: 0
previous_url: scheduler-importing-and-exporting-appointments-import-from-icalendar
---

# Import from ICalendar

|RELATED VIDEOS|
|----|
|Have you had a need to build scheduler functionality into your applications? If so, then this webinar is for you, where Telerik Evangelist John Kellar shows a variety of features like iCal support, multiple view options, strong data binding support, and an out of the box appointment dialogs.[(Runtime: 32:46)](http://www.telerik.com/videos/winforms/using-radscheduler-for-winforms)|

__RadScheduler__ allows you to import appointments from the industry-standard ICalendar format by using the __Import__ method of the __RadScheduler__ class. Using this method you can very easily Import the appointments from a given SchedulerICalendarImporter instance and a string:

#### Import with String

{{source=..\SamplesCS\Scheduler\ImportExport\ImEx.cs region=iCalImport}} 
{{source=..\SamplesVB\Scheduler\ImportExport\ImEx.vb region=iCalImport}} 

````C#
string importString = "ICalendar string format";
this.radScheduler1.Import(importString, new SchedulerICalendarImporter());

````
````VB.NET
Dim importResult As String = "ICalendar string format"
Me.RadScheduler1.Import(importResult, New SchedulerICalendarImporter)

````

{{endregion}} 

Another override of the __Import__ method allows you to read appointment data from a Stream:

#### Import with Stream

{{source=..\SamplesCS\Scheduler\ImportExport\ImEx.cs region=iCalIFile}} 
{{source=..\SamplesVB\Scheduler\ImportExport\ImEx.vb region=iCalIFile}} 

````C#
using (FileStream stream = File.OpenRead("schedule.ics"))
{
    this.radScheduler1.Import(stream, new SchedulerICalendarImporter());
}

````
````VB.NET
Using stream As FileStream = File.OpenRead("schedule.ics")
    Me.RadScheduler1.Import(stream, New SchedulerICalendarImporter)
End Using

````

{{endregion}}

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})

