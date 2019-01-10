---
title: Validation
page_title: Validation | RadGridView
description: This article shows how you can validate the user input in order to avoid invalid data.
slug: winforms/gridview/insert/update/delete-records/validation
tags: validation
published: True
position: 4
previous_url: gridview-insert-update-delete-records-validation
---

# Validation

|RELATED VIDEOS|
| ------ |
|[Validation with RadGridView for WinForms](http://www.telerik.com/videos/winforms/gridview/validation-with-radgridview-for-winforms)<br>In this video you will learn how to use the event-based Validation functionality in RadGridView for WinForms. Learn how to use the CellValidating and RowValidating events to ensure user input is valid. (Runtime: 08:47)|

To prevent invalid input, wire the __ValueChanging__ and __ValueChanged__ events of the grid and add custom
validation logic. Below is a simple example that demonstrates how to reject
strings longer than 10 characters:

#### Handling the value changed event

{{source=..\SamplesCS\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.cs region=handlingValueChangingEvent}} 
{{source=..\SamplesVB\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.vb region=handlingValueChangingEvent}} 

````C#
void radGridView1_ValueChanging(object sender, Telerik.WinControls.UI.ValueChangingEventArgs e)
{
    if (e.NewValue.GetType() == typeof(string))
    {
        if (e.NewValue.ToString().Length > 10)
        {
            {
                e.Cancel = true;
            }
        }
    }
}

````
````VB.NET
Private Sub RadGridView1_ValueChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ValueChangingEventArgs) Handles RadGridView1.ValueChanging
    If e.NewValue.GetType() Is GetType(String) Then
            If e.NewValue.ToString().Length > 10 Then
                If True Then
                    e.Cancel = True
                End If
            End If
        End If
    End Sub

````

{{endregion}} 



# See Also
* [Data Editing Event Sequence]({%slug winforms/gridview/insert/update/delete-records/data-editing-event-sequence%})

* [Data Editing Support]({%slug winforms/gridview/insert/update/delete-records/data-editing-support%})

* [Insert/Update/Delete Using Controls API]({%slug winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api%})

* [Tracking changes in RadGridView]({%slug winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview%})

