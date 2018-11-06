---
title: Editing Text View
page_title: Editing Text View | RadGanttView
description: The editing process in the text view of RadGanttView goes through a similar lifecycle as other controls using our editors system.
slug: winforms/ganttview-/editing/editing-text-view
tags: editing,text,view
published: True
position: 0
previous_url: ganttview-editing-editing-textview
---

# Editing text view
 
##  Methods and properties

The editing process in the text view of __RadGanttView__ goes through a similar lifecycle as other controls using our editors system.

There are three main methods that can be used to control the editing and two properties that you can use:
        

* __BeginEdit:__ Puts the current cell in edit mode, opening an editor and moving the focus to that editor.
            

* __EndEdit:__ If the gantt view is in edit mode, ends the editing and commits any changes.
            

* __CancelEdit:__ If the gantt view is in edit mode, end the editing and discards any changes.
            

* __IsEditing:__ Gets a value indicating whether this instance is in edit mode.
            

* __ActiveEditor:__ Gets the editor instance if an editor is opened.
            

You can configure __RadGanttView__ so that items enter edit mode directly when the item is selected or when users press __F2, Space or Enter__ or click for a second time on the item without triggering a double click event. The __BeginEditMode__ property of __RadGanttViewElement__ controls this behavior.
        

## Built-in editors

There are several build-in editors which are used for editing different data types. These editors can be customized or can be replaced by custom editors all together. Here is a list of the build-in editors and the data types they are used for:
        
* __BaseSpinEditor:__ Used for editing numeric types.

* __BaseDateTimeEditor:__ Used for editing DateTime.

* __BaseTextBoxEditor:__ Used for editing all other types not handled by the above two editors.

## Events

During the editing process there are a number of events that are fired at various points. Here is their order and purpose:

1. __EditorRequired:__ Fired when an editor is about to be opened. This is the place where you can change the editor that will be used.

1. __EditorInitialized:__ Fired when an editor is instantiated and visible. Allows you to modify the actual editor.

1. __ItemValidating:__ Fires when an item loses input focus, enabling content validation. Can be cancelled.

1. __ItemValidated:__ Fires after the item has finished validating.

1. __ItemEdited:__ Fires when the editing process is finished.
            
# See Also

* [Customizing editor]({%slug winforms/ganttview-/editing/customizing-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Creating custom editor]({%slug winforms/ganttview-/editing/creating-custom-editor%})