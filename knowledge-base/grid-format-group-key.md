---
title: Format the group key of a DateTime value in RadGridView
description:  Format the group key of a DateTime valuer in RadGridView
type: how-to
page_title: How to format the group key of a DateTime valuer in RadGridView
slug: grid-format-group-key
position: 30
tags: radgridview, grouping, key, datetime
res_type: kb
---

## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.3.911</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadGridView for WinForms</td>
    </tr>
</table>


## Description
 
When performing a grouping operation you may need to format or change the group value. For example if you want to group only by date and ignore the time part of a DateTime value. The bellow solution shows how you can use a custom predicate method to change the key values.

## Solution

Crete a [custom predicate]({%slug winforms/gridview/grouping/custom-grouping%}) function that is able to parse the descriptors and return the group keys. 

````C#
private object PerformGrouping(GridViewRowInfo row, int level)
{
    GroupDescriptor groupDescriptors = this.radGridView1.GroupDescriptors[level];
    object[] key = new object[groupDescriptors.GroupNames.Count];

    for (int k = 0; k < groupDescriptors.GroupNames.Count; k++)
    {
        SortDescriptor descriptor = groupDescriptors.GroupNames[k];
        int index = descriptor.PropertyIndex;

        if (index < 0)
        {
            continue;
        }

        key[k] = this.GetItemKey(row, descriptor);
    }

    return key;
}
protected virtual object GetItemKey(GridViewRowInfo item, SortDescriptor descriptor)
{
    ColorConverter colorConverter = null;
    int index = descriptor.PropertyIndex;
    object keyValue = item.Cells[index].Value;

    if (keyValue == DBNull.Value)
    {
        keyValue = null;
    }
    else if (keyValue is Color)
    {
        if (colorConverter == null)
        {
            colorConverter = new ColorConverter();
        }

        Color color = (Color)keyValue;
        keyValue = color.IsNamedColor ? color.Name : colorConverter.ConvertToString(color);
    }
    else if(descriptor.PropertyName == "ContactDate")
    {
        keyValue = ((DateTime)keyValue).ToShortDateString();
    }

    return keyValue;
}

````
````VB.NET
Private Function PerformGrouping(ByVal row As GridViewRowInfo, ByVal level As Integer) As Object
    Dim groupDescriptors As GroupDescriptor = Me.radGridView1.GroupDescriptors(level)
    Dim key(groupDescriptors.GroupNames.Count - 1) As Object

    For k As Integer = 0 To groupDescriptors.GroupNames.Count - 1
        Dim descriptor As SortDescriptor = groupDescriptors.GroupNames(k)
        Dim index As Integer = descriptor.PropertyIndex

        If index < 0 Then
            Continue For
        End If

        key(k) = Me.GetItemKey(row, descriptor)
    Next k

    Return key
End Function
Protected Overridable Function GetItemKey(ByVal item As GridViewRowInfo, ByVal descriptor As SortDescriptor) As Object
    Dim colorConverter As ColorConverter = Nothing
    Dim index As Integer = descriptor.PropertyIndex
    Dim keyValue As Object = item.Cells(index).Value

    If keyValue Is DBNull.Value Then
        keyValue = Nothing
    ElseIf TypeOf keyValue Is Color Then
        If colorConverter Is Nothing Then
            colorConverter = New ColorConverter()
        End If

        Dim color As Color = DirectCast(keyValue, Color)
        keyValue = If(color.IsNamedColor, color.Name, colorConverter.ConvertToString(color))
    ElseIf descriptor.PropertyName = "ContactDate" Then
        keyValue = DirectCast(keyValue, Date).ToShortDateString()
    End If

    Return keyValue
End Function
````

Here is how you can assign the above method:
````C#
radGridView1.MasterTemplate.GroupPredicate = PerformGrouping;
````
````VB.NET
radGridView1.MasterTemplate.GroupPredicate = PerformGrouping
````

