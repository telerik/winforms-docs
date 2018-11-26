---
title: Working with Exceptions
page_title: Working with Exceptions | RadScheduler
description: An exception, in RadScheduler terms, is an appointment instance that does not fully conform to the rule that created it.
slug: winforms/scheduler/data-binding/working-with-exceptions
tags: working,with,exceptions
published: True
position: 9
previous_url: scheduler-data-binding-working-with-exceptions
---

# Working with Exceptions

## Overview

|RELATED BLOGS|
| ---- | 
|RadScheduler for WinForms data binding and occurrence exceptions. The big new feature for R3 2009 release in RadScheduler for WinForms has got to be the resource grouping functionality. There are, however, numerous other improvements that also deserve attention, such as data binding. Some of you may remember that in its first release the WinForms Scheduler had just basic support for binding to appointment data. Later we extended this functionality to support storing associations to resources in the data source. [Read full post ...](http://blogs.telerik.com/winformsteam/posts/09-11-04/radscheduler_for_winforms_data_binding_and_occurrence_exceptions.aspx)|

An *exception*, in __RadScheduler__ terms, is an appointment instance that does not fully conform to the rule that created it. They are designed to handle the occurrence of exceptions, or special conditions that change the normal flow of the appointment execution.

Example: You have a Mon-Friady daily recurring appointment, which starts at __9am__ and closes at __10am__. Changing just one of the recurrence appointments (but not all) to start at __2pm__ will constitute an exception to the recurrence rule, and should be handled separately.

## Working with Exceptions

See the [Using DataSource property]({%slug winforms/scheduler/data-binding/using-datasource-property%}) and [Binding to Business Objects]({%slug winforms/scheduler/data-binding/binding-to-business-objects%}) topics on how to work with the Exceptions Collection.

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})