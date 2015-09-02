---
title: Creating an Object that can be Consumed by ObjectDataSource
page_title: Creating an Object that can be Consumed by ObjectDataSource | UI for WinForms Documentation
description: Creating an Object that can be Consumed by ObjectDataSource
slug: winforms/chart/building-radcharts/creating-an-object-that-can-be-consumed-by-objectdatasource
tags: creating,an,object,that,can,be,consumed,by,objectdatasource
published: True
position: 11
---

# Creating an Object that can be Consumed by ObjectDataSource



## 

See the code below for an example object that can be consumed by [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx).  Your object needs to be marked with the [DataObjectAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectattribute.aspx) for the object to be seen by Data Source Configuration Wizard. It also needs a method to select data marked by the [DataObjectMethodAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectmethodattribute.aspx) (see GetProducts() method in the code sample).  

{{source=..\SamplesCS\Chart\CreatingAnObjectThatCanBeConsumedByObjectDataSource.cs region=createObject}} 
{{source=..\SamplesVB\Chart\CreatingAnObjectThatCanBeConsumedByObjectDataSource.vb region=createObject}} 

````C#
    [DataObjectAttribute]
    public class ProductsBO
    {
        [DataObjectMethodAttribute(DataObjectMethodType.Select, true)]
        public static IEnumerable GetProducts()
        {
            SqlCommand command = new SqlCommand();
            String connectionString = @"Integrated Security=SSPI;Persist Security Info=False; Initial Catalog=Northwind;Data Source=.\sqlexpress";
            command.Connection = new SqlConnection(connectionString);
            command.CommandText = "SELECT CategoryName, SUM(ProductSales) AS TotalSales FROM [Product Sales for 1997] GROUP BY CategoryName";
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            return reader;
        }
    }
````
````VB.NET    <DataObjectAttribute()> _
    Public Class ProductsBO
        <DataObjectMethodAttribute(DataObjectMethodType.[Select], True)> _
        Public Shared Function GetProducts() As IEnumerable
            Dim command As New SqlCommand()
            Dim connectionString As [String] = "Integrated Security=SSPI;Persist Security Info=False; Initial Catalog=Northwind;Data Source=.\sqlexpress"
            command.Connection = New SqlConnection(connectionString)
            command.CommandText = "SELECT CategoryName, SUM(ProductSales) AS TotalSales FROM [Product Sales for 1997] GROUP BY CategoryName"
            command.Connection.Open()
            Dim reader As SqlDataReader = command.ExecuteReader()
            Return reader
        End Function
    End Class
    '
````

{{endregion}} 





