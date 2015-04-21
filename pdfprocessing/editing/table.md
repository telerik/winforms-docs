---
title: Table
page_title: Table
description: Table
slug: pdfprocessing-editing-table
tags: table
published: True
position: 4
---

# Table



__Table__ is а utility class that helps you easily create tabular data content. All you need to do is to define the table content and pass a Table instance to a 
        [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%}) or a [RadFixedDocumentEditor]({%slug pdfprocessing-editing-radfixeddocumenteditor%}). From then on these editors are responsible for positioning, measuring, drawing and splitting the table onto pages.
      ![pdfprocessing-editing-table 001](images/pdfprocessing-editing-table001.png)

This article aims to present the table related API in __RadPdfProcessing__. It contains the following sections:
      

* [Defining Table Content](#defining-table-content)

* [Using DefaultCellProperties](#using-defaultcellproperties)

* [Modifying a Table](#modifying-a-table)

* [Drawing Table with RadFixedDocumentEditor](#drawing-table-with-radfixeddocumenteditor)

* [Drawing Table with FixedContentEditor](#drawing-table-with-fixedcontenteditor)

## Defining Table Content

Each table contains a series of [TableRow]({%slug pdfprocessing-editing-table-row%}) instances each of which contains a series of [TableCell]({%slug pdfprocessing-editing-table-cell%}) instances. In order to define a simple table you need to generate the table cells and add some content to them.
        

__Example 1__ shows how to generate a simple table with two rows and three columns with some sample text in each table cell.
        

#### __[C#] Create Simple Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_0}}
	            Table table = new Table();
	         
	            TableRow firstRow = table.Rows.AddTableRow();
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell11");
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell12");
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell13");
	
	            TableRow secondRow = table.Rows.AddTableRow();
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell21");
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell22");
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell23");
	{{endregion}}



#### __[VB.NET] Create Simple Table__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_0}}
	            Dim table As New Table()
	
	            Dim firstRow As TableRow = table.Rows.AddTableRow()
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell11")
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell12")
	            firstRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell13")
	
	            Dim secondRow As TableRow = table.Rows.AddTableRow()
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell21")
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell22")
	            secondRow.Cells.AddTableCell().Blocks.AddBlock().InsertText("cell23")
	{{endregion}}



The result table is shown in __Figure 1__ below.
        

Figure 1: Table![pdfprocessing-editing-table 002](images/pdfprocessing-editing-table002.png)

## Using DefaultCellProperties

If you want to apply default styling to all the cells in a table you can use Table's __DefaultCellProperties__ property. This allows to easily modify the default cell presentation.
        

* __Padding__: - specifies the algorithm which shall be used to layout table contents.
              There are two options available in the __TableLayoutType__ enumeration:
            

* __TableLayoutType.AutoFit__ – The table width fits the content unless the needed width is bigger than the available measuring width.

* __TableLayoutType.FixedWidth__ – The table width always fits the available measuring width.

* __LayoutType__: Specifies the distances between the inner cell border contour and the cell content.
            

* __Borders__: Property of type __TableCellBorders__ which specifies the borders of a single cell. The available borders are left, right, top, bottom, diagonal up and diagonal down.
            

* __Background__: Specifies the background of the cell.
            

__Еxample 2__ shows how to use the __DefaultCellProperties__ of a table
        

#### __[C#] Example 2: Use DefaultCellProperties of Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_1}}
	            Table table = new Table();
	            Border redBorder = new Border(2, new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 0, 0));
	            table.DefaultCellProperties.Borders = new Telerik.Windows.Documents.Fixed.Model.Editing.Tables.TableCellBorders(redBorder);
	            table.DefaultCellProperties.Padding = new System.Windows.Thickness(20, 10, 20, 10);
	            table.DefaultCellProperties.Background = new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 255, 0);
	
	            TableRow firstRow = table.Rows.AddTableRow();
	            firstRow.Cells.AddTableCell();
	            firstRow.Cells.AddTableCell();
	            firstRow.Cells.AddTableCell();
	
	            TableRow secondRow = table.Rows.AddTableRow();
	            secondRow.Cells.AddTableCell();
	            secondRow.Cells.AddTableCell();
	            secondRow.Cells.AddTableCell();
	{{endregion}}



#### __[VB.NET] Example 2: Use DefaultCellProperties of Table__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_1}}
	            Dim table As New Table()
	            Dim redBorder As New Border(2, New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 0, 0))
	            table.DefaultCellProperties.Borders = New Telerik.Windows.Documents.Fixed.Model.Editing.Tables.TableCellBorders(redBorder)
	            table.DefaultCellProperties.Padding = New System.Windows.Thickness(20, 10, 20, 10)
	            table.DefaultCellProperties.Background = New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 255, 0)
	
	            Dim firstRow As TableRow = table.Rows.AddTableRow()
	            firstRow.Cells.AddTableCell()
	            firstRow.Cells.AddTableCell()
	            firstRow.Cells.AddTableCell()
	
	            Dim secondRow As TableRow = table.Rows.AddTableRow()
	            secondRow.Cells.AddTableCell()
	            secondRow.Cells.AddTableCell()
	            secondRow.Cells.AddTableCell()
	{{endregion}}



The result of the snippet in __Example 2__ is demonstrated on __Figure 2__.
        

Figure 2: Result of DefaultCellProperties Modification![pdfprocessing-editing-table 003](images/pdfprocessing-editing-table003.png)

## Modifying a Table

There are several factors that affect tables measuring calculations. Some of them are listed and explained bellow:
        

* __Margin__: Specifies the distances between the table borders outline and the rest of the document's content.
            

* __Padding__: Set through the TableCell's Padding property, it specifies the distances between cell borders inner contour and the cell content.
            

* __BorderSpacing__: Specifies the distance between all the borders in the table. This distance is measured differently depending on the __BorderCollapse__ option.
            

* __BorderCollapse__: Specifies the way the border spacing calculations should be done. There are two options:
            

* __Collapse__: The distance between borders is measured from the middle lines of the borders.
                

* __Separate__: The distance between borders is measured from the outer border contour.
                

The next example aims to demonstrate how border calculations occur with different __BorderCollapse__ option. The code in __Example 3__ creates an empty table and sets default cell padding and red table border with thickness 10 to it.
        

#### __[C#] Example 3: Create Table with Red Border__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_2}}
	            Table table = new Table();
	            table.DefaultCellProperties.Padding = new System.Windows.Thickness(10, 6, 10, 6);
	            Border redBorder = new Border(10, new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 0, 0));
	            table.Borders = new TableBorders(redBorder);
	{{endregion}}



