---
title: Adding and Inserting Rows
page_title: Adding and Inserting Rows | UI for WinForms Documentation
description: Adding and Inserting Rows
slug: winforms/gridview/rows/adding-and-inserting-rows
tags: adding,and,inserting,rows
published: True
position: 2
---

# Adding and Inserting Rows



## Adding rows to RadGridView

Adding new rows in the RadGridView can be achieved via the __Rows__ collection. For example if the grid control contains three columns – [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}), [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%}), [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%}) and [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%}) you can add an empty row as follows:
      	

__RadGridView.Rows.AddNew()__ adds an empty row and allows the user to enter a value for each column cells’

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addNewRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addNewRow}} 

````C#
radGridView1.Rows.AddNew();

````
````VB.NET
RadGridView1.Rows.AddNew()

````

{{endregion}} 


![gridview-rows-adding-and-inserting-rows 001](images/gridview-rows-adding-and-inserting-rows001.png)

__RadGridView.Rows.Add(value-for-first-column, value-for-second-column, value-for-third-column)__ – adds a new rows with the specified values. You can use the following code snippet to add values for each column

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addRow}} 

````C#
radGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, true);

````
````VB.NET
RadGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, True)

````

{{endregion}} 


![gridview-rows-adding-and-inserting-rows 002](images/gridview-rows-adding-and-inserting-rows002.png)

You can also add rows by creating an instance of __GridViewDataRowInfo__ and adding it to the __Rows__ collection of __RadGridView__

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addRowWithRowInfo}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addRowWithRowInfo}} 

````C#
GridViewDataRowInfo rowInfo = new GridViewDataRowInfo(this.radGridView1.MasterView);
rowInfo.Cells[0].Value = "GridViewDataRowInfo";
rowInfo.Cells[1].Value = 11.4;
rowInfo.Cells[2].Value = DateTime.Now.AddDays(5);
rowInfo.Cells[3].Value = true;
radGridView1.Rows.Add(rowInfo);

````
````VB.NET
Dim rowInfo As New GridViewDataRowInfo(Me.RadGridView1.MasterView)
rowInfo.Cells(0).Value = "GridViewDataRowInfo"
rowInfo.Cells(1).Value = 11.4
rowInfo.Cells(2).Value = DateTime.Now.AddDays(5)
rowInfo.Cells(3).Value = True
RadGridView1.Rows.Add(rowInfo)

````

{{endregion}} 


![gridview-rows-adding-and-inserting-rows 003](images/gridview-rows-adding-and-inserting-rows003.png)

## Inserting rows in RadGridView

Rows can be inserted at a specified position by using the __Insert__ method of the __Rows__ collection of RadGridView. Below you can see an example of this functionality:

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=insertRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=insertRow}} 

````C#
GridViewDataRowInfo dataRowInfo = new GridViewDataRowInfo(this.radGridView1.MasterView);
dataRowInfo.Cells[0].Value = "Inserted Row";
dataRowInfo.Cells[1].Value = 1156.54;
dataRowInfo.Cells[2].Value = DateTime.Now.AddDays(14);
radGridView1.Rows.Insert(2, dataRowInfo);

````
````VB.NET
Dim dataRowInfo As New GridViewDataRowInfo(Me.RadGridView1.MasterView)
rowInfo.Cells(0).Value = "Inserted Row"
rowInfo.Cells(1).Value = 1154.54
rowInfo.Cells(2).Value = DateTime.Now.AddDays(14)
RadGridView1.Rows.Insert(2, dataRowInfo)

````

{{endregion}} 


![gridview-rows-adding-and-inserting-rows 004](images/gridview-rows-adding-and-inserting-rows004.png)
