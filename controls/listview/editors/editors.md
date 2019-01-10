---
title: Overview
page_title: Editors Overview | RadListView
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

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=startEdit}} 
{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=startEdit}} 

````C#
            
radListView1.AllowEdit = true;
// set the SelectedItem - this item will be edited  
// in DetailsView you might also want to set the CurrentColumn property – the value of the selected item in this column will be edited in DetailsView
radListView1.SelectedItem = radListView1.Items[0];
radListView1.CurrentColumn = radListView1.Columns[0];
// this will start edit on selected item
radListView1.BeginEdit();

````
````VB.NET
RadListView1.AllowEdit = True
' set the SelectedItem - this node will be edited  
' in DetailsView you might also want to set the CurrentColumn property – the value of the selected item in this column will be edited in DetailsView
RadListView1.SelectedItem = RadListView1.Items(0)
RadListView1.CurrentColumn = RadListView1.Columns(0)
' this will start edit on selected item
RadListView1.BeginEdit()

````

{{endregion}} 

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

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=ItemValidating}} 
{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=ItemValidating}} 

````C#
    
void radListView1_ItemValidating(object sender, ListViewItemValidatingEventArgs e)
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
        
void radListView1_ValidationError(object sender, EventArgs e)
{
    MessageBox.Show("Invalid Value");
}

````
````VB.NET
Private Sub radListView1_ItemValidating(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ListViewItemValidatingEventArgs) Handles RadListView1.ItemValidating
    Dim newInt As Integer = 0
    If Integer.TryParse(Convert.ToString(e.NewValue), newInt) Then
        e.NewValue = newInt
    Else
        e.Cancel = True
    End If
End Sub
Private Sub radListView1_ValidationError(ByVal sender As Object, ByVal e As EventArgs) Handles RadListView1.ValidationError
    MessageBox.Show("Invalid Value")
End Sub

````

{{endregion}}

# See Also

* [Default Editors]({%slug winforms/listview/editors/default-editors%})	
* [Custom Editors]({%slug winforms/listview/editors/custom-editors%})		