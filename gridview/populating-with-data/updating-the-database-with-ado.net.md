---
title: Updating the Database with ADO.Net
page_title: Updating the Database with ADO.Net | RadGridView
description: This article shows how you used ADO.Net to update the database when the grid is changed.
slug: winforms/gridview/populating-with-data/updating-the-database-with-ado.net
tags: updating,the,database,with,ado.net
published: True
position: 12
previous_url: gridview-populating-with-data-updating-the-data-base-with-ado-net
---

# Updating the Database with ADO.Net

RadGridView can display data in bound mode, unbound mode and virtual mode. The bound mode is suitable for managing data using automatic interaction with the data store. One very common use of the RadGridView control is binding to a table from a database.

However, the workflow and the specifications of the various applications can be different. Some applications may require updating the data base when the end-user is up to exit the applications. In other cases the end-user may be required to click a special button in order to update the database. 

In the third type of cases, on which are going to focus this article, you may need to update the data base right after the end-user finishes modifying a single value of RadGridView. In order to be able to implement this functionality, you can handle the events of RadGridView or its BindingSource.
      

In the following sample scenario we are going to demonstrate how the implementation can be achieved.
      

Let's assume that we have an ADO.NET DataTable that loads its data from a `SqlDataAdapter` and it is bound to a `BindingSource` component. Further, the `BindingSource` component is bound to RadGridView control. 


## Updating the database when the current row is changed

This approach allows us to update the database when the end-user changes the current row in RadGridView. To commit the data to the database in this case, we can use the `BindingSource` `CurrentItemChanged` event, but we also need to use one additional member to save the last edited row instance. Here is a solution using this approach:

{{source=..\SamplesCS\GridView\PopulatingWithData\AutoSavingDataBSEventsForm.cs region=bindingSource}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\AutoSavingDataBSEventsForm.vb region=bindingSource}} 

````C#
private DataRow lastEditRow = null;
public AutoSavingDataBSEventsForm()
{
    InitializeComponent();
    this.employeesBindingSource.CurrentChanged += new EventHandler(employeesBindingSource_CurrentChanged);
}
private void AutoSavingDataBSEventsForm_Load(object sender, EventArgs e)
{
    // TODO: This line of code loads data into the 'nwindDataSet.Employees' table. You can move, or remove it, as needed.
    this.employeesTableAdapter.Fill(this.nwindDataSet.Employees);
    object current = this.employeesBindingSource.Current;
    if (current != null)
    {
        this.lastEditRow = ((DataRowView)current).Row;
    }
}
void employeesBindingSource_CurrentChanged(object sender, EventArgs e)
{
    DataRow dataRow = ((DataRowView)((BindingSource)sender).Current).Row;
    if (lastEditRow != null && lastEditRow.RowState == DataRowState.Modified)
    {
        this.employeesTableAdapter.Update(lastEditRow);
    }
    lastEditRow = dataRow;
}

````
````VB.NET
Private lastEditRow As DataRow = Nothing
Public Sub New()
    InitializeComponent()
    AddHandler EmployeesBindingSource.CurrentChanged, AddressOf employeesBindingSource_CurrentChanged
End Sub
Private Sub AutoSavingDataBSEventsForm_Load(ByVal sender As Object, ByVal e As EventArgs)
    ' TODO: This line of code loads data into the 'nwindDataSet.Employees' table. You can move, or remove it, as needed.
    Me.EmployeesTableAdapter.Fill(Me.NwindDataSet.Employees)
    Dim current As Object = Me.EmployeesBindingSource.Current
    If current IsNot Nothing Then
        Me.lastEditRow = (CType(current, DataRowView)).Row
    End If
End Sub
Private Sub employeesBindingSource_CurrentChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim dataRow As DataRow = (CType((CType(sender, BindingSource)).Current, DataRowView)).Row
    If lastEditRow IsNot Nothing AndAlso lastEditRow.RowState = DataRowState.Modified Then
        Me.EmployeesTableAdapter.Update(lastEditRow)
    End If
    lastEditRow = dataRow
