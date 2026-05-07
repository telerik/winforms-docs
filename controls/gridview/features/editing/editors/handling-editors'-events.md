---
title: Handling Editors' events
page_title: Handling Editors' events - WinForms GridView Control
description: Learn how to use the CellEditorInitialized event handler to access the active editor in WinForms GridView.
slug: winforms/gridview/editors/handling-editors'-events
tags: handling,editors',events
published: True
position: 6
previous_url: gridview-editors-handling-editors-events
---

# Handling Editors' events

In some cases you may need to perform a specific operation depending on the user input in the editor while the editor is still opened.

For example if you are in __GridViewTextBoxColumn__, the editor for the cells in this column is __RadTextBoxEditor__. You may need to set specific text in the text box editor when the user presses CTRL + L. In this case, you should subscribe to the __KeyDown__ event of the __RadTextBoxEditorElement__ in the __CellEditorInitialized__ event handler. The editors in RadGridView are reused, so we define a field which prevents us from subscribing to the __KeyDown__ more than once.

<snippet id='gridview-handlingeditorsevents-handlingeditorsevents-cs' />
<snippet id='gridview-handlingeditorsevents-handlingeditorsevents-vb' />

## See Also

* [How to Move the Current Row with Arrow Keys while RadGridView is in Edit Mode]({%slug move-current-row-with-arrow-keys-in-edit-mode%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})

