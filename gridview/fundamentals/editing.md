---
title: Editing
page_title: Editing
description: Editing
slug: gridview-fundamentals-editing
tags: editing
published: True
position: 8
---

# Editing



## 

__RadGridView__ allows data entry, data edit, and validation. The data can be edited by using editors specific for each column type. These include:


<table><tr><td>

<b>RadTextBoxEditor</b></td><td>

It is used with [GridViewTextBoxColumn]({%slug gridview-columns-gridviewtextboxcolumn%}) and allows entering any text data.
            </td></tr><tr><td>

<b>RadMaskedEditBoxEditor</b></td><td>

It is used with [GridViewMaskBoxColumn]({%slug gridview-columns-gridviewmaskboxcolumn%}) and allows entering masked text data. </td></tr><tr><td>

<b>GridSpinEditor</b></td><td>

It is used with [GridViewDecimalColumn]({%slug gridview-columns-gridviewdecimalcolumn%}) and allows entering only numeric data.</td></tr><tr><td>

<b>RadCheckBoxEditor</b></td><td>

It is used with [GridViewCheckBoxColumn](BCA512FB-1394-4EE4-98A2-9B81CA5DEB72) and allows entering only boolean data. </td></tr><tr><td>

<b>RadDateTimeEditor</b></td><td>

It is used with [GridViewDateTimeColumn]({%slug gridview-columns-gridviewdatetimecolumn%}) and allows entering date and time data.</td></tr><tr><td>

<b>RadComboBoxEditor</b></td><td>

It is used with [GridViewComboBoxColumn]({%slug gridview-columns-gridviewcomboboxcolumn%}) and allows selecting items from a list.</td></tr><tr><td>

<b>RadMultiColumnComboBoxElement</b></td><td>

It is used with [GridViewMultiComboBoxColumn]({%slug gridview-columns-gridviewmulticomboboxcolumn%}) and allows selecting items from a grid. </td></tr></table>

In addition to these default editors listed above, __RadGridView__ provides behavior for editors customizations. You can create a custom editor by deriving from __BaseGridEditor__ or any existing editor if none of the standard editors meet your requirements.

>You can find more information about editors in [Editors]({%slug gridview-editors%}) section.
          

The following image shows____several of the default editors in __RadGridView__:![gridview-fundamentals-editing 001](images/gridview-fundamentals-editing001.png)
