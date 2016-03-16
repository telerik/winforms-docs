---
title: Working with ColumnChooser
page_title: Working with ColumnChooser | UI for WinForms Documentation
description: Working with ColumnChooser
slug: winforms/gridview/columns/working-with-columnchooser
tags: working,with,columnchooser
published: True
position: 6
previous_url: gridview-columns-working-with-column-chooser
---

# Working with ColumnChooser

Listed below are the properties which control the behavior of the columns when used with the Column Chooser:

__AllowColumnChooser__ - this property determines whether the Column Chooser is available in the template. By default this property is set to true for all templates

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

__AllowHide__ – this property determines whether the column is allowed to be moved to the Column Chooser. By default this property is set to true for all columns 

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

__VisibleInColumnChooser__ – by setting this property for each column you determine whether the column will be visible in the Column Chooser when dragged to it. By default this property is set to true for all columns:

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

In order to customize the Column Chooser you can access it directly from the instance of radGridView, as shown in the following example:

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