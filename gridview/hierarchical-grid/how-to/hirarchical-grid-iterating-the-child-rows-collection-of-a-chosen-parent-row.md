---
title: Iterating the child rows collection of a chosen parent row in hierarchy RadGridView
page_title: Iterating the child rows collection of a chosen parent row in hierarchy RadGridView
description: Iterating the child rows collection of a chosen parent row in hierarchy RadGridView
slug: gridview-hirarchical-grid-how-to-iterating-the-child-rows-collection-of-a-chosen-parent-row
tags: iterating,the,child,rows,collection,of,a,chosen,parent,row,in,hierarchy,radgridview
published: True
position: 2
---

# Iterating the child rows collection of a chosen parent row in hierarchy RadGridView



## 

In order to iterate all child rows in RadGridView, you need to change the ActiveView of each hierarchy row to
          each of the available Views. This is needed as the grid will create the child rows for the sibling views
          (tabs in the detail cell) only after they are requested - when the tab is clicked.
        

#### __[C#] Iterating the child rows collection of a chosen parent row in hierarchy RadGridView__

{{region iterateChildRows}}
	        void IterateRows()
	        {
	            foreach (GridViewRowInfo row in radGridView1.Rows)
	            {
	                Console.WriteLine(row.Cells[1].Value);
	
	                GridViewHierarchyRowInfo hierarchyRow = row as GridViewHierarchyRowInfo;
	                if (hierarchyRow != null)
	                {
	                    IterateChildRows(hierarchyRow);
	                }
	            }
	        }
	
	        private void IterateChildRows(GridViewHierarchyRowInfo rowInfo)
	        {
	            GridViewInfo currentView = rowInfo.ActiveView;
	
	            foreach (GridViewInfo view in rowInfo.Views)
	            {
	                rowInfo.ActiveView = view;
	
	                foreach (GridViewRowInfo row in rowInfo.ChildRows)
	                {
	                    Console.WriteLine(row.Cells[2].Value);
	                }
	            }
	
	            rowInfo.ActiveView = currentView;
	        }
	{{endregion}}



#### __[VB.NET] Iterating the child rows collection of a chosen parent row in hierarchy RadGridView__

{{region iterateChildRows}}
	    Private Sub IterateRows()
	        For Each row As GridViewRowInfo In radGridView1.Rows
	            Console.WriteLine(row.Cells(1).Value)
	
	            Dim hierarchyRow As GridViewHierarchyRowInfo = TryCast(row, GridViewHierarchyRowInfo)
	            If hierarchyRow IsNot Nothing Then
	                IterateChildRows(hierarchyRow)
	            End If
	        Next
	    End Sub
	
	    Private Sub IterateChildRows(rowInfo As GridViewHierarchyRowInfo)
	        Dim currentView As GridViewInfo = rowInfo.ActiveView
	
	        For Each view As GridViewInfo In rowInfo.Views
	            rowInfo.ActiveView = view
	
	            For Each row As GridViewRowInfo In rowInfo.ChildRows
	                Console.WriteLine(row.Cells(2).Value)
	            Next
	        Next
	
	        rowInfo.ActiveView = currentView
	    End Sub
	
	{{endregion}}




