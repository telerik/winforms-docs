---
title: Adding and Inserting Rows
page_title: Adding and Inserting Rows - WinForms GridView Control
description: Learn how to add or insert rows in WinForms GridView at run time. 
slug: winforms/gridview/rows/adding-and-inserting-rows
tags: adding,and,inserting,rows
published: True
position: 2
previous_url: gridview-rows-adding-and-inserting-rows
---

# Adding and Inserting Rows

When **RadGridView** is in unbound mode, you can add new rows to the **Rows** collection.

## Adding rows to RadGridView

For example, if the grid control contains four columns – [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}), [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%}), [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%}) and [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%}) you can add an empty row as it is demonstrated in the code snippet below.
      	
The RadGridView.Rows.__AddNew()__ method adds an empty row and allows the user to enter a value for each column cells’:

#### Add an empty row

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addNewRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addNewRow}} 

````C#
radGridView1.Rows.AddNew();

````
````VB.NET
RadGridView1.Rows.AddNew()

````

{{endregion}} 

>caption Figure 1: Add a blank new row.

![WinForms RadGridView Add a blank new row](images/gridview-rows-adding-and-inserting-rows001.png)

The RadGridView.Rows.__Add(value-for-first-column, value-for-second-column, value-for-third-column)__ method adds a new row with the specified values. You can use the following code snippet to add values for each column:

#### Add a new row with values

{{source=..\SamplesCS\GridView\Rows\AddingAndInsertingRows.cs region=addRow}} 
{{source=..\SamplesVB\GridView\Rows\AddingAndInsertingRows.vb region=addRow}} 

````C#
radGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, true);

````
````VB.NET
RadGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, True)

````

{{endregion}} 

>caption Figure 2: Add new row with data in it.

![WinForms RadGridView Add new row with data in it](images/gridview-rows-adding-and-inserting-rows002.png)

You can also add rows by creating an instance of __GridViewDataRowInfo__ and adding it to the __Rows__ collection of __RadGridView__:

#### Add a GridViewDataRowInfo

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

>caption Figure 3: Add new row by creating an instance first.

![WinForms RadGridView Add new row by creating an instance first](images/gridview-rows-adding-and-inserting-rows003.png)

## Inserting rows in RadGridView

Rows can be inserted at a specified position by using the __Insert__ method of the __Rows__ collection. Below you can see an example of this functionality:

#### Insert a GridViewDataRowInfo

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

>caption Figure 4: Insert row to a specific position.

![WinForms RadGridView Insert row to a specific position](images/gridview-rows-adding-and-inserting-rows004.png)

# See Also
* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

* [Painting Rows]({%slug winforms/gridview/rows/painting-rows%})

