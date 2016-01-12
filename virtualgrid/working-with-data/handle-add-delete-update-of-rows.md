---
title: Handle Add, Delete and Update of Rows
page_title: Handle Add, Delete and Update of Rows | UI for WinForms Documentation
description: Handle Add, Delete and Update of Rows
slug: winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows
tags: virtualgrid, data, add, delete, update
published: True
position: 1
---

# Handle Add, Delete and Update of Rows

When the user adds new rows, updates or deletes the existing ones, the external data source should be updated as well. Follow the steps below in order to keep the data synced: 

1\. Handle the __CellValuePushed__ event in order to detect when a cell value is changed. 

#### Push value to the data source

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=FillData}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=FillData}} 

````C#
private void radVirtualGrid1_CellValuePushed(object sender, VirtualGridCellValuePushedEventArgs e)
{
    this.UpdateCellValue(data[e.RowIndex].CustomerId, columnNames[e.ColumnIndex], Convert.ToString(e.Value));
}

private void UpdateCellValue(string id, string columnName, string value)
{
    using (OleDbCommand command = new OleDbCommand(@"UPDATE Customers SET " + columnName + " = ? WHERE CustomerID = ?"))
    {
        command.Parameters.Add(new OleDbParameter("@columnValue", value));
        command.Parameters.Add(new OleDbParameter("@customerId", id));
        string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
            @"C:\Users\dyordano\Desktop\support stuff\Nwind.mdb;Persist Security Info=True";
        command.Connection = new OleDbConnection(connectionString);
        command.Connection.Open();
        command.ExecuteNonQuery();
        command.Connection.Close();
    }
    SelectData();
}

````
````VB.NET
Private Sub radVirtualGrid1_CellValuePushed(sender As Object, e As VirtualGridCellValuePushedEventArgs)
    Me.UpdateCellValue(data(e.RowIndex).CustomerId, columnNames(e.ColumnIndex), Convert.ToString(e.Value))
End Sub

Private Sub UpdateCellValue(id As String, columnName As String, value As String)
    Using command As New System.Data.OleDb.OleDbCommand((Convert.ToString("UPDATE Customers SET ") & columnName) + " = ? WHERE CustomerID = ?")
        command.Parameters.Add(New System.Data.OleDb.OleDbParameter("@columnValue", value))
        command.Parameters.Add(New System.Data.OleDb.OleDbParameter("@customerId", id))
        command.Connection = New System.Data.OleDb.OleDbConnection(connectionString)
        command.Connection.Open()
        command.ExecuteNonQuery()
        command.Connection.Close()
    End Using
    SelectData()
End Sub
 
````

{{endregion}} 

2\. When the user adds a new row in the grid, it is necessary to subscribe to the __UserAddedRow__ event in order to update the data source:

#### Add new row

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=AddRow}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=AddRow}} 

````C#
private void radVirtualGrid1_UserAddedRow(object sender, VirtualGridNewRowEventArgs e)
        {
            List<object> newValues = new List<object>();
            for (int i = 0; i < columnNames.Length; i++)
            {
                newValues.Add(e.NewValues[i]);
            }
            this.AddDataRow(newValues);
        }

        private void AddDataRow(List<object> newValues)
        {
            using (OleDbCommand command = new OleDbCommand(@"INSERT INTO Customers (CustomerID, CompanyName," +
                           " ContactName, ContactTitle, Address, PostalCode)  values (?, ?, ?, ?, ?, ?)"))
            {
                command.Parameters.Add(new OleDbParameter("@param1", GenerateID()));
                command.Parameters.Add(new OleDbParameter("@param2", newValues[0]));
                command.Parameters.Add(new OleDbParameter("@param3", newValues[1]));
                command.Parameters.Add(new OleDbParameter("@param4", newValues[2]));
                command.Parameters.Add(new OleDbParameter("@param5", newValues[3]));
                command.Parameters.Add(new OleDbParameter("@param6", newValues[4]));
                command.Connection = new OleDbConnection(connectionString);
                command.Connection.Open();
                command.ExecuteNonQuery();
                command.Connection.Close();
            }
            int currentColumn = this.radVirtualGrid1.VirtualGridElement.CurrentCell.ColumnIndex;
            SelectData();
            this.radVirtualGrid1.VirtualGridElement.InputBehavior.SelectCell(data.Count - 1, currentColumn, false,
                false, this.radVirtualGrid1.VirtualGridElement.MasterViewInfo);
        }

        private string GenerateID()
        {
            StringBuilder sb = new StringBuilder();
            Random rand = new Random();
            for (int i = 0; i < 5; i++)
            {
                sb.Append((char)('A' + rand.Next(26)));
            }
            return sb.ToString();
        }

