---
title: Sorting Overview
page_title: Sorting Overview | UI for WinForms Documentation
description: Sorting Overview
slug: winforms/virtualgrid/sorting/sorting
tags: virtualgrid, sorting
published: True
position: 0
---

# Sorting Overview

__RadVirtualGrid__  supports data sorting. Set the RadVirtualGrid.__AllowSorting__ property to *true*  in order to enable the user sorting feature. To enable the multiple columns sorting, you should set the RadVirtualGrid.__AllowMultiColumnSorting__ property to *true*: 
 
![virtualgrid-sorting 001](images/virtualgrid-sorting001.png)

#### Enabling the user sorting 

{{source=..\SamplesCS\VirtualGrid\Sorting\VirtualGridSorting.cs region=AllowSorting}} 
{{source=..\SamplesVB\VirtualGrid\Sorting\VirtualGridSorting.vb region=AllowSorting}}

````C#
this.radVirtualGrid1.AllowSorting = true;

````
````VB.NET
Me.RadVirtualGrid1.AllowSorting = True

```` 

{{endregion}}

![virtualgrid-sorting 002](images/virtualgrid-sorting002.png)

#### Enabling multiple columns sorting

{{source=..\SamplesCS\VirtualGrid\Sorting\VirtualGridSorting.cs region=MultiColumnSorting}} 
{{source=..\SamplesVB\VirtualGrid\Sorting\VirtualGridSorting.vb region=MultiColumnSorting}}

````C#
this.radVirtualGrid1.AllowMultiColumnSorting = true;

````
````VB.NET
Me.RadVirtualGrid1.AllowMultiColumnSorting = True

```` 

{{endregion}}

It is necessary to handle the __SortChanged__ event which is fired once the __SortDescriptors__ collection is changed. In the event handler you should extract the sorted data from the external data source.

>note Please refer to the [Populating with data]({%slug winforms/virtualgrid/working-with-data/populating-with-data%}) help article which demonstrates how to extract the necessary data and fill the virtual grid with data.

![virtualgrid-sorting 003](images/virtualgrid-sorting003.gif)

The following example demonstrates how to achieve sorting functionality in __RadVirtualGrid__ filled with Northwind.Customers table:

{{source=..\SamplesCS\VirtualGrid\Sorting\VirtualGridSorting.cs region=Sorting}} 
{{source=..\SamplesVB\VirtualGrid\Sorting\VirtualGridSorting.vb region=Sorting}}

````C#
        
private void radVirtualGrid1_SortChanged(object sender, VirtualGridEventArgs e)
{
    SelectData();
}
        
private readonly string selectCommand = "SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, PostalCode FROM Customers";
private string[] columnNames = new string[] { "CompanyName", "ContactName", "ContactTitle", "Address", "PostalCode" };
List<Customer> data = new List<Customer>();
        
