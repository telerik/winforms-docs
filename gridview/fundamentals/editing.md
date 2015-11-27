---
title: Editing
page_title: Editing | UI for WinForms Documentation
description: Editing
slug: winforms/gridview/fundamentals/editing
tags: editing
published: True
position: 9
---

# Editing

## 

__RadGridView__ allows data entry, data edit, and validation. The data can be edited by using editors specific for each column type. These include:

| Editor | Column |
| ------ | ------ |
| __RadTextBoxEditor__ |It is used with [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}) and allows entering any text data.|
| __RadMaskedEditBoxEditor__ |It is used with [GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%}) and allows entering masked text data.|
| __GridSpinEditor__ |It is used with [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%}) and allows entering only numeric data.|
| __RadCheckBoxEditor__ |It is used with [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%}) and allows entering only boolean data.|
| __RadDateTimeEditor__ |It is used with [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%}) and allows entering date and time data.|
| __RadComboBoxEditor__ |It is used with [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%}) and allows selecting items from a list.|
| __RadMultiColumnComboBoxElement__ |It is used with [GridViewMultiComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmulticomboboxcolumn%}) and allows selecting items from a grid.|

In addition to these default editors listed above, __RadGridView__ provides behavior for editors customizations. You can create a custom editor by deriving from __BaseGridEditor__ or any existing editor if none of the standard editors meet your requirements.

>note You can find more information about editors in [Editors]({%slug winforms/gridview/editors/editors%}) section.
>


The following image shows several of the default editors in __RadGridView__:![gridview-fundamentals-editing 001](images/gridview-fundamentals-editing001.png)
