---
title: Export to ICalendar
page_title: Export to ICalendar
description: Export to ICalendar
slug: scheduler-importing-and-exporting-appointments-export-to-icalendar
tags: export,to,icalendar
published: True
position: 1
---

# Export to ICalendar



## 
<table><tr><td>RELATED VIDEOS</td></tr><tr><td>Using RadScheduler for WinFormsHave you had a need to build scheduler functionality into your applications? If so, then this webinar is for you, where Telerik Evangelist John Kellar shows a variety of features like iCal support, multiple view options, strong data binding support, and an out of the box appointment dialogs. (Runtime: 32:46)
		 
		


[](http://tv.telerik.com/winforms/radscheduler/scheduler)</td></tr></table>

RadScheduler allows you to export appointments in the industry-standard ICalendar format. For that purpose you need to use the __Export__ method of the RadScheduler class. By using this method you can easily export the appointments in a given SchedulerICalendarExporter instance to a string:
		 

#### __[C#]__

{{region iCalExport}}
	            string exportResult = this.radScheduler1.Export(new SchedulerICalendarExporter());
	{{endregion}}



#### __[VB.NET]__

{{region iCalExport}}
	        Dim exportResult As String = Me.RadScheduler1.Export(New SchedulerICalendarExporter)
	{{endregion}}



Another override of the __Export__ method allows writing the appointment data to a Stream. The following example demonstrates how easy it is to export the appointment data contained in a RadScheduler instance to a file:

#### __[C#]__

{{region iCalEFile}}
	            using (FileStream stream = File.Create("schedule.ics"))
	            {
	                this.radScheduler1.Export(stream, new SchedulerICalendarExporter());
	            }
	{{endregion}}



#### __[VB.NET]__

{{region iCalEFile}}
	        Using stream As FileStream = File.Create("schedule.ics")
	            Me.RadScheduler1.Export(stream, New SchedulerICalendarExporter)
	        End Using
	{{endregion}}


