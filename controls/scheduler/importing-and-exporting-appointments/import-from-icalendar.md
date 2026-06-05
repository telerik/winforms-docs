---
title: Import from ICalendar
page_title: Import from ICalendar - WinForms Scheduler Control
description: WinForms Scheduler allows you to import appointments from the industry-standard ICalendar format by using the Import method of the RadScheduler class.
slug: winforms/scheduler/importing-and-exporting-appointments/import-from-icalendar
tags: import,from,icalendar
published: True
position: 0
previous_url: scheduler-importing-and-exporting-appointments-import-from-icalendar
---

# Import from ICalendar

__RadScheduler__ allows you to import appointments from the industry-standard ICalendar format by using the __Import__ method of the __RadScheduler__ class. Using this method you can very easily Import the appointments from a given SchedulerICalendarImporter instance and a string:

#### Import with String

<snippet id='scheduler-imex-icalimport-cs' />
<snippet id='scheduler-imex-icalimport-vb' />



Another override of the __Import__ method allows you to read appointment data from a Stream:

#### Import with Stream

<snippet id='scheduler-imex-icalifile-cs' />
<snippet id='scheduler-imex-icalifile-vb' />



# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})

