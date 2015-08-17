---
title: GridViewColorColumn
page_title: GridViewColorColumn | UI for WinForms Documentation
description: GridViewColorColumn
slug: winforms/gridview/columns/column-types/gridviewcolorcolumn
tags: gridviewcolorcolumn
published: True
position: 5
---

# GridViewColorColumn

__GridViewColorColumn__ allows RadGridView to edit colors using __RadColorDialog__. The default editor of the column is __GridColorPickerEditor__. ![gridview-columns-gridviewcolorcolumn 001](images/gridview-columns-gridviewcolorcolumn001.png)

__GridViewColorColumn__ is auto-generated for __Color fields__ in the RadGridView DataSource. The following code snippet demonstrates how to create manually and add the column to RadGridView and also add some sample data in it:

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
        '
````

{{endregion}} 



