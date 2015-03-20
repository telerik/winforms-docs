---
title: Adding and Inserting Rows
page_title: Adding and Inserting Rows
description: Adding and Inserting Rows
slug: gridview-rows-adding-and-inserting-rows
tags: adding,and,inserting,rows
published: True
position: 2
---

# Adding and Inserting Rows



## Adding rows to RadGridView

Adding new rows in the RadGridView can be achieved via the __Rows__ collection. 
      	For example if the grid control contains three columns – 
        	[GridViewTextBoxColumn]({%slug gridview-columns-gridviewtextboxcolumn%}),
        	[GridViewDecimalColumn]({%slug gridview-columns-gridviewdecimalcolumn%}),
        	[GridViewDateTimeColumn]({%slug gridview-columns-gridviewdatetimecolumn%}) and
        	[GridViewCheckBoxColumn](BCA512FB-1394-4EE4-98A2-9B81CA5DEB72)
        	you can add an empty row as follows:
      	

__RadGridView.Rows.AddNew()__ adds an empty row and allows the user to enter a value for each column cells’

#### __[C#]__

{{region addNewRow}}
	            radGridView1.Rows.AddNew();
	{{endregion}}



#### __[VB.NET]__

{{region addNewRow}}
	        RadGridView1.Rows.AddNew()
	{{endregion}}

![gridview-rows-adding-and-inserting-rows 001](images/gridview-rows-adding-and-inserting-rows001.png)

__RadGridView.Rows.Add(value_for_first_column, value_for_second_column, value_for_third_column)__ – adds a new rows with the
        	specified values. You can use the following code snippet to add values for each column
        

#### __[C#]__

{{region addRow}}
	            radGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, true);
	{{endregion}}



#### __[VB.NET]__

{{region addRow}}
	        RadGridView1.Rows.Add("Adding New Row", 12.5, DateTime.Now, True)
	{{endregion}}



![gridview-rows-adding-and-inserting-rows 002](images/gridview-rows-adding-and-inserting-rows002.png)

You can also add rows by creating an instance of __GridViewDataRowInfo__ and adding it to the __Rows__ collection of RadGridView

#### __[C#]__

{{region addRowWithRowInfo}}
	            GridViewDataRowInfo rowInfo = new GridViewDataRowInfo(this.radGridView1.MasterView);
	            rowInfo.Cells[0].Value = "GridViewDataRowInfo";
	            rowInfo.Cells[1].Value = 11.4;
	            rowInfo.Cells[2].Value = DateTime.Now.AddDays(5);
	            rowInfo.Cells[3].Value = true;
	            radGridView1.Rows.Add(rowInfo);
	{{endregion}}



#### __[VB.NET]__

{{region addRowWithRowInfo}}
	        Dim rowInfo As New GridViewDataRowInfo(Me.RadGridView1.MasterView)
	        rowInfo.Cells(0).Value = "GridViewDataRowInfo"
	        rowInfo.Cells(1).Value = 11.4
	        rowInfo.Cells(2).Value = DateTime.Now.AddDays(5)
	        rowInfo.Cells(3).Value = True
	        RadGridView1.Rows.Add(rowInfo)
	{{endregion}}

![gridview-rows-adding-and-inserting-rows 003](images/gridview-rows-adding-and-inserting-rows003.png)

## Inserting rows in RadGridView

Rows can be inserted at a specified position by using the __Insert__ method of the __Rows__ collection of RadGridView.
    	Below you can see an example of this functionality:
    

#### __[C#]__

{{region insertRow}}
	            GridViewDataRowInfo dataRowInfo = new GridViewDataRowInfo(this.radGridView1.MasterView);
	            dataRowInfo.Cells[0].Value = "Inserted Row";
	            dataRowInfo.Cells[1].Value = 1156.54;
	            dataRowInfo.Cells[2].Value = DateTime.Now.AddDays(14);
	            radGridView1.Rows.Insert(2, dataRowInfo);
	{{endregion}}



#### __[VB.NET]__

{{region insertRow}}
	        Dim dataRowInfo As New GridViewDataRowInfo(Me.RadGridView1.MasterView)
	        rowInfo.Cells(0).Value = "Inserted Row"
	        rowInfo.Cells(1).Value = 1154.54
	        rowInfo.Cells(2).Value = DateTime.Now.AddDays(14)
	        RadGridView1.Rows.Insert(2, dataRowInfo)
	{{endregion}}

![gridview-rows-adding-and-inserting-rows 004](images/gridview-rows-adding-and-inserting-rows004.png)
