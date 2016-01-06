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

__EditorRequired__ – This is the first event that fires when a cell becomes editable (edit mode). 

>note This is the right place to change the editor or use a custom one.[Here]({%slug winforms/virtualgrid/cells/changing-default-editor%}) is an example of this behavior.
>

__CellEditorInitialized__ – Fires when the editor is initialized and visible. This event can be used for accessing the active editor and changing its appearance. More information about this is available [here]({%slug winforms/virtualgrid/editing/editors-properties%}) 

__ValueChanging__ – The active editor fires this event when it is about to change its value.

__ValueChanged__ – Fires when the active editor changes its value. The data is not saved in the cell at this point.
