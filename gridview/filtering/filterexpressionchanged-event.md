---
title: FilterExpressionChanged Event
page_title: FilterExpressionChanged Event | RadGridView
description: FilterExpressionChanged Event
slug: winforms/gridview/filtering/filterexpressionchanged-event
tags: filterexpressionchanged,event
published: True
position: 5
previous_url: gridview-filtering-filterexpressionchanged-event
---

# FilterExpressionChanged Event

This event is the only place in *RadGridView* API where you can access the final filtering expression as a string. This string value is produced by all items in filtering expressions collection. The expression applies to the whole grid template(single table if hierarchy is used).

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



