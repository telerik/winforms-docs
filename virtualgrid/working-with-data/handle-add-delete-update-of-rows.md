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

{{source=..\SamplesCS\VirtualGrid\VirtualGridPopulatingWithData.cs region=FillData}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridPopulatingWithData.vb region=FillData}} 

````C#
private string[] columnNames = new string[] { "CompanyName", "ContactName", "ContactTitle", "Address", "PostalCode" };
string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                          @"..\..\DataSources\Nwind.mdb;Persist Security Info=True";
List<Customer> data = new List<Customer>();
    
private void VirtualGridPopulatingWithData_Load(object sender, EventArgs e)
{
    this.radVirtualGrid1.CellValueNeeded += radVirtualGrid1_CellValueNeeded;
    this.radVirtualGrid1.ColumnCount = columnNames.Length;
    SelectData();
}
        
private void radVirtualGrid1_CellValueNeeded(object sender, VirtualGridCellValueNeededEventArgs e)
{
    if (e.ColumnIndex < 0)
        return;
    if (e.RowIndex == RadVirtualGrid.HeaderRowIndex)
    {
        e.Value = columnNames[e.ColumnIndex];
    }
    
    if (e.RowIndex < 0)
    {
        e.FieldName = columnNames[e.ColumnIndex];
    }
    
    if (e.RowIndex >= 0 && e.RowIndex < data.Count)
    {
        e.Value = data[e.RowIndex][e.ColumnIndex];
    }
}
    
private void SelectData()
{
    string selectCommand = "SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, PostalCode FROM Customers";
    using (System.Data.OleDb.OleDbCommand command = new System.Data.OleDb.OleDbCommand(selectCommand))
    {
        command.Connection = new System.Data.OleDb.OleDbConnection(connectionString);
        command.Connection.Open();
        IDataReader reader = command.ExecuteReader();
        data.Clear();
                
        while (reader.Read())
        {
            Customer customer = new Customer(
                Convert.ToString(reader[0]),
                Convert.ToString(reader[1]),
                Convert.ToString(reader[2]),
                Convert.ToString(reader[3]),
                Convert.ToString(reader[4]),
                Convert.ToString(reader[5]));
            data.Add(customer);
        }
    
        command.Connection.Close();
    }

    this.radVirtualGrid1.RowCount = data.Count;
}

````
````VB.NET
Private columnNames As String() = New String() {"CompanyName", "ContactName", "ContactTitle", "Address", "PostalCode"}
Dim connectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + _
"..\..\DataSources\Nwind.mdb;Persist Security Info=True"
Private data As New List(Of Customer)()
Private Sub VirtualGridPopulatingWithData_Load(sender As Object, e As EventArgs) Handles Me.Load
    AddHandler Me.radVirtualGrid1.CellValueNeeded, AddressOf radVirtualGrid1_CellValueNeeded
    Me.radVirtualGrid1.ColumnCount = columnNames.Length
    SelectData()
End Sub
Private Sub radVirtualGrid1_CellValueNeeded(sender As Object, e As VirtualGridCellValueNeededEventArgs)
    If e.ColumnIndex < 0 Then
        Return
    End If
    If e.RowIndex = RadVirtualGrid.HeaderRowIndex Then
        e.Value = columnNames(e.ColumnIndex)
    End If

    If e.RowIndex < 0 Then
        e.FieldName = columnNames(e.ColumnIndex)
    End If

    If e.RowIndex >= 0 AndAlso e.RowIndex < data.Count Then
        e.Value = data(e.RowIndex)(e.ColumnIndex)
    End If
End Sub

Private Sub SelectData()
    Dim selectCommand As String = "SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, PostalCode FROM Customers"
    Using command As New System.Data.OleDb.OleDbCommand(selectCommand)
        command.Connection = New System.Data.OleDb.OleDbConnection(connectionString)
        command.Connection.Open()
        Dim reader As IDataReader = command.ExecuteReader()
        data.Clear()
        While reader.Read()
            Dim customer As New Customer(Convert.ToString(reader(0)), Convert.ToString(reader(1)), Convert.ToString(reader(2)), _
                                         Convert.ToString(reader(3)), Convert.ToString(reader(4)), Convert.ToString(reader(5)))
            data.Add(customer)
        End While

        command.Connection.Close()
    End Using

    Me.radVirtualGrid1.RowCount = data.Count
End Sub

````

{{endregion}} 

2\. When the user adds a new row in the grid, it is necessary to subscribe to the __UserAddedRow__ event in order to update the data source:

#### Add new row

{{source=..\SamplesCS\VirtualGrid\VirtualGridPopulatingWithData.cs region=AddRow}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridPopulatingWithData.vb region=AddRow}} 

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

{{source=..\SamplesCS\VirtualGrid\VirtualGridPopulatingWithData.cs region=DeleteRow}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridPopulatingWithData.vb region=DeleteRow}} 

````C#
private void radVirtualGrid1_UserDeletedRow(object sender, VirtualGridRowsEventArgs e)
{
    string query = "";
    foreach (var item in e.RowIndices)
    {
        query += "'" + data[item].CustomerId + "',";
    }

    DeleteDataRow(query.TrimEnd(','));
}

private void DeleteDataRow(string query)
{
    using (OleDbCommand command = new OleDbCommand("DELETE FROM Customers where CustomerID In  (" + query + ")"))
    {
        command.Connection = new OleDbConnection(connectionString);
        command.Connection.Open();
        command.ExecuteNonQuery();
        command.Connection.Close();
    }
    SelectData();
}

````
````VB.NET
Private Sub radVirtualGrid1_UserDeletedRow(sender As Object, e As VirtualGridRowsEventArgs)
    Dim query As String = ""
    For Each item As Integer In e.RowIndices
        query += "'" + data(item).CustomerId + "',"
    Next

    DeleteDataRow(query.TrimEnd(","c))
End Sub

Private Sub DeleteDataRow(query As String)
    Using command As New OleDbCommand((Convert.ToString("DELETE FROM Customers where CustomerID In  (") & query) + ")")
        command.Connection = New OleDbConnection(connectionString)
        command.Connection.Open()
        command.ExecuteNonQuery()
        command.Connection.Close()
    End Using
    SelectData()
End Sub

````

{{endregion}} 


 