private void SelectData()
{
    string sortExpression = this.radVirtualGrid1.SortDescriptors.Expression;
    if (!string.IsNullOrEmpty(sortExpression))
    {
        sortExpression = "ORDER BY " + sortExpression;
    }
    
    string commandString = String.Format("{0} {1}", selectCommand, sortExpression);
    using (System.Data.OleDb.OleDbCommand command = new System.Data.OleDb.OleDbCommand(commandString))
    {
        command.Connection = new System.Data.OleDb.OleDbConnection(Settings.Default.NwindConnectionString);
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
        
private void radVirtualGrid1_CellValueNeeded(object sender, Telerik.WinControls.UI.VirtualGridCellValueNeededEventArgs e)
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
        
private void VirtualGridSorting_Load(object sender, EventArgs e)
{            
    this.radVirtualGrid1.ColumnCount = columnNames.Length;
    this.radVirtualGrid1.CellValueNeeded += radVirtualGrid1_CellValueNeeded;
    SelectData();
}
        
public class Customer
{
    public string CustomerId { get; set; }
    
    public string CompanyName { get; set; }
    
    public string ContactName { get; set; }
    
    public string ContactTitle { get; set; }
    
    public string Address { get; set; }
    
    public string PostalCode { get; set; }
    
    public Customer(string customerId, string companyName, string contactName, string contactTitle, string address, string postalCode)
    {
        this.CustomerId = customerId;
        this.CompanyName = companyName;
        this.ContactName = contactName;
        this.ContactTitle = contactTitle;
        this.Address = address;
        this.PostalCode = postalCode;
    }
    
    public string this[int i]
    {
        get
        {
            switch (i)
            {
                case 0:
                    return CompanyName;
                case 1:
                    return ContactName;
                case 2:
                    return ContactTitle;
                case 3:
                    return Address;
                case 4:
                    return PostalCode;
                default:
                    return String.Empty;
            }
        }
    }
}

````
````VB.NET
Private Sub radVirtualGrid1_SortChanged(sender As Object, e As VirtualGridEventArgs)
    SelectData()
End Sub
Private ReadOnly selectCommand As String = "SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, PostalCode FROM Customers"
Private columnNames As String() = New String() {"CompanyName", "ContactName", "ContactTitle", "Address", "PostalCode"}
Private data As New List(Of Customer)()
Private Sub SelectData()
    Dim sortExpression As String = Me.RadVirtualGrid1.SortDescriptors.Expression
    If Not String.IsNullOrEmpty(sortExpression) Then
        sortExpression = Convert.ToString("ORDER BY ") & sortExpression
    End If
    Dim commandString As String = [String].Format("{0} {1}", selectCommand, sortExpression)
    Using command As New System.Data.OleDb.OleDbCommand(commandString)
        command.Connection = New System.Data.OleDb.OleDbConnection(My.Settings.NwindConnectionString)
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
    Me.RadVirtualGrid1.RowCount = data.Count
End Sub
Private Sub radVirtualGrid1_CellValueNeeded(sender As Object, e As Telerik.WinControls.UI.VirtualGridCellValueNeededEventArgs)
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
Private Sub VirtualGridSorting_Load(sender As Object, e As EventArgs) Handles Me.Load
    Me.RadVirtualGrid1.ColumnCount = columnNames.Length
    AddHandler Me.RadVirtualGrid1.CellValueNeeded, AddressOf radVirtualGrid1_CellValueNeeded
    SelectData()
End Sub
Public Class Customer
    Public Property CustomerId() As String
        Get
            Return m_CustomerId
        End Get
        Set(value As String)
            m_CustomerId = value
        End Set
    End Property
    Private m_CustomerId As String
    Public Property CompanyName() As String
        Get
            Return m_CompanyName
        End Get
        Set(value As String)
            m_CompanyName = value
        End Set
    End Property
    Private m_CompanyName As String
    Public Property ContactName() As String
        Get
            Return m_ContactName
        End Get
        Set(value As String)
            m_ContactName = value
        End Set
    End Property
    Private m_ContactName As String
    Public Property ContactTitle() As String
        Get
            Return m_ContactTitle
        End Get
        Set(value As String)
            m_ContactTitle = value
        End Set
    End Property
    Private m_ContactTitle As String
    Public Property Address() As String
        Get
            Return m_Address
        End Get
        Set(value As String)
            m_Address = value
        End Set
    End Property
    Private m_Address As String
    Public Property PostalCode() As String
        Get
            Return m_PostalCode
        End Get
        Set(value As String)
            m_PostalCode = value
        End Set
    End Property
    Private m_PostalCode As String
    Public Sub New(customerId As String, companyName As String, contactName As String, contactTitle As String, address As String, postalCode As String)
        Me.CustomerId = customerId
        Me.CompanyName = companyName
        Me.ContactName = contactName
        Me.ContactTitle = contactTitle
        Me.Address = address
        Me.PostalCode = postalCode
    End Sub
    Default Public ReadOnly Property Item(i As Integer) As String
        Get
            Select Case i
                Case 0
                    Return CompanyName
                Case 1
                    Return ContactName
                Case 2
                    Return ContactTitle
                Case 3
                    Return Address
                Case 4
                    Return PostalCode
                Case Else
                    Return [String].Empty
            End Select
        End Get
    End Property
End Class

```` 

{{endregion}}
 

 
