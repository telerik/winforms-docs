---
title: What is a Row? What is a Column?
page_title: What is a Row? What is a Column? | UI for WinForms Documentation
description: What is a Row? What is a Column?
slug: winforms/spreadprocessing/working-with-rows-and-columns/what-is-row-column
tags: what,is,a,row,column?
published: True
position: 0
---

# What is a Row? What is a Column?

Rows in the document model of RadSpreadProcessing are groups of cells that are on the same horizontal line. Each row is identified with a number. For example the first row has an index 1, the second – 2 and the last – 1048576. Similarly, a column is a group of cells that are vertically stacked and appear on the same vertical line. Columns in RadSpreadProcessing are identified by a letter or a combination of letters. For example, the first column is called A, the second – B and the last column is XFD.

Rows offer several approaches for determining their height:

* Default Height: Each row has a default height of 20. When the row does not have an explicitly set height it appears with its default height.

* Height: The height property allows you to make a given set of rows appear with a fixed height.

* Auto Fit: The auto fit feature sets the height of a specific row based on the content of all cells in the row. The height of the row is determined by the cell containing the highest content.


Similarly, columns expose several ways to set their width:
* Default Width: Each column has a default with of 65. When the column does not have an explicit width set it appears with its default width.

* Width: The width property allows you to make a given set of columns appear with a fixed width.

* Auto Fit: The auto fit feature sets the width of a specified column based on the content of all cells in the column. The width of the column is determined by the cell containing the widest content.

More information about setting row's height and column's width is available in the [Resizing Rows and Columns]({%slug winforms/spreadprocessing/working-with-rows-and-columns/resizing-rows-and-columns%}) article.