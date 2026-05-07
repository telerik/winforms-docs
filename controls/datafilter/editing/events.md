---
title: Events
page_title: Events - RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields.  
slug: winforms/datafilter/editing/events
tags: data, filter
published: True
position: 1
---

# Events

**RadDataFilter** provides several events for controlling the editing behavior. 

## EditorRequired

The **EditorRequired** event is fired when a specific filter node's element is about to be edited and an editor is required. In the **TreeNodeEditorRequiredEventArgs** you have information for the **EditorType** and the **Node** to be affected. 

The **Node** can be one of the following elements:

* **DataFilterCriteriaNode**: represents a simple filter condition.
* **DataFilterGroupNode**: represents a composite filter condition composed of several simple conditions.
* **DataFilterRootNode**: represents the root filter node in **RadDataFilter**.

The **sender** in the **EditorRequired** event can be one of the following elements in order to distinguish for which element the editor is required:

* **DataFilterFieldEditorElement**: represents the field name element.
* **DataFilterOperatorEditorElement**: represents the operator element.
* **DataFilterValueEditorElement**: represents the value element. 
* **DataFilterLogicalOperatorEditorElement**: represents the logical operator element.

This is the appropriate place to replace the default editor and specify what editor to be used.

## Editing

The RadDataFilter.**Editing** event occurs when initializing the active editor. If the event is canceled, no further action takes place.

## EditorInitialized

The **EditorInitialized** event is fired when the editor has already been initialized. Here is the appropriate place if you need to customize the editor.

The following code snippet demonstrates how to replace the default editor with a drop down editor when modifying the value element for the *CategoryID* filter node. It also shows how to allow typing in the editable part of the drop down and activates resizing and auto complete:

>caption Figure 1: Replace default editor with drop down

![WinForms RadDataFilter Replace default editor with drop down](images/datafilter-events001.png)

#### Replace and customize the default editor

<snippet id='datafilter-events-customizeeditor-cs' />
<snippet id='datafilter-events-customizeeditor-vb' />




### Check which element is being edited.

Both editors, field and filter type are TreeViewDropDownListEditor and if you need to customize only one of them you need to know which is edited. This can be achieved the using the DataFilterCriteriaElement.__EditingElement__ property. This is demonstrated in the following example. 

#### Determine which item is edited. 

<snippet id='datafilter-events-editortype-cs' />
<snippet id='datafilter-events-editortype-vb' />



## Edited

The RadDataFilter.**Edited** event occurs after the filter node is edited.

# See Also

* [Custom Editors]({%slug winforms/datafilter/editing/custom-editors%})	
* [Default Editors]({%slug winforms/datafilter/editing/default-editors%})	
