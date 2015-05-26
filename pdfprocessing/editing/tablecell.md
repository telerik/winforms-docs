---
title: TableCell
page_title: TableCell | UI for WinForms Documentation
description: TableCell
slug: winforms/pdfprocessing/editing/tablecell
tags: tablecell
published: True
position: 5
---

# TableCell



__TableCell__ class represents a single cell in a [Table]({%slug winforms/pdfprocessing/editing/table%}). Cells are added to a [TableRow]({%slug winforms/pdfprocessing/editing/tablerow%}) instance in the rows collection of a table. The main purpose of the cell is to contain, organize and layout tabular data.
      

* [Inserting a TableCell](#inserting-a-tablecell)

* [Adding Cell Content](#adding-cell-content)

* [Modifying a TableCell](#modifying-a-tablecell)

## Inserting a TableCell

In order to add a cell to а __Тable__ you should add it in the __TableCellCollection__ of a __TableRow__.
        

The code snippet in __Example 1__ shows how to create a table with a single row and add a cell in the first row.
        #_[C#] Example 1: Create TableCell_

	



{{source=..\SamplesCS\PdfProcessing\Editing\TableCell1.cs region=radpdfprocessing-editing-tablecell_0}} 
{{source=..\SamplesVB\PdfProcessing\Editing\TableCell1.vb region=radpdfprocessing-editing-tablecell_0}} 

````C#
            Table table = new Table();
            TableRow firstRow = table.Rows.AddTableRow();
            TableCell firstCell = firstRow.Cells.AddTableCell();
````
````VB.NET
        Dim table As New Table()
        Dim firstRow As TableRow = table.Rows.AddTableRow()
        Dim firstCell As TableCell = firstRow.Cells.AddTableCell()
        '
````

{{endregion}} 




## Adding Cell Content

Using __TableCell__'s __Blocks__ property you can easily add one or several __IBlockElement__ instances to the cell.
        

__Example 2__ shows how to create a cell with a single [Block]({%slug winforms/pdfprocessing/editing/block%}) in it.
        #_[C#] Example 2: Add Content to TableCell_

	



{{source=..\SamplesCS\PdfProcessing\Editing\TableCell1.cs region=radpdfprocessing-editing-tablecell_1}} 
{{source=..\SamplesVB\PdfProcessing\Editing\TableCell1.vb region=radpdfprocessing-editing-tablecell_1}} 

````C#
            Block block = firstCell.Blocks.AddBlock();
            block.InsertText("Text in the cell.");
````
````VB.NET
        Dim block As Block = firstCell.Blocks.AddBlock()
        block.InsertText("Text in the cell.")
        '
````

{{endregion}} 




## Modifying a TableCell

You can easily change the cell's presentation by using the following properties:
        

* __RowSpan__: Defines the number or rows that the TableCell instance should occupy.
            

* __ColumnSpan__: Defines the number of columns that the TableCell instance should occupy.
            

* __Padding__: Specifies the distances between the cells borders inner contour and the cell content. If the value is null, the cell will use the padding from the table's DefaultCellProperties.
            

* __Borders__: Specifies the borders of the cells. If the value is null the cell uses the value from table's DefaultCellProperties.
            

* __Background__: Specifies the background of the cell. If null the cell uses the background from table's DefaultCellProperties.
            

* __PreferredWidth__: Specifies the preferred width of the cell. The final width of the cell may be bigger of the set value in case when other cell from the same column requires bigger PreferredWidth.
            

__Example 3__ demonstrates how to set locally the cell properties to a specific cell. This helps achieve different appearance for this cell by changing its borders and background. Additionally the cell will span onto two rows and two columns.
        #_[C#] Example 2: Change TableCell Appearance_

	



{{source=..\SamplesCS\PdfProcessing\Editing\TableCell1.cs region=radpdfprocessing-editing-tablecell_2}} 
{{source=..\SamplesVB\PdfProcessing\Editing\TableCell1.vb region=radpdfprocessing-editing-tablecell_2}} 

````C#
            firstCell.RowSpan = 2;
            firstCell.ColumnSpan = 2;
            firstCell.Borders = new TableCellBorders(new Border(1, new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(150, 0, 0)));
            firstCell.Background = new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 100, 100);
````
````VB.NET
        firstCell.RowSpan = 2
        firstCell.ColumnSpan = 2
        firstCell.Borders = New TableCellBorders(New Border(1, New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(150, 0, 0)))
        firstCell.Background = New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 100, 100)
        '
````

{{endregion}} 




The result from __Example 3__ may be observed on __Figure 1__.
        
>caption Figure 1: TableCell Appearance

![pdfprocessing-editing-table-cell 001](images/pdfprocessing-editing-table-cell001.png)

# See Also

 * [Table]({%slug winforms/pdfprocessing/editing/table%})

 * [TableRow]({%slug winforms/pdfprocessing/editing/tablerow%})

 * [Block]({%slug winforms/pdfprocessing/editing/block%})
