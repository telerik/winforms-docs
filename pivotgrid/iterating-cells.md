---
title: Iterating Cells
page_title: Iterating Cells
description: Iterating Cells
slug: pivotgrid-iterating-cells
tags: iterating,cells
published: True
position: 14
---

# Iterating Cells



## 

To iterate thought the cells in __RadPivotGrid__ you should first retrieve all row and column groups. This will allow you to create a
          loop and get all cells values for example:
        

#### __C#__

{{source=..\SamplesCS\PivotGrid\IteratingCells.cs region=IterateCells}}
	            
	            var rowGroups = radPivotGrid1.PivotGridElement.GetRowGroups();
	            var colGroups = radPivotGrid1.PivotGridElement.GetColumnGroups();
	            foreach (PivotGroupNode col in colGroups)
	            {
	                foreach (PivotGroupNode row in rowGroups)
	                {
	                    if (row.Group != null && col.Group != null)
	                    {
	                        var Value = this.radPivotGrid1.PivotGridElement.GetAggregateValue(row.Group, col.Group, false, false);
	                        Debug.WriteLine("Row = {0} , Column ={1}, Value ={2}", row.Name, col.Name, Value);
	                    }
	                }
	            }
	
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\PivotGrid\PivotIteratingCells.vb region=IterateCells}}
	
	        Dim rowGroups = radPivotGrid1.PivotGridElement.GetRowGroups()
	        Dim colGroups = radPivotGrid1.PivotGridElement.GetColumnGroups()
	        For Each col As PivotGroupNode In colGroups
	            For Each row As PivotGroupNode In rowGroups
	                If row.Group IsNot Nothing AndAlso col.Group IsNot Nothing Then
	                    Dim Value = Me.radPivotGrid1.PivotGridElement.GetAggregateValue(row.Group, col.Group, False, False)
	                    Debug.WriteLine("Row = {0} , Column ={1}, Value ={2}", row.Name, col.Name, Value)
	                End If
	            Next row
	        Next col
	
	{{endregion}}



Using the above approach you can determine if a cell is selected or programmatically select it as well:
        

#### __C#__

{{source=..\SamplesCS\PivotGrid\IteratingCells.cs region=select}}
	                        
	                        // Print the values of the selected cells.
	                        if (radPivotGrid1.PivotGridElement.IsCellSelected(row, col))
	                        {
	                            var Value = this.radPivotGrid1.PivotGridElement.GetAggregateValue(row.Group, col.Group,false, false);
	                            Debug.WriteLine("Row = {0} , Column ={1}, Value ={2}", row.Name, col.Name, Value);
	                        }
	                        
	                        //Select cell in code
	                        radPivotGrid1.PivotGridElement.SelectCell(row, col, false, true);
	                        
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\PivotGrid\PivotIteratingCells.vb region=select}}
	
	                    ' Print the values of the selected cells.
	                    If radPivotGrid1.PivotGridElement.IsCellSelected(row, col) Then
	                        Dim Value = Me.radPivotGrid1.PivotGridElement.GetAggregateValue(row.Group, col.Group, False, False)
	                        Debug.WriteLine("Row = {0} , Column ={1}, Value ={2}", row.Name, col.Name, Value)
	                    End If
	
	                    'Select cell in code
	                    radPivotGrid1.PivotGridElement.SelectCell(row, col, False, True)
	
	{{endregion}}


