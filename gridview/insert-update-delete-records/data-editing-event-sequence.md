---
title: Data Editing Event Sequence
page_title: Data Editing Event Sequence | RadGridView
description: This article shows which event are fired when the end user performs data editing operation.
slug: winforms/gridview/insert/update/delete-records/data-editing-event-sequence
tags: data,editing,event,sequence
published: True
position: 1
previous_url: gridview-insert-update-delete-records-data-editing-event-sequence
---

# Data Editing Event Sequence

## Grid editing follows a well defined sequence of events: 

* When the grid enters edit mode, the __CellBeginEdit__ event is called. The editor is loaded with the current cell value.

* On every change of the value in the editor, __ValueChanging__ event is fired just before the value is actually changed. The event can be canceled and the current edit rejected.

* If the __ValueChanging__ is not canceled the value is changed and the __ValueChanged__ event is fired.

* On closing the editor, the __Validating__ event is fired before the value can be persisted in the grid. If the __Validating__ event is canceled the value is not persisted.

* If __Validating__ is not canceled, the value is persisted and the __Validated__ event is fired.

* The __CellEndEdit__ event is called. 

* Finally the editor is closed.

Some of these events may be called multiple times. Here is a sample log of events as a string cell was put into edit mode and the string "new" was typed, then the cell was tabbed away from:

CellBeginEdit

ValueChanging

ValueChanged

ValueChanging

ValueChanged

ValueChanging

ValueChanged

ValueChanging

ValueChanged

Validating

Validated

Validated

CellEndEdit
# See Also
* [Data Editing Support]({[%slug winforms/gridview/insert/update/delete-records/data-editing-support%]}

* [Insert/Update/Delete Using Controls API]({[%slug winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api%]}

* [Tracking changes in RadGridView]({[%slug winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview%]}

* [Validation]({[%slug winforms/gridview/insert/update/delete-records/validation%]}

