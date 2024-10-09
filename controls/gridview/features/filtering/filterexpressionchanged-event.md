---
title: FilterExpressionChanged Event
page_title: FilterExpressionChanged Event - WinForms GridView Control
description: WinForms GridView offers specific event which is the only place where you can access the final filtering expression as a string.
slug: winforms/gridview/filtering/filterexpressionchanged-event
tags: filterexpressionchanged,event
published: True
position: 5
previous_url: gridview-filtering-filterexpressionchanged-event
---

# FilterExpressionChanged Event

The RadGridView.**FilterExpressionChanged** event is the only place where you can access the final filtering expression as a string. This string value is produced by all items in filtering expressions collection. The expression applies to the whole grid template(single table if hierarchy is used).

#### Filter expression changed event

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=filterExpressionChangedEvent}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=filterExpressionChangedEvent}} 

````C#
void radGridView1_FilterExpressionChanged(object sender, Telerik.WinControls.UI.FilterExpressionChangedEventArgs e)
{
    e.FilterExpression = "(([ProductName] LIKE '%Qu%'))";
}

````
````VB.NET
Private Sub RadGridView1_FilterExpressionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.FilterExpressionChangedEventArgs)
    e.FilterExpression = "(((ProductName) LIKE '%Qu%'))"
End Sub

````

{{endregion}} 

This event is also the final place where the filtering expression can be changed before it is evaluated. 

>caution It is preferable to use the filtering expression objects and modify the filtering string only if you want to access functionality not provided by the filtering expressions API.
>

>caution If the expression cannot be evaluated, *ArgumentException* is thrown. The inner exception describes the concrete reason for the problem.
>



## See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Events]({%slug winforms/gridview/filtering/events%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})