````
````VB.NET
Private Sub radVirtualGrid1_UserAddedRow(sender As Object, e As VirtualGridNewRowEventArgs)
        Dim newValues As New List(Of Object)()
        For i As Integer = 0 To columnNames.Length - 1
            newValues.Add(e.NewValues(i))
        Next
        Me.AddDataRow(newValues)
    End Sub

    Private Sub AddDataRow(newValues As List(Of Object))
        Using command As New OleDbCommand("INSERT INTO Customers (CustomerID, CompanyName," + _
                                          " ContactName, ContactTitle, Address, PostalCode)  values (?, ?, ?, ?, ?, ?)")
            command.Parameters.Add(New OleDbParameter("@param1", GenerateID()))
            command.Parameters.Add(New OleDbParameter("@param2", newValues(0)))
            command.Parameters.Add(New OleDbParameter("@param3", newValues(1)))
            command.Parameters.Add(New OleDbParameter("@param4", newValues(2)))
            command.Parameters.Add(New OleDbParameter("@param5", newValues(3)))
            command.Parameters.Add(New OleDbParameter("@param6", newValues(4)))
            command.Connection = New OleDbConnection(connectionString)
            command.Connection.Open()
            command.ExecuteNonQuery()
            command.Connection.Close()
        End Using
        Dim currentColumn As Integer = Me.radVirtualGrid1.VirtualGridElement.CurrentCell.ColumnIndex
        SelectData()
        Me.radVirtualGrid1.VirtualGridElement.InputBehavior.SelectCell(data.Count - 1, currentColumn, _
                                                                       False, False, Me.radVirtualGrid1.VirtualGridElement.MasterViewInfo)
    End Sub

    Private Function GenerateID() As String
        Dim sb As New StringBuilder()
        Dim rand As New Random()
        For i As Integer = 0 To 4
            sb.Append(CChar(ChrW(Asc("A") + rand.[Next](26))))
        Next
        Return sb.ToString()
    End Function
 
````

{{endregion}} 

3\. When the user deletes an existing row, you should handle the __UserDeletingRow__ event to update the data source as well:

#### Delete row

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=DeleteRow}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=DeleteRow}} 

````C#
private void radVirtualGrid1_UserDeletedRow(object sender, VirtualGridRowEventArgs e)
        {
            this.DeleteDataRow(data[e.RowIndex].CustomerId);
        }
        private void DeleteDataRow(string id)
        {
            using (OleDbCommand command = new OleDbCommand("DELETE FROM Customers where CustomerID = ?"))
            {
                command.Parameters.Add(new OleDbParameter("@customerId", id));
                command.Connection = new OleDbConnection(connectionString);
                command.Connection.Open();
                command.ExecuteNonQuery();
                command.Connection.Close();
            }
            SelectData();
        }

````
````VB.NET
Private Sub radVirtualGrid1_UserDeletedRow(sender As Object, e As VirtualGridRowEventArgs)
        Me.DeleteDataRow(data(e.RowIndex).CustomerId)
    End Sub
    Private Sub DeleteDataRow(id As String)
        Using command As New OleDbCommand("DELETE FROM Customers where CustomerID = ?")
            command.Parameters.Add(New OleDbParameter("@customerId", id))
            command.Connection = New OleDbConnection(connectionString)
            command.Connection.Open()
            command.ExecuteNonQuery()
            command.Connection.Close()
        End Using
        SelectData()
    End Sub
 
````

{{endregion}} 


 
