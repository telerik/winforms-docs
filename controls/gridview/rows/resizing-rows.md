---
title: Resizing rows
page_title: Resizing rows | RadGridView
description: 
slug: winforms/gridview/rows/resizing-rows
tags: resizing,rows
published: True
position: 18
previous_url: gridview-rows-resizing-rows
---

# Resizing Rows

**RadGridView** provides the end-users with the opportunity to change the height of the rows within the grid. The following sections describe how to change different row heights.

#### GridTableElement Height

````C#
 this.radGridView1.TableElement.RowHeight = 50;

````
````VB.NET
Me.RadGridView1.TableElement.RowHeight = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing001.png)

#### Search Row Height

````C#
this.radGridView1.AllowSearchRow = true; 
this.radGridView1.TableElement.SearchRowHeight = 50;

````
````VB.NET
 Me.RadGridView1.AllowSearchRow = true
 Me.RadGridView1.TableElement.SearchRowHeight = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing002.png)

#### New Row Height

````C#
this.radGridView1.MasterView.TableAddNewRow.Height = 50;

````
````VB.NET
Me.RadGridView1.MasterView.TableAddNewRow.Height = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing003.png)

#### TableHeader Height

````C#
this.radGridView1.TableElement.TableHeaderHeight = 50;

````
````VB.NET
Me.RadGridView1.TableElement.TableHeaderHeight = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing004.png)

#### Pinned Row Height

````C#
this.radGridView1.Rows[0].IsPinned = true;
this.radGridView1.Rows[1].IsPinned = true;
this.radGridView1.Rows[2].IsPinned = true;
this.radGridView1.MasterView.PinnedRows[1].Height = 50;

````
````VB.NET
Me.RadGridView1.Rows(0).IsPinned = True
Me.RadGridView1.Rows(1).IsPinned = True
Me.RadGridView1.Rows(2).IsPinned = True
Me.RadGridView1.MasterView.PinnedRows(1).Height = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing005.png)

#### Filtering Row Height

````C#
this.radGridView1.MasterTemplate.EnableFiltering = true;
this.radGridView1.TableElement.FilterRowHeight = 50;

````
````VB.NET
Me.RadGridView1.MasterTemplate.EnableFiltering = True
Me.RadGridView1.TableElement.FilterRowHeight = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing006.png)

#### Group Header Height

````C#
this.radGridView1.TableElement.GroupHeaderHeight = 50;

````
````VB.NET
Me.RadGridView1.TableElement.GroupHeaderHeight = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing007.png)

#### Summary Row Height
````C#
this.radGridView1.MasterView.SummaryRows[0].Height = 50;

````
````VB.NET
Me.RadGridView1.MasterView.SummaryRows(0).Height = 50

````

{{endregion}} 

![gridview-rows-adding-and-inserting-rows 002](images/row-resizing008.png)