#### __[VB.NET] Example 3: Create Table with Red Border__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_2}}
	            Dim table As New Table()
	            table.DefaultCellProperties.Padding = New System.Windows.Thickness(10, 6, 10, 6)
	            Dim redBorder As New Border(10, New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(255, 0, 0))
	            table.Borders = New TableBorders(redBorder)
	{{endregion}}



__Example 4__ adds a single row with two cells to the table from __Example 3__. The first cell has green border with thickness 5, while the second cell has blue border with thickness 3.
        

#### __[C#] Example 2: Example 4: Add Green and Blue Cells__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_3}}
	            TableRow tableRow = table.Rows.AddTableRow();
	
	            TableCell firstCell = tableRow.Cells.AddTableCell();
	            Border greenBorder = new Border(5, new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 255, 0));
	            firstCell.Borders = new TableCellBorders(greenBorder, greenBorder, greenBorder, greenBorder);
	            firstCell.Blocks.AddBlock().InsertText("green bordered cell");
	
	            TableCell secondCell = tableRow.Cells.AddTableCell();
	            Border blueBorder = new Border(3, new Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 0, 255));
	            secondCell.Borders = new TableCellBorders(blueBorder, blueBorder, blueBorder, blueBorder);
	            secondCell.Blocks.AddBlock().InsertText("blue bordered cell");
	{{endregion}}



