---
title: Overview
page_title: Overview - RadCardView
description: RadCardView supports editing of its content out of the box. This operation can be started by clicking with the mouse on the value of a particular item.
slug: winforms/cardview/editors/overview
tags: overview editors
published: True
position: 0
---

# Overview

__RadCardView__ supports editing of its content out of the box. This operation can be started by clicking with the mouse on the value of a particular item. This functionality is controlled by the __AllowEdit__ property and by default it is set to *true*.

#### Disable Editing

{{source=..\SamplesCS\CardView\CardViewEditors.cs region=AllowEdit}} 
{{source=..\SamplesVB\CardView\CardViewEditors.vb region=AllowEdit}}
````C#
this.radCardView1.AllowEdit = false;

````
````VB.NET
Me.RadCardView1.AllowEdit = False

````



{{endregion}}

## Editing Lifecycle

When an item is displayed in __RadCardView__ and the user clicks on the editor of a selected cardview item, the following steps are performed:

* The __SelectedItem__ of the control is changed.

* The __BeginEdit()__ method is called internally.

* The __ItemEditing__ event is fired. The edit operation can be canceled by setting the __Cancel__ event argument to *true*.

* A text box editor appears in the selected item.

When an item is brought out of edit mode, the following steps are performed:

* The editor determines if it will handle the keystroke - for example Esc - cancels editing, Enter ends editing and submits changes.

* The editor instance performs the action it has defined for the __Enter__ key. Typically this indicates that edit mode should be exited and any changes made during the edit session should be saved.

* In response to the action described in the previous step the __EndEdit()__ method is called internally.

* The __ItemValidating__ event allows the user to hook up custom logic for verification. If the __ValueValidating__ event does not succeed (__e.Cancel__ is *true*), __ValidationError__ event is fired to notify all listeners that the validation has failed.

* Follows the __ItemValueChanging__ event via which you can cancel assigning a new value to the item.

* If the previous event was not canceled, the new value is assigned to the item and the __ItemValueChanged__ event is fired.

>caption Fig. 1: Data Validation
![cardview-editors-overview 001](images/cardview-editors-overview001.gif)

The Following example demonstrates the __ItemValidating__ event handling integer values: 
            
#### Data Validation

{{source=..\SamplesCS\CardView\CardViewEditors.cs region=DataValidation}} 
{{source=..\SamplesVB\CardView\CardViewEditors.vb region=DataValidation}}
````C#
private void radCardView1_ItemValidating(object sender, ListViewItemValidatingEventArgs e)
{
    int newInt = 0;
    if (int.TryParse(Convert.ToString(e.NewValue), out newInt))
    {
        e.NewValue = newInt;
    }
    else
    {
        e.Cancel = true;
    }
}
private void radCardView1_ValidationError(object sender, EventArgs e)
{
    RadMessageBox.Show("Invalid Value");
}

````
````VB.NET
Private Sub radCardView1_ItemValidating(sender As Object, e As ListViewItemValidatingEventArgs)
    Dim newInt As Integer = 0
    If Integer.TryParse(Convert.ToString(e.NewValue), newInt) Then
        e.NewValue = newInt
    Else
        e.Cancel = True
    End If
End Sub
Private Sub radCardView1_ValidationError(sender As Object, e As EventArgs)
    RadMessageBox.Show("Invalid Value")
End Sub

````



{{endregion}}

# See Also

* [Swithing Editors]({%slug winforms/cardview/editors/switching-editors%})
* [Custom Items]({%slug winforms/cardview/custom-items%})
* [Formatting Items]({%slug winforms/cardviewview/customizing-appearance/formatting-items%})
