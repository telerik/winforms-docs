---
title: Working with Exceptions
page_title: Working with Exceptions | UI for WinForms Documentation
description: Working with Exceptions
slug: winforms/scheduler/data-binding/working-with-exceptions
tags: working,with,exceptions
published: True
position: 9
---

# Working with Exceptions

## Overview

|RELATED BLOGS|
| ---- | 
|RadScheduler for WinForms data binding and occurrence exceptions. The big new feature for Q3 2009 release in RadScheduler for WinForms has got to be the resource grouping functionality. There are, however, numerous other improvements that also deserve attention, such as data binding. Some of you may remember that in its first release the WinForms Scheduler had just basic support for binding to appointment data. Later we extended this functionality to support storing associations to resources in the data source. [Read full post ...](http://blogs.telerik.com/winformsteam/posts/09-11-04/radscheduler_for_winforms_data_binding_and_occurrence_exceptions.aspx)|

An __exception__, in RadScheduler terms, is an appointment instance that does not fully conform to the rule that created it. They are designed to handle the occurrence of exceptions, or special conditions that change the normal flow of the appointment execution.

Example:

You have a Mon-Friady daily recurring appointment, which starts at __9am__ and closes at __10am__. Changing just one of the recurrence appointments (but not all) to start at __2pm__ will constitute an exception to the recurrence rule, and should be handled separately.

## Working with Exceptions

See the [Using DataSource property]({%slug winforms/scheduler/data-binding/using-datasource-property%}) and [Binding to Business Objects]({%slug winforms/scheduler/data-binding/binding-to-business-objects%}) topics on how to work with the Exceptions Collection.
