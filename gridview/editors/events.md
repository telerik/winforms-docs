---
title: Events
page_title: Events
description: Events
slug: gridview-editors-events
tags: events
published: True
position: 2
---

# Events



## 

The following events occur during the editing process:

__EditorRequired__– This is the first event that fires when a cell is to become editable (edit mode). 

>This is the right place to replace the editor with a custom one. [Here]({%slug gridview-editors-using-custom-editors%}) is an example of this behavior.

__CellBeginEdit__ – Fires when the cell is about to enter edit mode. You can cancel edit mode at this stage by  setting the __Cancel__ property to *false*.

__CellEditorInitialized__ – Fires when the editor is initialized and visible.

__CellEndEdit__ – Fires when the cell editing is finished.

__ValueChanging__ – The active editor fires this event when it is about to change its value.

__ValueChanged__ – Fires when the active editor changes its value. The data is not saved in the cell at this point.

__CellValueChanged__ – Fires when the value of a cell has been changed.

There are more events fired during this process. Please look in the [Data validation]({%slug gridview-editors-data-validation%}) section.
