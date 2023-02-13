---
title: GridViewCalculatorColumn
page_title: GridViewCalculatorColumn - WinForms GridView Control
description: GridViewCalculatorColumn allows WinForms GridView to edit numbers using popup with calculator.
slug: winforms/gridview/columns/column-types/gridviewcalculatorcolumn
tags: gridviewcalculatorcolumn
published: True
position: 3
previous_url: gridview-columns-gridviewcalculatorcolumn
---

# GridViewCalculatorColumn

__GridViewCalculatorColumn__ allows RadGridView to edit numbers using popup with calculator. The default editor of the column is __RadCalculatorEditor__.

![WinForms RadGridView GridViewCalculatorColumn](images/gridview-columns-gridviewcalculatorcolumn001.png)

__GridViewCalculatorColumn__ is never auto-generated. The following code snippet demonstrates how to create and add the column to RadGridView and also add some sample data in it:

{{source=..\SamplesCS\GridView\Columns\GridViewCalculatorColumn1.cs region=addCalculatorColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCalculatorColumn1.vb region=addCalculatorColumn}} 

````C#
GridViewCalculatorColumn column = new GridViewCalculatorColumn("Calculator column");
this.radGridView1.Columns.Add(column);
this.radGridView1.Rows.Add(3.14159);
this.radGridView1.Rows.Add(2.71828);
this.radGridView1.Rows.Add(1.41421);
this.radGridView1.Rows.Add(0.57721);
this.radGridView1.Rows.Add(4.66920);
this.radGridView1.Rows.Add(3.27582);
this.radGridView1.Rows.Add(0.56714);

````
````VB.NET
Dim column As New GridViewCalculatorColumn("Calculator column")
Me.radGridView1.Columns.Add(column)
Me.radGridView1.Rows.Add(3.14159)
Me.radGridView1.Rows.Add(2.71828)
Me.radGridView1.Rows.Add(1.41421)
Me.radGridView1.Rows.Add(0.57721)
Me.radGridView1.Rows.Add(4.6692)
Me.radGridView1.Rows.Add(3.27582)
Me.radGridView1.Rows.Add(0.56714)

````

{{endregion}} 



# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

