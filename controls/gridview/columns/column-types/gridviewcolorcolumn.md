---
title: GridViewColorColumn
page_title: GridViewColorColumn | RadGridView
description: GridViewColorColumn__ allows RadGridView to edit colors using RadColorDialog.
slug: winforms/gridview/columns/column-types/gridviewcolorcolumn
tags: gridviewcolorcolumn
published: True
position: 5
previous_url: gridview-columns-gridviewcolorcolumn
---

# GridViewColorColumn

__GridViewColorColumn__ allows **RadGridView** to edit colors using [RadColorDialog]({%slug winforms/forms-and-dialogs/colordialog%}). 

![gridview-columns-gridviewcolorcolumn 001](images/gridview-columns-gridviewcolorcolumn001.png)

__GridViewColorColumn__ is auto-generated for __Color__ properties in the RadGridView.**DataSource**. The following code snippet demonstrates how to create it manually, add it to **RadGridView** and populate it with data:

{{source=..\SamplesCS\GridView\Columns\GridViewColorColumn1.cs region=addColorColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewColorColumn1.vb region=addColorColumn}} 

````C#
GridViewColorColumn column = new GridViewColorColumn("Color column");
this.radGridView1.Columns.Add(column);
this.radGridView1.Rows.Add("Red");
this.radGridView1.Rows.Add("Orange");
this.radGridView1.Rows.Add("Yellow");
this.radGridView1.Rows.Add("Green");
this.radGridView1.Rows.Add("Blue");
this.radGridView1.Rows.Add("Indigo");
this.radGridView1.Rows.Add("Violet");

````
````VB.NET
Dim column As New GridViewColorColumn("Color column")
Me.radGridView1.Columns.Add(column)
Me.radGridView1.Rows.Add("Red")
Me.radGridView1.Rows.Add("Orange")
Me.radGridView1.Rows.Add("Yellow")
Me.radGridView1.Rows.Add("Green")
Me.radGridView1.Rows.Add("Blue")
Me.radGridView1.Rows.Add("Indigo")
Me.radGridView1.Rows.Add("Violet")

````

{{endregion}} 

## GridColorPickerEditor

The default editor of the **GridViewColorColumn** is __GridColorPickerEditor__ which can be accessed in the **CellEditorInitialized** event. The **RadColorPickerEditorElement** gives you full access to the **RadColorDialogForm** by accessing the GridColorPickerElement.ColorDialog.**ColorDialogForm** property.

![gridview-columns-gridviewcolorcolumn 002](images/gridview-columns-gridviewcolorcolumn002.png)

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

