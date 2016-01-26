---
title: GridViewHyperlinkColumn
page_title: GridViewHyperlinkColumn | UI for WinForms Documentation
description: GridViewHyperlinkColumn
slug: winforms/gridview/columns/column-types/gridviewhyperlinkcolumn
tags: gridviewhyperlinkcolumn
published: True
position: 10
previous_url: gridview-columns-gridviewhyperlinkcolumn
---

# GridViewHyperlinkColumn



## 

__GridViewHyperlinkColumn__ allows __RadGridView__ to display, format, edit and open hyperlinks as well as run executable files. The default editor of the column is __RadTextBoxEditor__.

Here is how to create and populate __GridViewHyperlinkColumn__:

{{source=..\SamplesCS\GridView\Columns\GridViewHyperlinkColumn1.cs region=addHyperlinkColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewHyperlinkColumn1.vb region=addHyperlinkColumn}} 

````C#
GridViewHyperlinkColumn column = new GridViewHyperlinkColumn("Hyperlink column");
this.radGridView1.Columns.Add(column);
            
this.radGridView1.Rows.Add("http://www.telerik.com");
this.radGridView1.Rows.Add("http://www.microsoft.com");
this.radGridView1.Rows.Add("http://www.google.com");
this.radGridView1.Rows.Add("http://www.cnn.com");
this.radGridView1.Rows.Add("http://www.bbc.com");
this.radGridView1.Rows.Add("http://www.telerikwatch.com/");
this.radGridView1.Rows.Add("http://www.wikipedia.com");

````
````VB.NET
Dim column As New GridViewHyperlinkColumn("Hyperlink column")
Me.radGridView1.Columns.Add(column)
Me.radGridView1.Rows.Add("http://www.telerik.com")
Me.radGridView1.Rows.Add("http://www.microsoft.com")
Me.radGridView1.Rows.Add("http://www.google.com")
Me.radGridView1.Rows.Add("http://www.cnn.com")
Me.radGridView1.Rows.Add("http://www.bbc.com")
Me.radGridView1.Rows.Add("http://www.telerikwatch.com/")
Me.radGridView1.Rows.Add("http://www.wikipedia.com")

````

{{endregion}} 


![gridview-columns-gridviewhyperlinkcolumn 001](images/gridview-columns-gridviewhyperlinkcolumn001.png)

## Behavior customization

You can choose the action to open hyperlink or run executable using the __HyperlinkOpenAction__ property of the column. It is an enumeration with the following members:
        

* __SingleClick__ – opens the hyperlink on single mouse click

* __DoubleClick__ – opens the hyperlink on double mouse click 

* __None__ – the user cannot open the link.

The __HyperlinkOpenArea__ property of the column determines whether to execute the hyperlink upon click on the cell or upon click on the text of the cell.
        

## Appearance

The __RadGridView__ theme could define styles for the following __GridViewHyperlinkColumn__ cells states:
        

* __Default (unvisited)__

* __Hovered__

* __Clicked__

* __Visited__

The mouse cursor transforms into ‘*hand*’ when hovering hyperlink from the column. 
		

## Events

Here are the __GridViewHyperlinkColumn__ specific events:

* __HyperlinkOpening__ – cancelable event which is raised before opening the hyperlink

* __HyperlinkOpened__ – event which is raised after opening the link.
