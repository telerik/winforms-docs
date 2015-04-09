---
title: Applying formatting only to cells in a child template
page_title: Applying formatting only to cells in a child template
description: Applying formatting only to cells in a child template
slug: gridview-hirarchical-grid-how-to-applying-formatting-only-to-cells-in-a-child-template
tags: applying,formatting,only,to,cells,in,a,child,template
published: True
position: 3
---

# Applying formatting only to cells in a child template



If the parent of the *view template *is not null, the cell element is located in a child template. 

## Example 1

This idea is used in the code snippet below so that the backcolor of the cells located only in the child templates is changed:

#### __[C#] Changing the cells backcolor for cells located in a child template__

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=example1}}
	        void radGridView1_ViewCellFormatting(object sender, CellFormattingEventArgs e)
	        {
	            if (e.CellElement.ViewTemplate.Parent != null)
	            {
	                e.CellElement.BackColor = Color.Yellow;
	                e.CellElement.NumberOfColors = 1;
	                e.CellElement.DrawFill = true;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Changing the cells backcolor for cells located in a child template__

{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=example1}}
	    Private Sub RadGridView1_ViewCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.ViewCellFormatting
	        If e.CellElement.ViewTemplate.Parent IsNot Nothing Then
	            e.CellElement.BackColor = Color.Yellow
	            e.CellElement.NumberOfColors = 1
	            e.CellElement.DrawFill = True
	        End If
	    End Sub
	{{endregion}}



##  Example 2

You can use the following code snippet to change the header height of the first level child template:

#### __[C#] Changing the child template header row height__

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=example2}}
	        void radGridView1_ViewCellFormatting1(object sender, CellFormattingEventArgs e)
	        {
	            if (e.CellElement.ViewTemplate.Parent != null)
	            {
	                e.CellElement.TableElement.TableHeaderHeight = 100;
	            }
	        }
	{{endregion}}



#### __[VB.NET] Changing the child template header row height__

{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=example2}}
	    Private Sub RadGridView1_ViewCellFormatting1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.ViewCellFormatting
	        If e.CellElement.ViewTemplate.Parent IsNot Nothing Then
	            e.CellElement.TableElement.TableHeaderHeight = 100
	        End If
	    End Sub
	{{endregion}}


