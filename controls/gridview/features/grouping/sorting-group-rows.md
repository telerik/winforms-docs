---
title: Sorting group rows
page_title: Sorting group rows - WinForms GridView Control
description: Learn how to customize the groups sort order in WinForms GridView.
slug: winforms/gridview/grouping/sorting-group-rows
tags: sorting,group,rows
published: True
position: 8
previous_url: gridview-grouping-sorting-group-rows
---

# Sorting group rows



By default, when you perform grouping, __RadGridView__ sorts the created group rows alphabetically. This article demonstrates how to customize the groups sort order.

## 

Consider the __RadGridView__ is [bound]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%}) to a list of custom objects. If you group by __DepartmentId__ you will notice that the group rows are sorted alphabetically as this property is *typeof(string)*.
        
>caption Figure 1: Alphabetical sort order

![WinForms RadGridView Alphabetical sort order](images/gridview-grouping-sorting-group-rows001.png)

However, you can change this sort order by using a group comparer. It is necessary to create a class that implements the  __IComparer<Group<GridViewRowInfo>>__ interface where you should return an integer number in the implemented __Compare__ method. The following code snippet illustrates how to order the group rows considering the integer value, not the string:

#### Custom group comparer

{{source=..\SamplesCS\GridView\Grouping\SortingGroupRows.cs region=GroupComparer}} 
{{source=..\SamplesVB\GridView\Grouping\SortingGroupRows.vb region=GroupComparer}} 

````C#
        
public class GroupComparer : IComparer<Group<GridViewRowInfo>>
{
    public int Compare(Group<GridViewRowInfo> x, Group<GridViewRowInfo> y)
    {
        int parsedX;
        int parsedY;
        if (int.TryParse(((object[])x.Key).First().ToString(), out parsedX) &&
            int.TryParse(((object[])y.Key).First().ToString(), out parsedY))
        {
            int result = parsedX.CompareTo(parsedY);
            DataGroup xGroup = x as DataGroup;
            if (xGroup != null && ((DataGroup)x).GroupDescriptor.GroupNames.First().Direction == ListSortDirection.Descending)
            {
                 result *= -1;
            }
            return result;
        }
        return ((object[])x.Key)[0].ToString().CompareTo(((object[])y.Key)[0].ToString());
    }
}

````
````VB.NET
Public Class GroupComparer
    Implements IComparer(Of Group(Of GridViewRowInfo))
    Public Function [Compare](x As Group(Of GridViewRowInfo), y As Group(Of GridViewRowInfo)) As Integer _
    Implements IComparer(Of Group(Of GridViewRowInfo)).[Compare]
        Dim parsedX As Integer
        Dim parsedY As Integer
        If Integer.TryParse(DirectCast(x.Key, Object()).First().ToString(), parsedX) AndAlso Integer.TryParse(DirectCast(y.Key, Object()).First().ToString(), parsedY) Then
            Dim result As Integer = parsedX.CompareTo(parsedY)
            Dim xGroup As DataGroup = TryCast(x, DataGroup)
            If xGroup IsNot Nothing AndAlso DirectCast(x, DataGroup).GroupDescriptor.GroupNames.First().Direction = ListSortDirection.Descending Then
                result *= -1
            End If
            Return result
        End If
        Return DirectCast(x.Key, Object())(0).ToString().CompareTo(DirectCast(y.Key, Object())(0).ToString())
    End Function
End Class

````

{{endregion}} 

The last thing you need to do is to replace the default MasterTemplate.__GroupComparer__ with your custom one:

#### Custom group comparer

{{source=..\SamplesCS\GridView\Grouping\SortingGroupRows.cs region=Replace}} 
{{source=..\SamplesVB\GridView\Grouping\SortingGroupRows.vb region=Replace}} 

````C#
            
this.radGridView1.MasterTemplate.GroupComparer = new GroupComparer();

````
````VB.NET
Me.RadGridView1.MasterTemplate.GroupComparer = New GroupComparer()

````

{{endregion}} 

>caption Figure 2: Custom Sort Order of Group Rows

![WinForms RadGridView Custom sort order of group rows](images/gridview-grouping-sorting-group-rows002.png)
# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})

