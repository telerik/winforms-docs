---
title: Accessing and setting the CurrentCell
page_title: Accessing and setting the CurrentCell
description: Accessing and setting the CurrentCell
slug: gridview-cells-setting-current-cell
tags: accessing,and,setting,the,currentcell
published: True
position: 6
---

# Accessing and setting the CurrentCell



## 

In order to set the current cell of RadGridView, set the CurrentRow and CurrentColumn properties to respective row and column which cross at the desired cell:

#### __[C#] Setting the current cell__

{{source=..\SamplesCS\GridView\Cells\SetttingCurrentCell.cs region=settingTheCurrentCell}}
	            this.radGridView1.CurrentRow = this.radGridView1.Rows[1];
	            this.radGridView1.CurrentColumn = this.radGridView1.Columns[1];
	            this.Text = this.radGridView1.CurrentCell.Value.ToString();
	{{endregion}}



#### __[VB.NET] Setting the current cell__

{{source=..\SamplesVB\GridView\Cells\SettingCurrentCell.vb region=settingTheCurrentCell}}
	        Me.RadGridView1.CurrentRow = Me.RadGridView1.Rows(1)
	        Me.RadGridView1.CurrentColumn = Me.RadGridView1.Columns(1)
	        Me.Text = Me.RadGridView1.CurrentCell.Value.ToString()
	{{endregion}}

![gridview-setting-current-cell 001](images/gridview-setting-current-cell001.png)



## Accessing the current cell

To get an instance of the current cell simply create a variable of type GridDataCellElement and assign to it the current cell:

#### __[C#] Accessing the current cell__

{{source=..\SamplesCS\GridView\Cells\SetttingCurrentCell.cs region=readingTheCurrentCell}}
	            GridDataCellElement cell = radGridView1.CurrentCell;
	{{endregion}}



#### __[VB.NET] Accessing the current cell__

{{source=..\SamplesVB\GridView\Cells\SettingCurrentCell.vb region=readingTheCurrentCell}}
	        Dim cell As GridDataCellElement = Me.RadGridView1.CurrentCell
	{{endregion}}


