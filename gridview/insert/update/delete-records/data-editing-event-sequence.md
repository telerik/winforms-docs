---
title: Data Editing Event Sequence
page_title: Data Editing Event Sequence | UI for WinForms Documentation
description: Data Editing Event Sequence
slug: winforms/gridview/insert/update/delete-records/data-editing-event-sequence
tags: data,editing,event,sequence
published: True
position: 1
---

# Data Editing Event Sequence



## Grid editing follows a well defined sequence of events: 

* When the grid enters edit mode, the __CellBeginEdit__event is called.
            The editor is loaded with the current cell value.

* On every change of the value in the editor, __ValueChanging__ event is fired just before the value is actually changed.
            The event can be canceled and the current edit rejected.

* If the __ValueChanging__is not canceled the value is changed and the __ValueChanged__ event is fired.

* On closing the editor, the __Validating__event is fired before the value can be persisted in the grid.
            If the __Validating__event is canceled the value is not persisted.

* If __Validating__is not canceled, the value is persisted and the __Validated__ event is fired.

* The __CellEndEdit__ event is called. 
          

* Finally the editor is closed.

Some of these events may be called multiple times.  Here is a sample log of events as a string cell was put into edit mode and the string " new" was typed, then the cell was tabbed away from:

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
