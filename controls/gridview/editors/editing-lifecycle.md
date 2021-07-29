---
title: Editing Lifecycle
page_title: Editing Lifecycle - WinForms GridView Control
description: Follow the editing lifecycle in the WinForms GridView.
slug: editing-lifecycle
tags: events
published: True
position: 3 
---

# Editing Lifecycle

By default, **RadGridView** starts [editing]({%slug winforms/gridview/editors/editors%}) a cell when clicking on a **current** row. So, you should first make the row current by single click, and clicking a second time on the same row will start the editing process. It is possible to follow the whole editing lifecycle via the useful events that **RadGridView** offers:

1\. **EditorRequired** - the first event that triggers when an editing operation is about to start. The **GridViewEditManager** asks for the default editor, relevant for this particular column. The **EditorRequiredEventArgs** gives you access to the default **EditorType**. This is the appropriate place to replace the [default editor]({%slug winforms/gridview/editors/default-editors%}) with another default or [custom editor]({%slug winforms/gridview/editors/using-custom-editors%}). It is necessary to set the either the **EditorType** or the **Editor** property in the event arguments. 

2\. **CellBeginEdit** - The **GridViewCellCancelEventArgs** allows you to cancel the edit operation by setting the **Cancel** argument to **true**. Thus, considering the row/column and row index/ column index, it is possible to restrict entering edit mode in certain cases. 

3\. **CellEditorInitialized** - fires when the editor is already activated and initialized. It is the appropriate place to apply any changes to the editor and adjust any property settings. The **GridViewCellEventArgs** gives you access to the **ActiveEditor** and the initial **Value**.

4\. **ValueChanging** - fires while the editor is being active and the editor's value is **changing**. The **ValueChangingEventArgs** gives you access to the **OldValue** and **NewValue**. It is possible to restrict the newly entered value by setting the **Cancel** argument to **true**.

5\. **ValueChanged** - fires while the editor is being active and the editor's value is **changed**. This new value is not committed to underlying cell yet. It is available only in the editor.

6\. **CellValueChanged** - The **GridViewEditManager** confirms the editor's changes when the user presses Enter/Tab or navigate to another cell. Thus, the new editor's value is committed to the cell and the cell's value is changed accordingly.

7\. **CellEndEdit** - The **GridViewEditManager** ends the edit operation and deactivates the editor when the editor's value is either confirmed by pressing Enter/Tab or the user discards the changes by pressing Escape. 

>note When the grid is in edit mode and the user navigates to another cell either by pressing Tab or by clicking a cell, the editor will be activated for the new current cell (if the **BeginEditMode** property value is not **BeginEditProgrammatically**). 

# See Also

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})

