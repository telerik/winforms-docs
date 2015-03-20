---
title: Tag property
page_title: Tag property
description: Tag property
slug: gridview-rows-tag-property
tags: tag,property
published: True
position: 9
---

# Tag property



## 

Each row has a *Tag *property associated with it of type object where you can store a custom object.

#### __[C#] Setting the Tag property of a row__

{{region assignTagProperty}}
	            this.radGridView1.Rows[1].Tag = "Some tag";
	{{endregion}}



#### __[VB.NET] Setting the Tag property of a row__

{{region assignTagProperty}}
	        Me.RadGridView1.Rows(1).Tag = "Some tag"
	{{endregion}}





#### __[C#] Setting the Tag property of cells in CellFormatting event__

{{region setTagInCellFormatting}}
	        void radGridView1_CellFormatting(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
	        {
	            if (e.CellElement.RowIndex % 2 == 0)
	            {
	                e.CellElement.RowInfo.Tag = "Some tag";
	            }
	            else
	            {
	                e.CellElement.RowInfo.Tag = "Hide row";
	            }
	        }
	{{endregion}}



#### __[VB.NET] Setting the Tag property of cells in CellFormatting event__

{{region setTagInCellFormatting}}
	    Private Sub RadGridView1_CellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.CellFormatting
	        If (e.CellElement.RowIndex Mod 2 = 0) Then
	            e.CellElement.RowInfo.Tag = "Some tag"
	        Else
	            e.CellElement.RowInfo.Tag = "Hide row"
	        End If
	    End Sub
	{{endregion}}



The most natural place to use the tag is in some of the row/cell events. For example, to make the content of certain cells invisible use the following code:

#### __[C#] Collapsing all rows with the specified tag__

{{region hideRowsWithSpecifiedTag}}
	        void radGridView1_CellFormatting1(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
	        {
	            if (e.CellElement.RowInfo.Tag is String && (string)e.CellElement.RowInfo.Tag == "Hide row")
	            {
	                e.CellElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Collapsing all rows with the specified tag__

{{region hideRowsWithSpecifiedTag}}
	    Private Sub RadGridView1_CellFormatting1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.CellFormatting
	        If TypeOf e.CellElement.RowInfo.Tag Is [String] AndAlso DirectCast(e.CellElement.RowInfo.Tag, String) = "Hide row" Then
	            e.CellElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
	        End If
	    End Sub
	{{endregion}}



>

Note: Cells also have Tag property but it differs substantially from rows one because of the UI Virtualization. Cells are reused and when you scroll the tag value remains unchanged while cell data value is updated.
