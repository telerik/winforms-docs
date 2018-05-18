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

#### Mock Repository

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=MockRepository}} 
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=MockRepository}}
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