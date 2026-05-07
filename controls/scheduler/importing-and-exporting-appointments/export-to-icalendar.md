---
title: Export to ICalendar
page_title: Export to ICalendar - RadScheduler
description: RadScheduler allows you to export appointments in the industry-standard ICalendar format. For that purpose you need to use the Export method of the RadScheduler class.
slug: winforms/scheduler/importing-and-exporting-appointments/export-to-icalendar
tags: export,to,icalendar
published: True
position: 1
previous_url: scheduler-importing-and-exporting-appointments-export-to-icalendar
---

# Export to ICalendar

__RadScheduler__ allows you to export appointments in the industry-standard ICalendar format. For that purpose you need to use the __Export__ method of the RadScheduler class. By using this method you can easily export the appointments in a given SchedulerICalendarExporter instance to a string:

#### Export to String

<snippet id='scheduler-imex-icalexport-cs' />
<snippet id='scheduler-imex-icalexport-vb' />



Another override of the __Export__ method allows writing the appointment data to a Stream. The following example demonstrates how easy it is to export the appointment data contained in a RadScheduler instance to a file:

#### Export to Stream

<snippet id='scheduler-imex-icalefile-cs' />
<snippet id='scheduler-imex-icalefile-vb' />



# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
* [How to Save Custom Backgrounds in RadScheduler when Exporting to ICal]({%slug save-custom-backgrounds-in-scheduler-when-exporting-to-ical%})
