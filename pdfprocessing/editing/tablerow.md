---
title: TableRow
page_title: TableRow | UI for WinForms Documentation
description: TableRow
slug: winforms/pdfprocessing/editing/tablerow
tags: tablerow
published: True
position: 6
---

# TableRow

__TableRow__ class represents a single row in a [Table]({%slug winforms/pdfprocessing/editing/table%}). Each row contains a collection of [TableCell]({%slug winforms/pdfprocessing/editing/tablecell%}) instances.

* [Inserting a Row](#inserting-a-row-)

* [Using TableCellCollection](#using-tablecellcollection)

## Inserting a Row 

You can easily add a __TableRow__ instance by using the __AddTableRow()__ method of the __Table__ class.

The code snippet in __Example 1__ shows how to create a table and add a single row to it.

#### Example 1: Create TableRow

{{source=..\SamplesCS\PdfProcessing\Editing\TableRow1.cs region=radpdfprocessing-editing-tablerow_0}} 
{{source=..\SamplesVB\PdfProcessing\Editing\TableRow1.vb region=radpdfprocessing-editing-tablerow_0}} 

````C#
Table table = new Table();
TableRow tableRow = table.Rows.AddTableRow();

````
````VB.NET
Dim table As New Table()
Dim tableRow As TableRow = table.Rows.AddTableRow()

````

{{endregion}} 

## Using TableCellCollection

In order to manipulate the cells in a row you can use TableRow's __Cells__ property. The property represents the collection of cells added to this row and provides easy access to each of them.

__Example 2__ shows how to add two cells in a row and get the cells count.

#### Example 2: Access Cells in a TableRow

{{source=..\SamplesCS\PdfProcessing\Editing\TableRow1.cs region=radpdfprocessing-editing-tablerow_1}} 
{{source=..\SamplesVB\PdfProcessing\Editing\TableRow1.vb region=radpdfprocessing-editing-tablerow_1}} 

````C#
TableCell firstCell = tableRow.Cells.AddTableCell();
TableCell secondCell = tableRow.Cells.AddTableCell();
int cellsInRowCount = tableRow.Cells.Count;

````
````VB.NET
Dim firstCell As TableCell = tableRow.Cells.AddTableCell()
Dim secondCell As TableCell = tableRow.Cells.AddTableCell()
Dim cellsInRowCount As Integer = tableRow.Cells.Count

````

{{endregion}}

# See Also

 * [Table]({%slug winforms/pdfprocessing/editing/table%})

 * [TableCell]({%slug winforms/pdfprocessing/editing/tablecell%})
