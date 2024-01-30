---
title: Column Events
page_title: Column Events
description: Learn more about the column events of Telerik's {{ site.framework_name }} DataGrid that you can subscribe to declaratively or at runtime.
slug: gridview-column-events
tags: column, events
published: True
position: 6
---

# Column Events

In this article we discuss RadGridView events related to its **columns**:

* [AutoGeneratingColumn](#autogeneratingcolumn)

* [CurrentColumnChanged](#currentcolumnchanged)

* [ColumnWidthChanging](#columnwidthchanging)

* [ColumnWidthChanged](#columnwidthchanged)

* [ColumnChooserCreated](#columnwidthchanged)

## AutoGeneratingColumn

When you set RadGridView's **AutoGenerateColumns** property to **True** (the default value), RadGridView creates a column for each public property of the bound objects and the **AutoGeneratingColumn** event is triggered for each of those columns.

You can use the following properties of the **GridViewAutoGeneratingColumnEventArgs** class:

* **Cancel**: Setting this to **True** cancels the creation of the current column.

* **Column**: The column that is being generated.

The following example demonstrates how you can cancel the creation of a specific column:

{{source=..\SamplesCS\GridView\Columns\Columns.cs region=AutoGeneratingColumn}} 
{{source=..\SamplesVB\GridView\Columns\Columns.vb region=AutoGeneratingColumn}} 

````C#
private void RadGridView1_AutoGeneratingColumn(object sender, GridViewAutoGeneratingColumnEventArgs e)
{
    if (e.Column.HeaderText  == "CreationDate")
    {
        e.Cancel = true;
    }
}

````
````VB.NET

Private Sub RadGridView1_AutoGeneratingColumn(ByVal sender As Object, ByVal e As GridViewAutoGeneratingColumnEventArgs)
    If e.Column.HeaderText = "CreationDate" Then
        e.Cancel = True
    End If
End Sub

````

{{endregion}}

>Changing the DataType property of the column will not be respected in the AutoGeneratingColumn event handler.

## CurrentColumnChanged

This event will be triggered when the CurrentColumn property is changed. Through the __CurrentColumnChangedEventArgs__ of its event handler you can access the following:

* __CurrentColumn__: Gets the current column.

* __NewColumn__: Gets the new column.

## ColumnWidthChanging

A __ColumnWidthChanging__ event occurs when you resize a column programmatically or through the UI.

>You can resize columns only if __AllowColumnResize__ is set to __True__ (which is the default value). 

Through the __ColumnWidthChangingEventArgs__ of its event handler you can access the following:

* __Cancel__: Setting this to **True** cancels the resizing of the current column.

* __Column__: The column that is being resized.

* __ColumnIndex__: Gets the index of the column whose width is changing.

* __NewWidth__: Gets or sets the new width for the column.

>If you cancel __ColumnWidthChanging__, the column's width does not change and the __ColumnWidthChanged__ event is not triggered. 

## ColumnWidthChanged

The __ColumnWidthChanged__ event occurs after the resize of a column is complete. It also triggers when the user double-clicks the header cell gripper to resize the column to fit its content.

You can access the following properties of the __ColumnWidthChangedEventArgs__ object: 

* __ColumnIndex__: Gets the index of the column whose width is changing.

## ColumnChooserCreated

The __ColumnChooserCreated__ event occurs when a column is hidden and added to the column chooser form.

You can access the following properties of the __ColumnChooserCreatedEventArgs__ object:

* __ColumnChooser__: Gets or sets the GridViewColumnChooser form.