End Sub

````

{{endregion}} 

## Updating the database on row added/deleted or when the current row is changed

In the context of RadGridView, we can use a combination of events to produce optimized codebase to support the auto-saving feature. These events are `UserAddedRow`, `UserDeletingRow`, `UserDeletedRow` and `CurrentRowChanged`.

Here is how we can update the database when the end-user __deletes__ a row. Basically, we need to handle the `UserDeletingRow` and `UserDeletedRows` events. If several rows are selected and deleted at once, these events will be fired only once and their `e.Rows` collection will contain all the deleted rows:

{{source=..\SamplesCS\GridView\PopulatingWithData\AutoSavingDataGridEvents.cs region=deletingRows}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\AutoSavingDataGridEvents.vb region=deletingRows}} 

````C#
private List<DataRowView> lastRemovedRows = new List<DataRowView>();
void radGridView1_UserDeletingRow(object sender, Telerik.WinControls.UI.GridViewRowCancelEventArgs e)
{
    for (int i = 0; i < e.Rows.Length; i++)
    {
        DataRowView dataRowView = e.Rows[i].DataBoundItem as DataRowView;
        if (dataRowView != null)
        {
            this.lastRemovedRows.Add(dataRowView);
        }
    }
}
void radGridView1_UserDeletedRow(object sender, Telerik.WinControls.UI.GridViewRowEventArgs e)
{
    DataRow[] rows = new DataRow[this.lastRemovedRows.Count];
    for (int i = 0; i < this.lastRemovedRows.Count; i++)
    {
        rows[i] = this.lastRemovedRows[i].Row;
    }
    this.employeesTableAdapter.Update(rows);
    this.lastRemovedRows.Clear();
}

````
````VB.NET
Private lastRemovedRows As New List(Of DataRowView)()
Private Sub radGridView1_UserDeletingRow(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewRowCancelEventArgs) Handles RadGridView1.UserDeletingRow
    For i As Integer = 0 To e.Rows.Length - 1
        Dim dataRowView As DataRowView = TryCast(e.Rows(i).DataBoundItem, DataRowView)
        If dataRowView IsNot Nothing Then
            Me.lastRemovedRows.Add(dataRowView)
        End If
    Next i
End Sub
Private Sub radGridView1_UserDeletedRow(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewRowEventArgs) Handles RadGridView1.UserDeletedRow
    Dim rows(Me.lastRemovedRows.Count - 1) As DataRow
    For i As Integer = 0 To Me.lastRemovedRows.Count - 1
        rows(i) = Me.lastRemovedRows(i).Row
    Next i
    Me.EmployeesTableAdapter.Update(rows)
    Me.lastRemovedRows.Clear()
End Sub

````

{{endregion}} 

And this is how we can update the database when the user __adds__ a new row. The `UserAddedRow` event should be handled in this case:

{{source=..\SamplesCS\GridView\PopulatingWithData\AutoSavingDataGridEvents.cs region=addingRows}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\AutoSavingDataGridEvents.vb region=addingRows}} 

````C#
void radGridView1_UserAddedRow(object sender, Telerik.WinControls.UI.GridViewRowEventArgs e)
{
    DataRowView dataRowView = e.Rows[0].DataBoundItem as DataRowView;
    DataRow row = dataRowView.Row;
    this.employeesTableAdapter.Update(row);
}

````
````VB.NET
Private Sub radGridView1_UserAddedRow(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewRowEventArgs) Handles RadGridView1.UserAddedRow
    Dim dataRowView As DataRowView = TryCast(e.Rows(0).DataBoundItem, DataRowView)
    Dim row As DataRow = dataRowView.Row
    Me.EmployeesTableAdapter.Update(row)
End Sub

````

{{endregion}} 

When the user __changes the current__ row, you can update the database not only by using the `CurrentItemChanged` event of the BindingSource, but by handling the `CurrentRowChanged` event of RadGridView as well:

