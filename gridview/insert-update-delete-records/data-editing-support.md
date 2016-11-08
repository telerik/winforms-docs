---
title: Data Editing Support
page_title: Data Editing Support | RadGridView
description: This article shows lists all built-in editors and the properties that control the editing process.
slug: winforms/gridview/insert/update/delete-records/data-editing-support
tags: data,editing,support
published: True
position: 0
previous_url: gridview-insert-update-delete-records-data-editing-support
---

# Data Editing Support

## Control Cell Editing, Addition and Removal of rows

The following properties can be used to restrict user interaction and data modification:

* __AllowEditRow__ 

* __AllowDeleteRow__

* __AllowAddNewRow__

* __BeginEditMode__ determines the action that will initiate editing and can be one of the following __RadGridViewBeginEditingMode__ enumeration members: __BeginEditOnEnter__, __BeginEditOnKeystroke__, __BeginEditOnKeystrokeOrF2__, __BeginEditOnF2__ or __BeginEditProgrammatically__.

## Column Types

RadGridView has the following types of columns capable of editing data that will be persisted automatically:

* [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewImageColumn]({%slug winforms/gridview/columns/column-types/gridviewimagecolumn%})

* [GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%})

By default __RadGridView__ will extract the values from the corresponding editors of the currently edited element when updating or inserting a new record. You can get a reference to the editor object being edited using the RadGridView __ActiveEditor__ property.

## Editors

## RadTextBoxEditor

This editor is intended for displaying and entering text strings and is used for editing [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}) column types. Visually it appears and behaves similar to the __RadTextBox__ control. When the value is loaded in this editor, it is formatted according to setting of the column’s __FormatString__ property. __ValueChanging__ and __ValueChanged__ event are fired on each text modification.

![gridview-insert-update-delete-records-data-editing-support 001](images/gridview-insert-update-delete-records-data-editing-support001.png)

## RadCheckBoxEditor

This editor is specialized to indicate the binary state of a cell value and is used for editing [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%}) column types. Unlike other editors it is present in the grid elements hierarchy as a child element of the __GridCheckBoxCellElement__ and is always visible even if the cell is not edited at the moment. Visually it appears and behaves similar to the __RadCheckBox__ control. __ValueChanging__ and __ValueChanged__ events are fired on every user action that changes the value.

![gridview-insert-update-delete-records-data-editing-support 002](images/gridview-insert-update-delete-records-data-editing-support002.png)

## RadDropDownListEditor

This editor provides the ability to select textual values from a list of predefined items and is used for editing [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%}) column types. The list with the items is populated by a data source set to the __GridViewComboBoxColumn.DataSource__ property. Visually it appears and behaves similar to the __RadDropDownList__ control. If __RadDropDownListEditor__ is configured as a look-up editor then the __ValueMember__ property field will be persisted. __ValueChanging__ and __ValueChanged__ event are fired on change of the selected item in the combo box.

![gridview-insert-update-delete-records-data-editing-support 003](images/gridview-insert-update-delete-records-data-editing-support003.png) 

## RadDateTimeEditor

This editor provides the ability to select or enter dates and is used for editing [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%}) column types. Visually it appears and behaves similar to the standard DateTimePicker control. The date value can be entered as a text directly in the text box part of the editor or selected in the drop-down calendar. When the value is loaded in this editor, it is formatted according to the column’s __FormatString__ property. __ValueChanging__ and __ValueChanged__ events are fired on every change of the date value.

![gridview-insert-update-delete-records-data-editing-support 004](images/gridview-insert-update-delete-records-data-editing-support004.png)

## RadSpinEditor

This editor is intended to provide a convenient way for editing numeric values and is used within [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%}) column types. Visually it appears and behaves similar to the standard __NumericUpDown__ control. There are two buttons on the right side for increasing and decreasing the value in the editor. If the value has decimal places after the decimal point, only the integral part of the value is changed. __ValueChanging__ and __ValueChanged__ events are fired on every change of the value.

![gridview-insert-update-delete-records-data-editing-support 005](images/gridview-insert-update-delete-records-data-editing-support005.png)
