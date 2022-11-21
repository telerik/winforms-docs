---
title: Visual Structure
page_title: Visual Structure - RadSpreadsheet
description: RadSpreadsheet is a control that allows editing tabular data utilizing a variety of cell formatting options, styles and themes.
slug: radspreadsheet-visual-structure
tags: visual,structure
published: True
position: 2
---

# Visual Structure

This section defines terms and concepts used in the scope of __RadSpreadsheet__ that will help you get familiar with the control. We highly encourage you to read the article before you continue with the rest of the documentation of __RadSpreadsheet__.
      

__RadSpreadsheet__ is a control that allows editing tabular data utilizing a variety of cell formatting options, styles and themes. It can contain one or more Worksheets, each of which with its own Scale Factor. Every worksheet contains cells that are identified by a row number (rows are represented by numbers - 1, 2, 3) and a column number (columns are represented by letters of the alphabet in the UI).
      

## Spreadsheet UI Visual Structure

![Rad Spreadsheet Visual Structure 01](images/radspreadsheet-structure001.png)

* __Ribbon View:__ An instance of RadRibbonView filled with controls which allow you to perform different actions on RadSpreadsheet. Some of the commands include open/save different types of files, undo/redo, copy/paste, apply different types of format or styles, even insert complex formulas.
            

* __Formula Bar:__  It is located above the work area of the RadSpreadsheet. It holds three main components each one containing information about the active cell/cell range.
            

* __RadSpreadsheet:__  A control that has a number of built-in features and tools, such as functions, formulas and data analysis tools that make it easier to work with large amounts of data.
            
* __StatusBar:__  A control displaying the current status of the document and allowing zooming the content.

## RadSpradsheet's Ribbon View Visual Structure

![Rad Spreadsheet Visual Structure 02](images/radspreadsheet-structure002.png)

* __Title__: The title allows you to specify the name of the application or the current document. In this case we have chosen the name "Spreadsheet".
            

* __Ribbon Tab__: RadSpradsheet comes with a RibbonView full of controls for manipulating it. Those controls are grouped logically in tabs. Every tab has a name and it pretty much describes what can be achieved with its content.
            

* __Ribbon Group__: Furthermore every tab is divided into groups. Groups allow for finer grained distribution of the controls among the tabs.
            

* __Quick Access Toolbar__: It is located in the upper left corner of the Spreadsheet UI above the individual tabs of the Ribbon View. It contains shortcuts to a number of commonly performed tasks such as save, undo and redo.
            

* __Application Menu__: It is placed to the left of the Quick Access Toolbar. It enables you to open spreadsheet files, create new ones or save them to different file formats.
            

## RadSpreadsheet's Formula Bar Visual Structure

![Rad Spreadsheet Visual Structure 03](images/radspreadsheet-structure003.png)

* __Name Box__: It displays the cell reference of the active cell or the active cell range.
            

* __Buttons Box__: Contains three buttons. The first one, which cancels the edit action, and the second one, which accepts the edit action, are active only when editing a cell. The third button is always active and it opens the Insert Function dialog.
            

* __Formula Box__: Displays the data or formula stored in the active cell. It can be used to enter or edit a formula, a function, or data in a cell.

## RadSpreadsheet's Status Bar Visual Structure

![Rad Spreadsheet Visual Structure 05](images/radspreadsheet-structure004.png)

* __Label__: Indicates the current status of the loaded document.
            
* __Zoom Control__: Zooms in and out the document. The control consists of a button opening a dialog with the zoom percentage and a track bar.

## RadSpreadsheet Visual Structure

![Rad Spreadsheet Visual Structure 04](images/radspreadsheet-structure005.png)

1. __Select All Control__: Allows you to quickly select all cells in a worksheet. It is located in the top left corner of the worksheet where the row header and column header meet.

2. __Worksheet__: A grid or table composed of columns and rows that make it convenient to enter, organize, calculate and consolidate data. It is composed of cells where you actually keep and manipulate data.
            
3. __Merged Cell__: Multiple adjacent cells combined into a single larger cell. When merging multiple cells, only the value of the top-left cell is preserved.

4. __Column Header__: It is the top-most row containing the letters used to identify each column in a worksheet. It is located above row 1 in the worksheet.

5. __Row Header__: It is the left-most column containing the numbers used to identify each row in a worksheet. It is located to the left of column A in the worksheet.
        
6. __Cell__: Cell is the intersection point between a row and a column. It is the basic storage unit for data in RadSpreadsheet. In a cell name the row numbers always comes after the column letter.

7. __Rows__: Rows run horizontally in a worksheet. Each row is identified by a number in the row header. There are more than one million rows in each worksheet.

8. __Column__: Columns run vertically in a worksheet. Each column is identified by a letter in the column header starting with A and running through to XFD.

9. __Selection__: can occur either using the mouse pointer or through code behind. All actions performed on data, including formatting must be executed using selection.

10. __Sheet Selector__: Allows you to change the currently selected sheet or create a new one. In addition you can change the name of a given worksheet or the color of the corresponding tab.
       
