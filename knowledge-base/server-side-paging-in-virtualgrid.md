---
title: Server Side Paging in Virtual Grid
description: An example demonstrating how paging can be implemented in RadVirtualGrid fetching the data from an IQueryable object
type: how-to
page_title: How to implement paging by fetching data according to the current page index
slug: server-side-paging-in-virtualgrid
position: 5
tags: virtualgrid, paging, server-side
res_type: kb
---


## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.1 220</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadVirtualGrid for WinForms</td>
	</tr>
</table>


## Description

**RadVirtualGrid** is a control providing a convenient UI to display only the visible part of a large set of data. By definition not all of that data needs to be available locally. The example in this article will handle a scenario of implementing a server side paging.

## Solution

The data will be selected according to the current page index. The **PageIndexChanging** event is used to perform the new query. The example also mocks a repository in the **RadVirtualGridRepository** class working with **OrderDataModel** entities. 

The animation below demonstrates the end result in **RadVirtualGrid**.

>caption Figure 1: Server Side Paging
![server-side-paging-in-virtualgrid 001](images/server-side-paging-in-virtualgrid001.gif)

#### Form`s Setup and PageIndexChanging Event

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=PageIndexChangingEvent}} 
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=PageIndexChangingEvent}}
````C#
public partial class ServerSidePagingVirtualGrid : Telerik.WinControls.UI.RadForm
{
    private VirtualGridRepository repository;
    private IList<OrderDataModel> data;
    public ServerSidePagingVirtualGrid()
    {
        InitializeComponent();
        this.repository = new VirtualGridRepository();
        this.radVirtualGrid1.RowCount = this.repository.Orders.Count();
        this.radVirtualGrid1.ColumnCount = this.repository.ColumnNames.Length;
        this.radVirtualGrid1.EnablePaging = true;
        this.radVirtualGrid1.AutoSizeColumnsMode = Telerik.WinControls.UI.VirtualGridAutoSizeColumnsMode.Fill;
        this.SelectData(this.radVirtualGrid1.PageIndex);
        this.radVirtualGrid1.CellValueNeeded += RadVirtualGrid1_CellValueNeeded;
        this.radVirtualGrid1.PageChanging += RadVirtualGrid1_PageChanging;
    }
    private void RadVirtualGrid1_PageChanging(object sender, VirtualGridPageChangingEventArgs e)
    {
        this.SelectData(e.NewIndex);
    }
    private void RadVirtualGrid1_CellValueNeeded(object sender, Telerik.WinControls.UI.VirtualGridCellValueNeededEventArgs e)
    {
        if (e.ColumnIndex < 0)
        {
            return;
        }
        if (e.RowIndex == RadVirtualGrid.HeaderRowIndex)
        {
            e.Value = this.repository.ColumnNames[e.ColumnIndex];
        }
        if (e.RowIndex >= 0 && e.RowIndex < this.data.Count * (this.radVirtualGrid1.PageIndex + 1))
        {
            int index = e.RowIndex - this.radVirtualGrid1.PageSize * this.radVirtualGrid1.PageIndex;
            e.Value = this.data[index][e.ColumnIndex];
        }
    }
    private void SelectData(int pageIndex)
    {
        this.data = this.repository.Orders.Skip(pageIndex * this.radVirtualGrid1.PageSize).Take(this.radVirtualGrid1.PageSize).ToList();
    }
}

````
````VB.NET
Public Class ServerSidePagingVirtualGrid
    Private repository As VirtualGridRepository
    Private data As IList(Of OrderDataModel)
    Public Sub New()
        InitializeComponent()
        Me.repository = New VirtualGridRepository()
        Me.RadVirtualGrid1.RowCount = Me.repository.Orders.Count()
        Me.RadVirtualGrid1.ColumnCount = Me.repository.ColumnNames.Length
        Me.RadVirtualGrid1.EnablePaging = True
        Me.RadVirtualGrid1.AutoSizeColumnsMode = Telerik.WinControls.UI.VirtualGridAutoSizeColumnsMode.Fill
        Me.SelectData(Me.RadVirtualGrid1.PageIndex)
        AddHandler Me.RadVirtualGrid1.CellValueNeeded, AddressOf RadVirtualGrid1_CellValueNeeded
        AddHandler Me.RadVirtualGrid1.PageChanging, AddressOf RadVirtualGrid1_PageChanging
    End Sub
    Private Sub RadVirtualGrid1_PageChanging(ByVal sender As Object, ByVal e As VirtualGridPageChangingEventArgs)
        Me.SelectData(e.NewIndex)
    End Sub
    Private Sub RadVirtualGrid1_CellValueNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.VirtualGridCellValueNeededEventArgs)
        If e.ColumnIndex < 0 Then
            Return
        End If
        If e.RowIndex = RadVirtualGrid.HeaderRowIndex Then
            e.Value = Me.repository.ColumnNames(e.ColumnIndex)
        End If
        If e.RowIndex >= 0 AndAlso e.RowIndex < Me.data.Count * (Me.RadVirtualGrid1.PageIndex + 1) Then
            Dim index As Integer = e.RowIndex - Me.RadVirtualGrid1.PageSize * Me.RadVirtualGrid1.PageIndex
            e.Value = Me.data(index)(e.ColumnIndex)
        End If
    End Sub
    Private Sub SelectData(ByVal pageIndex As Integer)
        Me.data = Me.repository.Orders.Skip(pageIndex * Me.RadVirtualGrid1.PageSize).Take(Me.RadVirtualGrid1.PageSize).ToList()
    End Sub
