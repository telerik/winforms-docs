---
title: Working with ColumnChooser
page_title: Working with ColumnChooser | RadGridView
description: The Column Chooser allows you to hide or show the columns at run-time.
slug: winforms/gridview/columns/working-with-columnchooser
tags: working,with,columnchooser
published: True
position: 8
previous_url: gridview-columns-working-with-column-chooser
---

# Working with ColumnChooser

Listed below are the properties which control the behavior of the columns when used with the Column Chooser:

__AllowColumnChooser:__ This property determines whether the Column Chooser is available in the template. By default this property is set to true for all templates

#### Enable or Disable ColumnChooser

{{source=..\SamplesCS\GridView\Columns\WorkingWithColumnChooser.cs region=AllowColumnChooser}} 
{{source=..\SamplesVB\GridView\Columns\WorkingWithColumnChooser.vb region=AllowColumnChooser}} 

````C#
radGridView1.MasterTemplate.AllowColumnChooser = false;

````
````VB.NET
RadGridView1.MasterTemplate.AllowColumnChooser = False

````

{{endregion}}

__AllowHide:__ This property determines whether the column is allowed to be moved to the Column Chooser. By default this property is set to *true* for all columns 

#### Determines if the specified column is allowed to be dragged to the column chooser dialog

{{source=..\SamplesCS\GridView\Columns\WorkingWithColumnChooser.cs region=AllowHide}} 
{{source=..\SamplesVB\GridView\Columns\WorkingWithColumnChooser.vb region=AllowHide}} 

````C#
radGridView1.Columns["CategoryName"].AllowHide = false;

````
````VB.NET
RadGridView1.Columns("CategoryName").AllowHide = False

````

{{endregion}}

__VisibleInColumnChooser:__ By setting this property for each column you determine whether the column will be visible in the Column Chooser when dragged to it. By default this property is set to *true* for all columns:

#### Determines if the specified column is going to be visible in the column chooser dialog

{{source=..\SamplesCS\GridView\Columns\WorkingWithColumnChooser.cs region=VisibleInColumnChooser}} 
{{source=..\SamplesVB\GridView\Columns\WorkingWithColumnChooser.vb region=VisibleInColumnChooser}} 

````C#
radGridView1.Columns["Picture"].VisibleInColumnChooser = false;

````
````VB.NET
RadGridView1.Columns("Picture").VisibleInColumnChooser = False

````

{{endregion}}

__ColumnChooserSortOrder:__ Gets or sets the column chooser sort order.

### Accessing the column chooser instance

In order to customize the Column Chooser you can access it directly from the instance of RadGridView, as shown in the following example:

#### Accessing and customizing the column chooser

{{source=..\SamplesCS\GridView\Columns\WorkingWithColumnChooser.cs region=customizeColumnChooser}} 
{{source=..\SamplesVB\GridView\Columns\WorkingWithColumnChooser.vb region=customizeColumnChooser}} 

````C#
radGridView1.ColumnChooser.DesktopLocation = new Point(100,100);
radGridView1.ColumnChooser.Font = new Font("Segoe", 15, FontStyle.Bold);

````
````VB.NET
RadGridView1.ColumnChooser.DesktopLocation = New Point(100, 100)
RadGridView1.ColumnChooser.Font = New Font("Segoe", 15, FontStyle.Bold)

````

{{endregion}}

### Enable the filtering functionality

If the grid contains many hidden columns it is convenient to filter them so you can easily find the desired column. This is supported out of the box and can be enabled by setting the EnableFilter property in the ColumnChooserCreated event handler.

#### Enabling Filtering

{{source=..\SamplesCS\GridView\Columns\WorkingWithColumnChooser.cs region=EnableChooserFiltering}} 
{{source=..\SamplesVB\GridView\Columns\WorkingWithColumnChooser.vb region=EnableChooserFiltering}}
````C#
private void RadGridView1_ColumnChooserCreated(object sender, ColumnChooserCreatedEventArgs e)
{
    e.ColumnChooser.EnableFilter = true;
}

````
````VB.NET
Private Sub RadGridView1_ColumnChooserCreated(ByVal sender As Object, ByVal e As ColumnChooserCreatedEventArgs)
    e.ColumnChooser.EnableFilter = True
End Sub

```` 

 

{{endregion}}


# See Also

* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Overview]({%slug winforms/gridview/columns%})

* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

