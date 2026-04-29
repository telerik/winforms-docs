---
title: Tracking changes in RadGridView
page_title: Tracking changes in RadGridView - RadGridView
description: This article shows which events you can use to detect changes in RadGridView.
slug: winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview
tags: tracking,changes,in,radgridview
published: True
position: 3
previous_url: gridview-insert-update-delete-records-tracking-changes-in-radgridview
---

# Tracking Changes in RadGridView

You can track row changes in `RadGridView` by using the `RowsChanging` and `RowsChanged` events. The same events are accessible from the `Rows` collection as `CollectionChanging` and `CollectionChanged`.

You can track cell changes in `RadGridView` by using the `CellValueChanged` event.

You can track column changes with the `CollectionChanging` and `CollectionChanged` events accessible from the `Columns` collection.

>caution `RadGridView` supports two additional editor-related events—`ValueChanging` and `ValueChanged`. For more information, refer to the RadGridView [editors](https://docs.telerik.com/devtools/winforms/controls/gridview/editors/events) section.
>

## CellValueChanged

The `CellValueChanged` event fires after a cell value changes and the editor closes. The event provides a `GridViewCellEventArgs` object with the following properties:

| Property | Description |
| ------- | ------- |
| e.`Row` | Returns the `GridViewRowInfo` of the changed row. |
| e.`Column` | Returns the `GridViewColumn` of the changed cell. |
| e.`Value` | Returns the new value of the cell. |
| e.`ActiveEditor` | Returns the `IInputEditor` instance used for editing. |

The following example shows how to handle the `CellValueChanged` event and read the changed value:

````C#
private void radGridView1_CellValueChanged(object sender, GridViewCellEventArgs e)
{
    GridViewDataColumn column = e.Column as GridViewDataColumn;
    if (column != null)
    {
        string fieldName = column.FieldName;
        object newValue = e.Value;
        // Process the change for the specific column.
    }
}

````
````VB.NET
Private Sub RadGridView1_CellValueChanged(ByVal sender As Object, ByVal e As GridViewCellEventArgs)
    Dim column As GridViewDataColumn = TryCast(e.Column, GridViewDataColumn)
    If column IsNot Nothing Then
        Dim fieldName As String = column.FieldName
        Dim newValue As Object = e.Value
        ' Process the change for the specific column.
    End If
End Sub

````

## RowsChanging

The `RowsChanging` event fires before the rows collection changes. You can use the `GridViewCollectionChangingEventArgs` to inspect the pending change or cancel it by setting the `Cancel` property to `true`. The following table summarizes the available properties:

| Property | Description |
| ------- | ------- |
| e.`Action` | Indicates the reason for the change. Returns a `NotifyCollectionChangedAction` value. |
| e.`Cancel` | Gets or sets whether the event is canceled. The default value is `false`. |
| e.`GridViewTemplate` | Returns the `GridViewTemplate` associated with the change. |
| e.`NewItems` | Returns a collection of the new items. |
| e.`NewStartingIndex` | Returns the index at which the new items are inserted. |
| e.`OldItems` | Returns a collection of the old items. |
| e.`OldStartingIndex` | Returns the starting index of the old items. |
| e.`NewValue` | Returns the new property value when the action is `ItemChanging`. |
| e.`OldValue` | Returns the old property value when the action is `ItemChanging`. |

The following example shows how to handle the `RowsChanging` event and cancel a row removal:

````C#
private void radGridView1_RowsChanging(object sender, GridViewCollectionChangingEventArgs e)
{
    if (e.Action == NotifyCollectionChangedAction.Remove)
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub RadGridView1_RowsChanging(ByVal sender As Object, ByVal e As GridViewCollectionChangingEventArgs)
    If e.Action = NotifyCollectionChangedAction.Remove Then
        e.Cancel = True
    End If
End Sub

````

## RowsChanged

The `RowsChanged` event fires after one or more grid rows change. The `GridViewCollectionChangedEventArgs` object exposes the following properties:

| Property | Description |
| ------- | ------- |
| e.`Action` | Indicates the type of change. Returns a `NotifyCollectionChangedAction` value. |
| e.`GridViewTemplate` | Returns the `GridViewTemplate` associated with the change. |
| e.`NewItems` | Returns a collection of the new items. |
| e.`NewStartingIndex` | Returns the index at which the new items were inserted. |
| e.`OldItems` | Returns a collection of the old items. |
| e.`OldStartingIndex` | Returns the starting index of the old items. |
| e.`PropertyName` | Returns the name of the changed property when the action is `ItemChanged`. |

The following example shows how to handle the `RowsChanged` event and process newly added rows:

````C#
private void radGridView1_RowsChanged(object sender, GridViewCollectionChangedEventArgs e)
{
    if (e.Action == NotifyCollectionChangedAction.Add)
    {
        GridViewRowInfo row = e.NewItems[0] as GridViewRowInfo;
        // Process the newly added row.
    }
}

````
````VB.NET
Private Sub RadGridView1_RowsChanged(ByVal sender As Object, ByVal e As GridViewCollectionChangedEventArgs)
    If e.Action = NotifyCollectionChangedAction.Add Then
        Dim row As GridViewRowInfo = TryCast(e.NewItems(0), GridViewRowInfo)
        ' Process the newly added row.
    End If
End Sub

````

## CollectionChanging

The `CollectionChanging` event is available on the `Rows` and `Columns` collections. For the `Rows` collection, it is equivalent to the `RowsChanging` event and uses the same `GridViewCollectionChangingEventArgs`. You can subscribe to it through the respective collection:

````C#
this.radGridView1.Rows.CollectionChanging += Rows_CollectionChanging;
this.radGridView1.Columns.CollectionChanging += Columns_CollectionChanging;

````
````VB.NET
AddHandler Me.RadGridView1.Rows.CollectionChanging, AddressOf Rows_CollectionChanging
AddHandler Me.RadGridView1.Columns.CollectionChanging, AddressOf Columns_CollectionChanging

````

## CollectionChanged

The `CollectionChanged` event is available on the `Rows` and `Columns` collections. For the `Rows` collection, it is equivalent to the `RowsChanged` event and uses the same `GridViewCollectionChangedEventArgs`. You can subscribe to it through the respective collection:

````C#
this.radGridView1.Rows.CollectionChanged += Rows_CollectionChanged;
this.radGridView1.Columns.CollectionChanged += Columns_CollectionChanged;

````
````VB.NET
AddHandler Me.RadGridView1.Rows.CollectionChanged, AddressOf Rows_CollectionChanged
AddHandler Me.RadGridView1.Columns.CollectionChanged, AddressOf Columns_CollectionChanged

````

## See Also
* [Data Editing Event Sequence]({%slug winforms/gridview/insert/update/delete-records/data-editing-event-sequence%})

* [Data Editing Support]({%slug winforms/gridview/insert/update/delete-records/data-editing-support%})

* [Insert/Update/Delete Using Controls API]({%slug winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api%})

* [Validation]({%slug winforms/gridview/insert/update/delete-records/validation%})