#### __[VB.NET] Example 2: Example 4: Add Green and Blue Cells__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_3}}
	            Dim tableRow As TableRow = table.Rows.AddTableRow()
	
	            Dim firstCell As TableCell = tableRow.Cells.AddTableCell()
	            Dim greenBorder As New Border(5, New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 255, 0))
	            firstCell.Borders = New TableCellBorders(greenBorder, greenBorder, greenBorder, greenBorder)
	            firstCell.Blocks.AddBlock().InsertText("green bordered cell")
	
	            Dim secondCell As TableCell = tableRow.Cells.AddTableCell()
	            Dim blueBorder As New Border(3, New Telerik.Windows.Documents.Fixed.Model.ColorSpaces.RgbColor(0, 0, 255))
	            secondCell.Borders = New TableCellBorders(blueBorder, blueBorder, blueBorder, blueBorder)
	            secondCell.Blocks.AddBlock().InsertText("blue bordered cell")
	{{endregion}}



__Figure 3__ shows the table from Example 3 and 4 with BorderCollapse property set to Collapse - all borders are drawn so that their middle lines coincide.
        

#### __[C#] Example 5: Collapse Border__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_4}}
	            table.BorderCollapse = BorderCollapse.Collapse;
	{{endregion}}



#### __[VB.NET] Example 5: Collapse Border__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_4}}
	            table.BorderCollapse = BorderCollapse.Collapse
	{{endregion}}



Figure 3: Collapse Border![pdfprocessing-editing-table 004](images/pdfprocessing-editing-table004.png)

__Figure 4__ shows the same table with BorderCollapse property set to Separate - all borders are drawn so that their outer contour coincide.
        

#### __[C#] Example 6: Separate Border__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_5}}
	            table.BorderCollapse = BorderCollapse.Separate;
	{{endregion}}



#### __[VB.NET] Example 6: Separate Border__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_5}}
	            table.BorderCollapse = BorderCollapse.Separate
	{{endregion}}



Figure 4: Separate Border![pdfprocessing-editing-table 005](images/pdfprocessing-editing-table005.png)

## Drawing Table with RadFixedDocumentEditor

When a table is generated it may be inserted in the PDF document using the __RadFixedDocumentEditor__'s __InsertTable()__ method. This way the table is inserted in the document and split onto pages if necessary. Additionally you may specify the table __LayoutType__ using RadFixedDocumentEditor's __TableProperties__. There are two available options in the __TableLayoutType__ enumeration:
        

* __FixedWidth__: Table width is always equal to the available page width.
            

* __AutoFit__: The table auto fits its width based on the content.
            

When a table is generated it may be inserted in the PDF document using the __RadFixedDocumentEditor__'s __InsertTable()__ method.
          This way the table is inserted in the document and split onto pages if necessary.
        

__Example 7__ generates a simple table with two cells.
        

#### __[C#] Example 7: Create Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_6}}
	            Table table = new Table();
	
	            Border border = new Border();
	            table.Borders = new TableBorders(border);
	            table.DefaultCellProperties.Borders = new TableCellBorders(border, border, border, border);
	
	            table.BorderSpacing = 5;
	            table.BorderCollapse = BorderCollapse.Separate;
	
	            TableRow row = table.Rows.AddTableRow();
	            row.Cells.AddTableCell().Blocks.AddBlock().InsertText("First cell");
	            row.Cells.AddTableCell().Blocks.AddBlock().InsertText("Second cell");
	{{endregion}}



#### __[VB.NET] Example 7: Create Tablee__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_6}}
	            Dim table As New Table()
	
	            Dim border As New Border()
	            table.Borders = New TableBorders(border)
	            table.DefaultCellProperties.Borders = New TableCellBorders(border, border, border, border)
	
	            table.BorderSpacing = 5
	            table.BorderCollapse = BorderCollapse.Separate
	
	            Dim row As TableRow = table.Rows.AddTableRow()
	            row.Cells.AddTableCell().Blocks.AddBlock().InsertText("First cell")
	            row.Cells.AddTableCell().Blocks.AddBlock().InsertText("Second cell")
	{{endregion}}



