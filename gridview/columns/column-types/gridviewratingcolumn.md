---
title: GridViewRatingColumn
page_title: GridViewRatingColumn | UI for WinForms Documentation
description: GridViewRatingColumn
slug: winforms/gridview/columns/column-types/gridviewratingcolumn
tags: gridviewratingcolumn
published: True
position: 15
previous_url: gridview-columns-gridviewratingcolumn
---

# GridViewRatingColumn



This article describes how setup and use GridViewRatingColumn in RadGridView.

GridViewRatingColumn allows you to represent and edit numeric value as rating elements. Each cell in GridViewRatingColumn contains permanent editor from type RadRatingElement. <br>![gridview-columns-gridviewratingcolumn 001](images/gridview-columns-gridviewratingcolumn001.png)

The following code snippet demonstrates how to create and add GridViewRatingColumn to RadGridView and also add some sample data in it:

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

GridViewRatingColumn exposes properties that allow the user to control the behavior of the embedded RadRatingElements. The following list represents the most important of them:
        

* __Minimum__ – defines the minimum value that each cell in the column can hold.
            

* __Maximum__- defines the maximum value that each cell in the column can hold.
            

* __SelectionMode__ – defines the selection mode of the cells. There are three available modes: __Precise, FullItem and HalfItem__.
            

* __Direction__ – this property defines the direction of the fill.
            

* __ReadOnly__ – when this property has value true the users are not able to change the values of the cells into the column by mouse or keyboard.
            
