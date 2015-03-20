---
title: Expanding all rows
page_title: Expanding all rows
description: Expanding all rows
slug: gridview-hirarchical-grid-how-to-expading-all-rows
tags: expanding,all,rows
published: True
position: 1
---

# Expanding all rows



## 

In order to expand all rows in __RadGridView__ you have to iterate through them and set the __IsExpanded__ 
        property to __true__:

#### __[C#] Expanding all rows of RadGridView__

{{region expandAllRows}}
	        void ExpandAllRows(GridViewTemplate template, bool expanded)
	        {
	            foreach (GridViewRowInfo row in template.Rows)
	            {
	                row.IsExpanded = true;
	            }
	            if (template.Templates.Count > 0)
	            {
	                foreach (GridViewTemplate childTemplate in template.Templates)
	                {
	                    ExpandAllRows(childTemplate, true);
	                }
	            }
	        }
	{{endregion}}



#### __[VB.NET] Expanding all rows of RadGridView__

{{region expandAllRows}}
	    Private Sub ExpandAllRows(ByVal template As GridViewTemplate, ByVal expanded As Boolean)
	        For Each row As GridViewRowInfo In template.Rows
	            row.IsExpanded = True
	        Next
	        If template.Templates.Count > 0 Then
	            For Each childTemplate As GridViewTemplate In template.Templates
	                ExpandAllRows(childTemplate, True)
	            Next
	        End If
	    End Sub
	{{endregion}}


