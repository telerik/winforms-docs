---
title: FilterExpressionChanged Event
page_title: FilterExpressionChanged Event
description: FilterExpressionChanged Event
slug: gridview-filtering-filterexpressionchanged-event
tags: filterexpressionchanged,event
published: True
position: 5
---

# FilterExpressionChanged Event



## 

This event is the only place in *RadGridView* API where you can access the final filtering expression as a string.
          This string value is produced by all items in filtering expressions collection. The expression applies to the whole grid template(single table if hierarchy is used).
        

#### __[C#] Filter expression changed event__

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=filterExpressionChangedEvent}}
	        void radGridView1_FilterExpressionChanged(object sender, Telerik.WinControls.UI.FilterExpressionChangedEventArgs e)
	        {
	            e.FilterExpression = "(([ProductName] LIKE '%Qu%'))";
	        }
	{{endregion}}



#### __[VB.NET] Filter expression changed event__

{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=filterExpressionChangedEvent}}
	    Private Sub RadGridView1_FilterExpressionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.FilterExpressionChangedEventArgs)
	        e.FilterExpression = "(((ProductName) LIKE '%Qu%'))"
	    End Sub
	{{endregion}}



This event is also the final place where the filtering expression can be changed before it is evaluated. 


