---
title: Events
page_title: Events | RadVirtualGrid
description: This article describes which events are fired while the user is editing a value in RadVirtualGrid.
slug: winforms/virtualgrid/editing/events
tags: virtualgrid, editors
published: True
position: 2
---

# Events

The following events occur during the editing process:

* __CellValuesPushed:__ This event will be fired when the user has edited a value in the grid. This event should be used for updating the data source. If it is not handled the cell value would not be updated. Detailed information about how you can use this event is available [here]({%slug winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows%}).

* __EditorRequired:__ This is the first event that fires when a cell becomes editable (edit mode). 

>tip This is the right place to change the editor type. Detailed information is available [here]({%slug winforms/virtualgrid/cells/changing-default-editor%}).
>

* __CellEditorInitialized:__ Fires when the editor is initialized and visible. This event can be used for accessing the active editor and changing its appearance. More information about this is available [here]({%slug winforms/virtualgrid/editing/editors-properties%}) 

* __ValueChanging:__ The active editor fires this event when it is about to change its value.

* __ValueChanged:__ Fires when the active editor changes its value. The data is not saved in the cell at this point.

# See Also
* [API]({%slug winforms/virtualgrid/cells/api%})

* [Changing the Default Editors]({%slug winforms/virtualgrid/cells/changing-default-editor%})

* [Changing Editors Properties]({%slug winforms/virtualgrid/editing/editors-properties%})

* [Data Validation]({%slug winforms/virtualgrid/editing/data-validation%})

* [Overview]({%slug winforms/virtualgrid/editing/editors%})

* [Using Custom Editors]({%slug winforms/virtualgrid/editing/using-custom-editors%})