{{source=..\SamplesCS\GridView\PopulatingWithData\AutoSavingDataGridEvents.cs region=changingCurrentRow}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\AutoSavingDataGridEvents.vb region=changingCurrentRow}} 

````C#
void radGridView1_CurrentRowChanged(object sender, Telerik.WinControls.UI.CurrentRowChangedEventArgs e)
{
    if (e.OldRow == null)
    {
        return;
    }
    DataRowView dataRowView = e.OldRow.DataBoundItem as DataRowView;
    if (dataRowView != null)
    {
        DataRow dataRow = dataRowView.Row;
        if (dataRow.RowState == DataRowState.Modified)
        {
            this.employeesTableAdapter.Update(dataRow);
        }
    }
}

````
````VB.NET
Private Sub radGridView1_CurrentRowChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CurrentRowChangedEventArgs) Handles RadGridView1.CurrentRowChanged
    If e.OldRow Is Nothing Then
        Return
    End If
    Dim dataRowView As DataRowView = TryCast(e.OldRow.DataBoundItem, DataRowView)
    If dataRowView IsNot Nothing Then
        Dim dataRow As DataRow = dataRowView.Row
        If dataRow.RowState = DataRowState.Modified Then
            Me.EmployeesTableAdapter.Update(dataRow)
        End If
    End If
End Sub

````

{{endregion}} 

## Updating the database when a single cell value is changed

The above solutions will come in handy in many cases. However, in some scenarios the database may have to be updated immediately after the user edits a single cell, without changing the current row. For this case, you have to handle the `CellValueChanged` event as shown below:

{{source=..\SamplesCS\GridView\PopulatingWithData\AutoSavingDataGridEvents.cs region=changingValue}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\AutoSavingDataGridEvents.vb region=changingValue}} 

````C#
void radGridView1_CellValueChanged(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
{
    IEditableObject editbaleObject = e.Row.DataBoundItem as IEditableObject;
    if (editbaleObject != null)
    {
        editbaleObject.EndEdit();
    }
    DataRowView dataRowView = e.Row.DataBoundItem as DataRowView;
    if (dataRowView != null)
    {
        this.employeesTableAdapter.Update(dataRowView.Row);
    }
}

````
````VB.NET
Private Sub radGridView1_CellValueChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCellEventArgs) Handles RadGridView1.CellValueChanged
    Dim editbaleObject As IEditableObject = TryCast(e.Row.DataBoundItem, IEditableObject)
    If editbaleObject IsNot Nothing Then
        editbaleObject.EndEdit()
    End If
    Dim dataRowView As DataRowView = TryCast(e.Row.DataBoundItem, DataRowView)
    If dataRowView IsNot Nothing Then
        Me.EmployeesTableAdapter.Update(dataRowView.Row)
    End If
End Sub

````

{{endregion}} 

`IEditableObject` provides functionality to commit or rollback changes to an object that is used as a data source. The DataTable object supports this functionality. If the current item is changed in the associated `CurrencyManager`, the __EndEdit__ operation is called automatically - it is processed when the current row of RadGridView is changed (to another row). The EndEdit operation in this implementation is needed to commit the changes that happen in the current row itself even if the current row of RadGridView is not changed (to another row).
        
# See Also
* [Bind to XML]({[%slug winforms/gridview/populating-with-data/bind-to-xml%]}

* [Bindable Types]({[%slug winforms/gridview/populating-with-data/bindable-types%]}

* [Binding to a Collection of Interfaces]({[%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%]}

* [Binding to Array and ArrayList]({[%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%]}

* [Binding to BindingList]({[%slug winforms/gridview/populating-with-data/binding-to-bindinglist%]}

* [Binding to DataReader]({[%slug winforms/gridview/populating-with-data/binding-to-datareader%]}

* [Binding to EntityFramework using Database first approach]({[%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%]}

* [Binding to Generic Lists]({[%slug winforms/gridview/populating-with-data/binding-to-generic-lists%]}

