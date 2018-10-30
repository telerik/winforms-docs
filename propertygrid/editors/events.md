---
title: Events
page_title: Events | RadPropertyGrid
description: The article describe the events which are raised in the process of editing a particular property grid item.
slug: winforms/propertygrid/editors/events
tags: events
published: True
position: 2
previous_url: propertygrid-editors-events
---

# Events

The following events occur during the editing process:

* __EditorRequired__: This is the first event that fires when a cell is to become editable (in edit mode).

>tip This is the right place to replace the editor with a custom one.[Here]({%slug winforms/propertygrid/editors/using-custom-editor%})is an example of this behavior.
>

* __Editing__: Fires when the item is about to enter edit mode. You can cancel edit mode at this stage by setting the __Cancel__ property to *true*.

* __EditorInitialized__: Fires when the editor is initialized and visible.

* __Edited__: Fires when the item editing has finished.

* __ValueChanging__: The active editor fires this event when it is about to change its value.

* __ValueChanged__: Fires when the active editor changes its value. The data is not saved in the item at this point.

* __PropertyValueChanging__: The item fires this event when it is about to save the value. 

* __PropertyValueChanged__: Fires when the value has been saved to the item.

There are more events fired during this process. Please look in the  [Data validation]({%slug winforms/propertygrid/editors/validation%}) section.

# See Also

* [API]({%slug winforms/propertygrid/editors/api%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
* [Custom Editors]({%slug winforms/propertygrid/editors/using-custom-editor%})
		
