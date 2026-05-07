---
title: GridViewColorColumn
page_title: GridViewColorColumn - WinForms GridView Control
description: GridViewColorColumn allows WinForms GridView to edit colors using RadColorDialog.
slug: winforms/gridview/columns/column-types/gridviewcolorcolumn
tags: gridviewcolorcolumn
published: True
position: 5
previous_url: gridview-columns-gridviewcolorcolumn
---

# GridViewColorColumn

__GridViewColorColumn__ allows **RadGridView** to edit colors using [RadColorDialog]({%slug winforms/forms-and-dialogs/colordialog%}). 

![WinForms RadGridView GridViewColorColumn](images/gridview-columns-gridviewcolorcolumn001.png)

__GridViewColorColumn__ is auto-generated for __Color__ properties in the RadGridView.**DataSource**. The following code snippet demonstrates how to create it manually, add it to **RadGridView** and populate it with data:

<snippet id='gridview-gridviewcolorcolumn1-addcolorcolumn-cs' />
<snippet id='gridview-gridviewcolorcolumn1-addcolorcolumn-vb' />

## GridColorPickerEditor

The default editor of the **GridViewColorColumn** is __GridColorPickerEditor__ which can be accessed in the **CellEditorInitialized** event. The **RadColorPickerEditorElement** gives you full access to the **RadColorDialogForm** by accessing the GridColorPickerElement.ColorDialog.**ColorDialogForm** property.

![WinForms RadGridView GridColorPickerEditor](images/gridview-columns-gridviewcolorcolumn002.png)

# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

