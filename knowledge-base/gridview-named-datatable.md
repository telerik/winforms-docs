---
title: How to assign a code-instantiated DataTable to RadGridView DataSource
description: This article shows you how to directly assign a DataTable instance as the RadGridView's DataSource
type: how-to
page_title: How to use a code-instantiated DataTable for RadGridView DataSource
slug: gridview-named-datatable
position: 0
tags: gridview, datatable, datasource
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
| 2021.1.204 | RadGridView for WinForms | [Lance McCarthy](https://www.telerik.com/blogs/author/lance-mccarthy) |
 

## Problem

No data is visible in the **RadGridView** when using a *code-instantiated* `DataTable` for the DataSource.

The following code example will demonstrate the problem

```
// Does not work
var myDataTable = new DataTable();
this.PopulateData(myDataTable);
this.radGridView1.DataSource = myDataTable;
```

## Solution 

The solution is to give the DataTable a name. Normally, this name will automatically be created when using a DataAdapter. However, if you manually create a dataTable instance, you need to provide the name manually, too.

In the following example, we use **"MyProducts"** for the DataTable's name:

````C#
private void RadForm1_Load(object sender, EventArgs e)
{ 
    var myDataTable = new DataTable("MyProducts");
    this.PopulateData(myDataTable);
    this.radGridView1.DataSource = myDataTable;
}
````
````VB.NET
Private Sub RadForm1_Load(ByVal sender As Object, ByVal e As EventArgs)
    Dim myDataTable = New DataTable("MyProducts")
    Me.PopulateData(myDataTable)
    Me.radGridView1.DataSource = myDataTable
End Sub
````