__Example 8__ inserts the table from __Example 7__ in a RadFixedDocumentEditor and specifies the table layout type to AutoFit.
        

#### __[C#] Example 8: Insert AutoFit Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_7}}
	            RadFixedDocumentEditor editor = new RadFixedDocumentEditor(document);         
	            table.LayoutType = Telerik.Windows.Documents.Fixed.Model.Editing.Flow.TableLayoutType.AutoFit;
	            editor.InsertTable(table);
	{{endregion}}



#### __[VB.NET] Example 8: Insert AutoFit Table__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_7}}
	        Dim editor As New RadFixedDocumentEditor(document)
	        table.LayoutType = Flow.TableLayoutType.AutoFit
	        editor.InsertTable(table)
	{{endregion}}



The result is that the table width is exactly as needed for fitting the cells content as visible in __Figure 5__.
        

Figure 5: AutoFit Table![pdfprocessing-editing-table 006](images/pdfprocessing-editing-table006.png)

Specifying FixedWidth layout option produces different results.
        

#### __[C#] Example 9: Insert FixedWidth Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_8}}
	            table.LayoutType = Telerik.Windows.Documents.Fixed.Model.Editing.Flow.TableLayoutType.FixedWidth;
	            editor.InsertTable(table);
	{{endregion}}



#### __[VB.NET] Example 9: Insert FixedWidth Table__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_8}}
	        table.LayoutType = Flow.TableLayoutType.FixedWidth
	        editor.InsertTable(table)
	{{endregion}}



Figure 6: FixedWidth Table![pdfprocessing-editing-table 007](images/pdfprocessing-editing-table007.png)

## Drawing Table with FixedContentEditor

When in need of more customization options, you can use the __DrawTable()__ method of __FixedContentEditor__ instead of __RadFixedDocumentEditor__.
        

__Example 10__ shows how to draw a rotated table with the help of FixedContentEditor.
        

#### __[C#] Example 9: Insert FixedWidth Table__

{{source=..\SamplesCS\PdfProcessing\Editing\Table1.cs region=radpdfprocessing-editing-table_9}}
	            Table table = GenerateSampleTable();
	
	            Telerik.Windows.Documents.Fixed.Model.RadFixedDocument document = new Telerik.Windows.Documents.Fixed.Model.RadFixedDocument();
	            Telerik.Windows.Documents.Fixed.Model.RadFixedPage page = document.Pages.AddPage();
	            FixedContentEditor editor = new FixedContentEditor(page, new Telerik.Windows.Documents.Fixed.Model.Data.SimplePosition());
	
	            editor.Position.Translate(10, 100);
	            editor.Position.Rotate(-45);
	            editor.DrawTable(table);
	{{endregion}}



#### __[VB.NET] Example 9: Insert FixedWidth Table__

{{source=..\SamplesVB\PdfProcessing\Editing\Table1.vb region=radpdfprocessing-editing-table_9}}
	            Dim table As Table = GenerateSampleTable()
	
	            Dim document As New Telerik.Windows.Documents.Fixed.Model.RadFixedDocument()
	            Dim page As Telerik.Windows.Documents.Fixed.Model.RadFixedPage = document.Pages.AddPage()
	            Dim editor As New FixedContentEditor(page, New Telerik.Windows.Documents.Fixed.Model.Data.SimplePosition())
	
	            editor.Position.Translate(10, 100)
	            editor.Position.Rotate(-45)
	            editor.DrawTable(table)
	{{endregion}}



As a result on __Figure 7__ you can see a 45-degree rotated table similar to the one on Figure 5.
        

Figure 7: FixedWidth Table![pdfprocessing-editing-table 008](images/pdfprocessing-editing-table008.png)

# See Also

 * [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%})

 * [RadFixedDocumentEditor]({%slug pdfprocessing-editing-radfixeddocumenteditor%})

 * [TableRow]({%slug pdfprocessing-editing-table-row%})

 * [TableCell]({%slug pdfprocessing-editing-table-cell%})