End Class

````



{{endregion}}

#### Mock Repository

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=MockRepository}} 
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=MockRepository}}
````C#
public class VirtualGridRepository
{
    private Random rand = new Random();
    private IQueryable<OrderDataModel> orders;
    private string[] columnNames = new string[]
    {
        "OrderId",
        "OrderDetails",
        "ProductId",
        "ClientId",
        "ShipAddress",
        "ShippingType"
    };
    public IQueryable<OrderDataModel> Orders
    {
        get
        {
            if (this.orders == null)
            {
                GenerateData();
            }
            return this.orders;
        }
    }
    public string[] ColumnNames
    {
        get
        {
            return this.columnNames;
        }
    }
    private IQueryable<OrderDataModel> GenerateData()
    {
        IList<OrderDataModel> data = new List<OrderDataModel>();
        for (int i = 0; i < 1000; i++)
        {
            data.Add(
                new OrderDataModel
                {
                    OrderId = i,
                    OrderDetails = "Order " + i,
                    ProductId = this.rand.Next(1000),
                    ClientId = this.rand.Next(1000),
                    ShipAddress = "Address " + i,
                    ShippingType = (ShippingType)rand.Next(3)
                });
        }
        this.orders = data.AsQueryable();
        return orders;
    }
}

````
````VB.NET
Public Class VirtualGridRepository
    Private rand As Random = New Random()
    Private _orders As IQueryable(Of OrderDataModel)
    Private _columnNames As String() = New String() {"OrderId", "OrderDetails", "ProductId", "ClientId", "ShipAddress", "ShippingType"}
    Public ReadOnly Property Orders As IQueryable(Of OrderDataModel)
        Get
            If Me._orders Is Nothing Then
                Me.GenerateData()
            End If
            Return Me._orders
        End Get
    End Property
    Public ReadOnly Property ColumnNames As String()
        Get
            Return Me._columnNames
        End Get
    End Property
    Private Function GenerateData() As IQueryable(Of OrderDataModel)
        Dim data As IList(Of OrderDataModel) = New List(Of OrderDataModel)()
        For i As Integer = 0 To 1000 - 1
            data.Add(New OrderDataModel With {
                .OrderId = i,
                .OrderDetails = "Order " & i,
                .ProductId = Me.rand.[Next](1000),
                .ClientId = Me.rand.[Next](1000),
                .ShipAddress = "Address " & i,
                .ShippingType = CType(rand.[Next](3), ShippingType)
            })
        Next
        Me._orders = data.AsQueryable()
        Return Orders
    End Function
End Class

````



{{endregion}}

#### Data Model

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=DataModel}}
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=DataModel}}
````C#
public class OrderDataModel
{
    public int OrderId { get; set; }
    public string OrderDetails { get; set; }
    public int ProductId { get; set; }
    public int ClientId { get; set; }
    public string ShipAddress { get; set; }
    public ShippingType ShippingType { get; set; }
    public object this[int i]
    {
        get
        {
            switch (i)
            {
                case 0:
                    return OrderId;
                case 1:
                    return OrderDetails;
                case 2:
                    return ProductId;
                case 3:
                    return ClientId;
                case 4:
                    return ShipAddress;
                case 5:
                    return ShippingType;
                default:
                    return string.Empty;
            }
        }
    }
}
public enum ShippingType
{
    None,
    Plane,
    Truck
}

````
````VB.NET
Public Class OrderDataModel
    Public Property OrderId As Integer
    Public Property OrderDetails As String
    Public Property ProductId As Integer
    Public Property ClientId As Integer
    Public Property ShipAddress As String
    Public Property ShippingType As ShippingType
    Default Public ReadOnly Property Item(ByVal i As Integer) As Object
        Get
            Select Case i
                Case 0
                    Return OrderId
                Case 1
                    Return OrderDetails
                Case 2
                    Return ProductId
                Case 3
                    Return ClientId
                Case 4
                    Return ShipAddress
                Case 5
                    Return ShippingType
                Case Else
                    Return String.Empty
            End Select
        End Get
    End Property
End Class
Public Enum ShippingType
    None
    Plane
    Truck
End Enum

````



{{endregion}} 

>note A complete solution providing a C# and VB.NET project is available [here](https://github.com/telerik/winforms-sdk/tree/master/VirtualGrid/ServerSidePaging).

# See Also
* [Handle Add, Delete and Update of Rows]({%slug winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows%})