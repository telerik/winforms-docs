---
title: How to Bind GridView to a Local SQL Server
description: Learn how to bind the WinForms GridView to a local SQL server.
type: how-to 
page_title: How to Bind GridView to a Local SQL Server 
slug: gridview-databinding-tutorial-sql-server
position: 39
tags: grid, binding, sql, serve, data
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

This article offers a step-by-step tutorial how to bind the RadGridView control to the Northwind.Categories table from a local SQL server. 

## Solution

Consider that we have a local SQL server with the Northwind database:

![gridview-databinding-tutorial-sql-server 001](images/gridview-databinding-tutorial-sql-server001.png)

Now, we are going to bind the **RadGridView** control in the project to the Northwind.**Categories** table:

![gridview-databinding-tutorial-sql-server 002](images/gridview-databinding-tutorial-sql-server002.png)

Let's follow the steps:

1\. Select the RadGridView control at design time and open its smart tag. Then, select *Choose DataSource >> Add Project Data Source...* :

![gridview-databinding-tutorial-sql-server 003](images/gridview-databinding-tutorial-sql-server003.png)

2\. Follow the wizard:

![gridview-databinding-tutorial-sql-server 004](images/gridview-databinding-tutorial-sql-server004.png)

![gridview-databinding-tutorial-sql-server 005](images/gridview-databinding-tutorial-sql-server005.png)

![gridview-databinding-tutorial-sql-server 006](images/gridview-databinding-tutorial-sql-server006.png)

![gridview-databinding-tutorial-sql-server 007](images/gridview-databinding-tutorial-sql-server007.png)

3\. Change the Data source to *Microsoft SQL Server* and press OK:

![gridview-databinding-tutorial-sql-server 008](images/gridview-databinding-tutorial-sql-server008.png)

4\. Enter your *Server name* and select the *database name*, e.g. Northwind:

![gridview-databinding-tutorial-sql-server 009](images/gridview-databinding-tutorial-sql-server009.png)

5\. Confirm the changes and continue the wizard:

![gridview-databinding-tutorial-sql-server 010](images/gridview-databinding-tutorial-sql-server010.png)

6\. Select the Northwind.**Categories** table and click Finish:

![gridview-databinding-tutorial-sql-server 011](images/gridview-databinding-tutorial-sql-server011.png)

7\. Once the wizard is completed, the respective BindingSource is generated:

![gridview-databinding-tutorial-sql-server 012](images/gridview-databinding-tutorial-sql-server012.png)

8\. Run the project and the grid will be populated with data:

![gridview-databinding-tutorial-sql-server 013](images/gridview-databinding-tutorial-sql-server013.png)

# See Also

* [Tutorial Binding to DataTable or DataSet]({%slug winforms/gridview/populating-with-data/tutorial:-binding-to-datatable-or-dataset%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})
