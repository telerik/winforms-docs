---
title: GridViewRatingColumn
page_title: GridViewRatingColumn - WinForms GridView Control
description: WinForms GridViewRatingColumn allows you to represent and edit numeric value as rating elements.
slug: winforms/gridview/columns/column-types/gridviewratingcolumn
tags: gridviewratingcolumn
published: True
position: 15
previous_url: gridview-columns-gridviewratingcolumn
---

# GridViewRatingColumn

This article describes how setup and use __GridViewRatingColumn__ in __RadGridView__.

__GridViewRatingColumn__ allows you to represent and edit numeric value as rating elements. Each cell in __GridViewRatingColumn__ contains permanent editor from type RadRatingElement. 

![WinForms RadGridView gridview-columns-gridviewratingcolumn 001](images/gridview-columns-gridviewratingcolumn001.png)

The following code snippet demonstrates how to create and add __GridViewRatingColumn__ to RadGridView and also add some sample data in it:

{{source=..\SamplesCS\GridView\Columns\GridViewRatingColumn1.cs region=RatingColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewRatingColumn1.vb region=RatingColumn}} 

````C#
GridViewRatingColumn column = new GridViewRatingColumn("Rating Column");
radGridView1.Columns.Add(column);
radGridView1.Rows.Add(20);
radGridView1.Rows.Add(35);
radGridView1.Rows.Add(70);
radGridView1.Rows.Add(3);
radGridView1.Rows.Add(18);

````
````VB.NET
Dim column As New GridViewRatingColumn("Rating Column")
radGridView1.Columns.Add(column)
radGridView1.Rows.Add(20)
radGridView1.Rows.Add(35)
radGridView1.Rows.Add(70)
radGridView1.Rows.Add(3)
radGridView1.Rows.Add(18)

````

{{endregion}} 

## Properties

__GridViewRatingColumn__ exposes properties that allow the user to control the behavior of the embedded RadRatingElements. The following list represents the most important of them:

* __Minimum:__ defines the minimum value that each cell in the column can hold.
            

* __Maximum:__ defines the maximum value that each cell in the column can hold.
            

* __SelectionMode:__ defines the selection mode of the cells. There are three available modes: __Precise__, __FullItem__ and __HalfItem__.
            

* __Direction:__ this property defines the direction of the fill.
            

* __ReadOnly:__ when this property has value *true* the users are not able to change the values of the cells into the column by mouse or keyboard.
            
# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

