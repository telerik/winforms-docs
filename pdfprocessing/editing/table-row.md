---
title: TableRow
page_title: TableRow
description: TableRow
slug: pdfprocessing-editing-table-row
tags: tablerow
published: True
position: 6
---

# TableRow



__TableRow__ class represents a single row in a [Table]({%slug pdfprocessing-editing-table%}). Each row contains a collection of
        [TableCell]({%slug pdfprocessing-editing-table-cell%}) instances.
      

* [Inserting a Row](#inserting-a-row-)

* [Using TableCellCollection](#using-tablecellcollection)

## Inserting a Row 

You can easily add a __TableRow__ instance by using the __AddTableRow()__ method of the __Table__ class.
        

The code snippet in __Example 1__ shows how to create a table and add a single row to it.
        

#### __[C#] Example 1: Create TableRow__

{{region radpdfprocessing-editing-tablerow_0}}
	            Table table = new Table();
	            TableRow tableRow = table.Rows.AddTableRow();
	{{endregion}}



#### __[VB.NET] Example 1: Create TableRow__

{{region radpdfprocessing-editing-tablerow_0}}
	        Dim table As New Table()
	        Dim tableRow As TableRow = table.Rows.AddTableRow()
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-tablerow_1"
	        Dim firstCell As TableCell = tableRow.Cells.AddTableCell()
	        Dim secondCell As TableCell = tableRow.Cells.AddTableCell()
	        Dim cellsInRowCount As Integer = tableRow.Cells.Count
	        '#End Region
	    End Sub
	End Class



## Using TableCellCollection

In order to manipulate the cells in a row you can use TableRow's __Cells__ property. The property represents the collection of cells added to this row and provides easy access to each of them.
        

__Example 2__ shows how to add two cells in a row and get the cells count.
        

#### __[C#] Example 2: Access Cells in a TableRow__

{{region radpdfprocessing-editing-tablerow_1}}
	            TableCell firstCell = tableRow.Cells.AddTableCell();
	            TableCell secondCell = tableRow.Cells.AddTableCell();
	            int cellsInRowCount = tableRow.Cells.Count;
	{{endregion}}



#### __[VB.NET] Example 2: Access Cells in a TableRow__

{{region radpdfprocessing-editing-tablerow_1}}
	        Dim firstCell As TableCell = tableRow.Cells.AddTableCell()
	        Dim secondCell As TableCell = tableRow.Cells.AddTableCell()
	        Dim cellsInRowCount As Integer = tableRow.Cells.Count
	        '#End Region
	    End Sub
	End Class



# See Also

 * [Table]({%slug pdfprocessing-editing-table%})

 * [TableCell]({%slug pdfprocessing-editing-table-cell%})
