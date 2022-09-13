---
title: Create Custom Expression in Code
description: This article shows how you can create a custom function for the RadGridView Calculated Column.
type: how-to
page_title: How to Create Custom Expression in Code
slug: gridview-calculated-column-custom-function
position: 0
tags: gridview, calculated,column,expressionContext,custom,function
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|SplitContainer for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|
 

## Description

This example demonstrates how we can create custom function programmatically. In the following example, we will demonstrate how to calculate the sum of all inventory per product by multiplying the __Price__ and __Quantity__ columns. 

![gridview-calculated-column-custom-function 001](images/gridview-calculated-column-custom-function.png)

## Solution

````C#
 
public partial class RadForm2 : Telerik.WinControls.UI.RadForm
{
    public RadForm2()
    {
        InitializeComponent();
        DataTable dt = new DataTable();
        dt.Columns.Add("Id", typeof(int));
        dt.Columns.Add("Title", typeof(string));
        //comment adding of the "Price" column in order to test the custom function
        dt.Columns.Add("Price", typeof(decimal));
        dt.Columns.Add("Quantity", typeof(int));

        for (int i = 0; i < 10; i++)
        {
            dt.Rows.Add(i, "product" + i, i * 1.25, i);
        }

        this.radGridView1.DataSource = dt;
        GridViewDecimalColumn col = new GridViewDecimalColumn("Calculated Column");
        radGridView1.Columns.Add(col);
        radGridView1.Columns["Calculated Column"].Expression = "CustomFunction(Id)";
        Telerik.Data.Expressions.ExpressionContext.Context = new CustomExpressionContext(radGridView1);
    }
}
public class CustomExpressionContext : Telerik.Data.Expressions.ExpressionContext
{
    private RadGridView grid;

    public CustomExpressionContext(RadGridView grid)
    {
        this.grid = grid;
    }

    public double CustomFunction(int id)
    {
        GridViewRowInfo currentRow = FindCurrentRowById(id);
        if (currentRow != null)
        {
            int quantity = 0;
            decimal price = 0;
            if (grid.Columns.Contains("Price") && currentRow.Cells["Price"].Value != null)
            {
                decimal.TryParse(currentRow.Cells["Price"].Value.ToString(), out price);
            }
            if (grid.Columns.Contains("Quantity") && currentRow.Cells["Quantity"].Value != null)
            {
                int.TryParse(currentRow.Cells["Quantity"].Value.ToString(),
                    out quantity);
            }
            return (double)(quantity * price);
        }
        return 0;
    }

    private GridViewRowInfo FindCurrentRowById(int id)
    {
        foreach (GridViewRowInfo row in grid.Rows)
        {
            if ((int)row.Cells["Id"].Value == id)
            {
                return row;
            }
        }
        return null;
    }
}
              
       
````
````VB.NET

Public Partial Class RadForm2
    Inherits Telerik.WinControls.UI.RadForm

    Public Sub New()
        InitializeComponent()
        Dim dt As DataTable = New DataTable()
        dt.Columns.Add("Id", GetType(Integer))
        dt.Columns.Add("Title", GetType(String))
        dt.Columns.Add("Price", GetType(Decimal))
        dt.Columns.Add("Quantity", GetType(Integer))

        For i As Integer = 0 To 10 - 1
            dt.Rows.Add(i, "product" & i, i * 1.25, i)
        Next

        Me.radGridView1.DataSource = dt
        Dim col As GridViewDecimalColumn = New GridViewDecimalColumn("Calculated Column")
        radGridView1.Columns.Add(col)
        radGridView1.Columns("Calculated Column").Expression = "CustomFunction(Id)"
        Telerik.Data.Expressions.ExpressionContext.Context = New CustomExpressionContext(radGridView1)
    End Sub
End Class

Public Class CustomExpressionContext
    Inherits Telerik.Data.Expressions.ExpressionContext

    Private grid As RadGridView

    Public Sub New(ByVal grid As RadGridView)
        Me.grid = grid
    End Sub

    Public Function CustomFunction(ByVal id As Integer) As Double
        Dim currentRow As GridViewRowInfo = FindCurrentRowById(id)

        If currentRow IsNot Nothing Then
            Dim quantity As Integer = 0
            Dim price As Decimal = 0

            If grid.Columns.Contains("Price") AndAlso currentRow.Cells("Price").Value IsNot Nothing Then
                Decimal.TryParse(currentRow.Cells("Price").Value.ToString(), price)
            End If

            If grid.Columns.Contains("Quantity") AndAlso currentRow.Cells("Quantity").Value IsNot Nothing Then
                Integer.TryParse(currentRow.Cells("Quantity").Value.ToString(), quantity)
            End If

            Return CDbl((quantity * price))
        End If

        Return 0
    End Function

    Private Function FindCurrentRowById(ByVal id As Integer) As GridViewRowInfo
        For Each row As GridViewRowInfo In grid.Rows

            If CInt(row.Cells("Id").Value) = id Then
                Return row
            End If
        Next

        Return Nothing
    End Function
End Class    
    
    
````

 
