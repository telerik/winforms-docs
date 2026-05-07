---
title: Overview
page_title: Editors Overview - RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/editors/editors
tags: checkboxes,and,editors
published: True
position: 0
previous_url: listview-checkboxes-and-editors
---

# Editors

**RadListView** allows items' editing. If the __AllowEditing__ property is set to *true*, the user may select an item and press `F2` to initiate editing. A text editor is invoked and allows the editing of the item's value. When the edit process ends the entered value is assigned to the item's __Value__ property. If the user cancels editing by pressing `Escape`, the value is not persisted. 

Editing can also be initiated and canceled programmatically by using the following methods:

* __BeginEdit()__: Initiates editing on the selected item.

* __EndEdit()__: Ends editing and saves the edited value.

* __CancelEdit()__: Ends editing and discards the edited value.

The sample code below shows how to start editing using the API:

#### Start editing

<snippet id='listview-listviewcheckboxesandeditors-startedit-cs' />
<snippet id='listview-listviewcheckboxesandeditors-startedit-vb' />



## Editing lifecycle

When an item is displayed in **RadListView** and the user presses `F2` to enter edit mode, the following steps are performed:

1. The __BeginEdit()__ method is called internally.

1. The __ItemEditing__ event is fired. This event is cancelable and you can prevent the edit operation from continuing by setting the **Cancel** property from the arguments to *true*.

1. A text box editor appears in the selected item.

When an item is brought out of edit mode, the following steps are performed:

1. The editor determines if it wants to handle the keystroke - for example `Esc` cancels editing, `Enter` ends editing and submits changes.

1. The editor instance performs the action it has defined for the `Enter` key. Typically this indicates that the edit mode should be exited and any changes made during the edit session should be saved.

1. In response to the action described in the previous step the __EndEdit()__ method is called internally and the __ItemValidating__ event is fired.

1. The __ItemValidating__ event allows the user to hook up custom logic for verification. If the __ItemValidating__ event does not succeed (*e.Cancel is true*), the __ValidationError__ event is fired to notify all listeners that the validation has failed.

* Follows the __ItemValueChanging__ event via which you can cancel assigning a new value to the item.

* If the previous event was not canceled, the new value is assigned to the item and the __ItemValueChanged__ event is fired.

The following example demonstrates the usage of __ItemValidating__ event to edit integer values: 

#### Validation

<snippet id='listview-listviewcheckboxesandeditors-itemvalidating-cs' />
<snippet id='listview-listviewcheckboxesandeditors-itemvalidating-vb' />



# See Also

* [Default Editors]({%slug winforms/listview/editors/default-editors%})	
* [Custom Editors]({%slug winforms/listview/editors/custom-editors%})		
