---
title: Columns
page_title: Columns | UI for WinForms Documentation
description: Columns
slug: winforms/gridview/fundamentals/columns
tags: columns
published: True
position: 4
---

# Columns

RadGridView currently supports two main column types: 

* __Data-bound columns__ - all columns in this list inherit __GridViewDataColumn__ class 

* __Structure columns__ - all columns, which are added by __RadGridView__ automatically to facilitate some functionality are called structure columns (e.g. expand/collapse the hierarchy)

## Data-bound columns

The following are the available GridViewDataColumn descendants column types used in RadGridView:

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewImageColumn]({%slug winforms/gridview/columns/column-types/gridviewimagecolumn%})

* [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%})

## Structure Columns

### GridViewIndentColumn

This column appears when the grid data is grouped or has a hierarchical structure. The GridViewIndentColumn facilitates expand and collapse functionality. The expand column is always placed in front of all other grid content columns and can not be moved.![gridview-fundamentals-overview-of-radgridview-structure 005](images/gridview-fundamentals-overview-of-radgridview-structure005.png)

### GridViewRowHeaderColumn

This column facilitates row resizing. When you move the cursor to an line in this column, the cursor changes to an arrow and you can resize the respective row. <br/>![gridview-fundamentals-columns 001](images/gridview-fundamentals-columns001.png)
