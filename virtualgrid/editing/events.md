---
title: Events
page_title: Events | UI for WinForms Documentation
description: Editors events
slug: winforms/virtualgrid/editing/events
tags: virtualgrid, editors
published: True
position: 2
---

# Events

The following events occur during the editing process:
* __CellValuesPushed:__ This event will be fired when the user has edited a value in the grid. This event should be used for updating the data source. If it is not handled the cell value would not be updated. Detailed information about how you can use this event to update the data source is available [here]({%slug winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows%}).

* __EditorRequired:__ This is the first event that fires when a cell becomes editable (edit mode). 

>note This is the right place to change the editor type.[Here]({%slug winforms/virtualgrid/cells/changing-default-editor%}) is an example of this behavior.
>

* __CellEditorInitialized:__ Fires when the editor is initialized and visible. This event can be used for accessing the active editor and changing its appearance. More information about this is available [here]({%slug winforms/virtualgrid/editing/editors-properties%}) 

* __ValueChanging:__ The active editor fires this event when it is about to change its value.

* __ValueChanged:__ Fires when the active editor changes its value. The data is not saved in the cell at this point.
