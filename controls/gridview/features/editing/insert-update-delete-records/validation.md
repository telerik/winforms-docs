---
title: Validation
page_title: Validation - RadGridView
description: This article shows how you can validate the user input in order to avoid invalid data.
slug: winforms/gridview/insert/update/delete-records/validation
tags: validation
published: True
position: 4
previous_url: gridview-insert-update-delete-records-validation
---

# Validation

|RELATED VIDEOS|
| ------ |
|[Validation with RadGridView for WinForms](http://www.telerik.com/videos/winforms/gridview/validation-with-radgridview-for-winforms)<br>In this video you will learn how to use the event-based Validation functionality in RadGridView for WinForms. Learn how to use the CellValidating and RowValidating events to ensure user input is valid. (Runtime: 08:47)|

To prevent invalid input, wire the __ValueChanging__ and __ValueChanged__ events of the grid and add custom
validation logic. Below is a simple example that demonstrates how to reject
strings longer than 10 characters:

#### Handling the value changed event

<snippet id='gridview-insertupdatedeleterecords-handlingvaluechangingevent-cs' />
<snippet id='gridview-insertupdatedeleterecords-handlingvaluechangingevent-vb' />

# See Also
* [Data Editing Event Sequence]({%slug winforms/gridview/insert/update/delete-records/data-editing-event-sequence%})

* [Data Editing Support]({%slug winforms/gridview/insert/update/delete-records/data-editing-support%})

* [Insert/Update/Delete Using Controls API]({%slug winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api%})

* [Tracking changes in RadGridView]({%slug winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview%})

