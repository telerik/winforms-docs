---
title: Working with ColumnChooser
page_title: Working with ColumnChooser
description: Working with ColumnChooser
slug: gridview-columns-working-with-column-chooser
tags: working,with,columnchooser
published: True
position: 6
---

# Working with ColumnChooser



## 

Listed below are the properties which control the behavior of the columns when used with the Column Chooser:
      	

__AllowColumnChooser__ - this property determines whether the Column Chooser is available in the template.
      		By default this property is set to true for all templates
      	

#### __[C#] Enable or Disable ColumnChooser__

{{region AllowColumnChooser}}
	            radGridView1.MasterTemplate.AllowColumnChooser = false;
	{{endregion}}



#### __[VB.NET] Enable or Disable ColumnChooser__

{{region AllowColumnChooser}}
	        RadGridView1.MasterTemplate.AllowColumnChooser = False
	{{endregion}}



__AllowHide__ – this property determines whether the column is allowed to be moved to the Column Chooser. 
      		By default this property is set to true for all columns
      	

#### __[C#] Determines if the specified column is allowed to be dragged to the column chooser dialog__

{{region AllowHide}}
	            radGridView1.Columns["CategoryName"].AllowHide = false;
	{{endregion}}



#### __[VB.NET] Determines if the specified column is allowed to be dragged to the column chooser dialog__

{{region AllowHide}}
	        RadGridView1.Columns("CategoryName").AllowHide = False
	{{endregion}}



__VisibleInColumnChooser__ – by setting this property for each column you determine whether the column will be visible in
      		the Column Chooser when dragged to it. By default this property is set to true for all columns:
      	

#### __[C#] Determines if the specified column is going to be visible in the column chooser dialog__

{{region VisibleInColumnChooser}}
	            radGridView1.Columns["Picture"].VisibleInColumnChooser = false;
	{{endregion}}



#### __[VB.NET] Determines if the specified column is going to be visible in the column chooser dialog__

{{region VisibleInColumnChooser}}
	        RadGridView1.Columns("Picture").VisibleInColumnChooser = False
	{{endregion}}



In order to customize the Column Chooser you can access it directly from the instance of radGridView, as shown in the following example:
      	

#### __[C#] Accessing and customizing the column chooser__

{{region customizeColumnChooser}}
	            radGridView1.ColumnChooser.DesktopLocation = new Point(100,100);
	            radGridView1.ColumnChooser.Font = new Font("Segoe", 15, FontStyle.Bold);
	{{endregion}}



#### __[VB.NET] Accessing and customizing the column chooser__

{{region customizeColumnChooser}}
	        RadGridView1.ColumnChooser.DesktopLocation = New Point(100, 100)
	        RadGridView1.ColumnChooser.Font = New Font("Segoe", 15, FontStyle.Bold)
	{{endregion}}


