---
title: Expanding all rows
page_title: Expanding all rows | RadGridView
description: This article shows how you can expand all rows in a hierarchical grid. 
slug: winforms/gridview/hierarchical-grid/how-to/expanding-all-rows
tags: expanding,all,rows
published: True
position: 1
previous_url: gridview-hirarchical-grid-how-to-expading-all-rows
---

# Expanding all rows


In order to expand all rows in __RadGridView__ you have to iterate through them and set the __IsExpanded__ property to __true__:

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=expandAllRows}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=expandAllRows}} 

````C#
void ExpandAllRows(GridViewTemplate template, bool expanded)
{
    foreach (GridViewRowInfo row in template.Rows)
    {
        row.IsExpanded = expanded;
    }
    if (template.Templates.Count > 0)
    {
        foreach (GridViewTemplate childTemplate in template.Templates)
        {
            ExpandAllRows(childTemplate, true);
        }
    }
}

````
````VB.NET
Private Sub ExpandAllRows(ByVal template As GridViewTemplate, ByVal expanded As Boolean)
    For Each row As GridViewRowInfo In template.Rows
        row.IsExpanded = expanded
    Next
    If template.Templates.Count > 0 Then
        For Each childTemplate As GridViewTemplate In template.Templates
            ExpandAllRows(childTemplate, True)
        Next
    End If
End Sub

````

{{endregion}} 



# See Also
* [Accessing Child Templates]({%slug winforms/gridview/hierarchical-grid/how-to/accessing-child-templates%})

* [Applying formatting only to cells in a child template]({%slug winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template%})

* [Iterating the child rows collection of a chosen parent row in hierarchy RadGridView]({%slug winforms/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview%})

* [Resizing child GridViewInfo]({%slug winforms/gridview/hierarchical-grid/how-to/resizing-child-gridviewinfo%})

