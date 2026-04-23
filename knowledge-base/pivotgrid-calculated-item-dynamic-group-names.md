---
title: How to Dynamically Read Item Names in a PivotGrid Calculated Item
description: Learn how to create a CalculatedItem that reads group names at runtime instead of hardcoding them in RadPivotGrid for WinForms.
type: how-to
page_title: How to Dynamically Read Item Names in a PivotGrid Calculated Item
slug: pivotgrid-calculated-item-dynamic-group-names
tags: pivotgrid, calculated, item, dynamic, group, names
res_type: kb
---

## Environment

|Product Version|Product|
|----|----| 
|2025.1+|RadPivotGrid for WinForms|

## Description

The standard approach for implementing a `CalculatedItem` requires hardcoding the group names passed to `GetAggregateValue`. For example, the built-in documentation demonstrates calling `aggregateSummaryValues.GetAggregateValue("Andrew Fuller")` with a string literal. This becomes impractical when the data source contains a dynamic set of values or when the same calculated item must work across different data sets.

How can I iterate over the available group names inside a `CalculatedItem` without knowing them in advance? How can I create a calculated item that automatically adapts to the data?

This KB also answers the following questions:

* How to enumerate sibling groups inside a CalculatedItem in RadPivotGrid?
* How to create a CalculatedItem that calculates an average of all groups?
* How to use the Coordinate property in IAggregateSummaryValues to discover group names?

## Solution

The `IAggregateSummaryValues` interface exposes a `Coordinate` property of type `Coordinate`. This struct contains `RowGroup` and `ColumnGroup` properties, each of which is an `IGroup`. By navigating up to the `Parent` of the current group and iterating its `Groups` collection, you can discover sibling group names at runtime and pass them to `GetAggregateValue`.

Each `IGroup` exposes:

* `Name`&mdash;The group key value.
* `Parent`&mdash;The parent group in the hierarchy.
* `Groups`&mdash;The child groups (`IReadOnlyList<IGroup>`).
* `Type`&mdash;The group type (`BottomLevel`, `GrandTotal`, `Subheading`, `Subtotal`).

To determine whether a sibling group represents a regular data item or another calculated item, check if the group's `Name` is a `CalculatedItem` instance. This prevents the calculated item from including other calculated items in its own computation.

### Implementing a Dynamic Calculated Item

The following example creates a calculated item that computes the average of all sibling groups dynamically:

````C#
public class AverageAllItems : CalculatedItem
{
    protected override AggregateValue GetValue(IAggregateSummaryValues aggregateSummaryValues)
    {
        IGroup currentGroup = aggregateSummaryValues.Coordinate.ColumnGroup;
        IGroup parentGroup = currentGroup.Parent;

        if (parentGroup == null || !parentGroup.HasGroups)
        {
            return AggregateValue.ErrorAggregateValue;
        }

        List<AggregateValue> values = new List<AggregateValue>();

        foreach (IGroup sibling in parentGroup.Groups)
        {
            if (sibling.Name is CalculatedItem)
            {
                continue;
            }

            AggregateValue value = aggregateSummaryValues.GetAggregateValue(sibling.Name);
            if (value != null && !value.IsError())
            {
                values.Add(value);
            }
        }

        if (values.Count == 0)
        {
            return AggregateValue.ErrorAggregateValue;
        }

        double average = values.Average(v => v.ConvertOrDefault<double>());
        return new DoubleAggregateValue(average);
    }
}

````
````VB.NET
Public Class AverageAllItems
    Inherits CalculatedItem

    Protected Overrides Function GetValue(aggregateSummaryValues As IAggregateSummaryValues) As AggregateValue
        Dim currentGroup As IGroup = aggregateSummaryValues.Coordinate.ColumnGroup
        Dim parentGroup As IGroup = currentGroup.Parent

        If parentGroup Is Nothing OrElse Not parentGroup.HasGroups Then
            Return AggregateValue.ErrorAggregateValue
        End If

        Dim values As New List(Of AggregateValue)()

        For Each sibling As IGroup In parentGroup.Groups
            If TypeOf sibling.Name Is CalculatedItem Then
                Continue For
            End If

            Dim value As AggregateValue = aggregateSummaryValues.GetAggregateValue(sibling.Name)
            If value IsNot Nothing AndAlso Not value.IsError() Then
                values.Add(value)
            End If
        Next

        If values.Count = 0 Then
            Return AggregateValue.ErrorAggregateValue
        End If

        Dim average As Double = values.Average(Function(v) v.ConvertOrDefault(Of Double)())
        Return New DoubleAggregateValue(average)
    End Function
End Class

````

>important Use `aggregateSummaryValues.Coordinate.ColumnGroup` when the calculated item is added to a **column** group description, and `aggregateSummaryValues.Coordinate.RowGroup` when it is added to a **row** group description. The group you navigate determines which axis siblings are iterated.

### Adding the Calculated Item

````C#
PropertyGroupDescription groupDescription = new PropertyGroupDescription();
groupDescription.PropertyName = "Salesperson";

AverageAllItems avgItem = new AverageAllItems();
avgItem.GroupName = "Average (All)";
groupDescription.CalculatedItems.Add(avgItem);

localProvider.ColumnGroupDescriptions.Add(groupDescription);

````
````VB.NET
Dim groupDescription As New PropertyGroupDescription()
groupDescription.PropertyName = "Salesperson"

Dim avgItem As New AverageAllItems()
avgItem.GroupName = "Average (All)"
groupDescription.CalculatedItems.Add(avgItem)

localProvider.ColumnGroupDescriptions.Add(groupDescription)

````

### Using Row Groups

When the calculated item belongs to a row group description, replace `ColumnGroup` with `RowGroup`:

````C#
public class SumAllRowItems : CalculatedItem
{
    protected override AggregateValue GetValue(IAggregateSummaryValues aggregateSummaryValues)
    {
        IGroup currentGroup = aggregateSummaryValues.Coordinate.RowGroup;
        IGroup parentGroup = currentGroup.Parent;

        if (parentGroup == null || !parentGroup.HasGroups)
        {
            return AggregateValue.ErrorAggregateValue;
        }

        double sum = 0;

        foreach (IGroup sibling in parentGroup.Groups)
        {
            if (sibling.Name is CalculatedItem)
            {
                continue;
            }

            AggregateValue value = aggregateSummaryValues.GetAggregateValue(sibling.Name);
            if (value != null && !value.IsError())
            {
                sum += value.ConvertOrDefault<double>();
            }
        }

        return new DoubleAggregateValue(sum);
    }
}

````
````VB.NET
Public Class SumAllRowItems
    Inherits CalculatedItem

    Protected Overrides Function GetValue(aggregateSummaryValues As IAggregateSummaryValues) As AggregateValue
        Dim currentGroup As IGroup = aggregateSummaryValues.Coordinate.RowGroup
        Dim parentGroup As IGroup = currentGroup.Parent

        If parentGroup Is Nothing OrElse Not parentGroup.HasGroups Then
            Return AggregateValue.ErrorAggregateValue
        End If

        Dim sum As Double = 0

        For Each sibling As IGroup In parentGroup.Groups
            If TypeOf sibling.Name Is CalculatedItem Then
                Continue For
            End If

            Dim value As AggregateValue = aggregateSummaryValues.GetAggregateValue(sibling.Name)
            If value IsNot Nothing AndAlso Not value.IsError() Then
                sum += value.ConvertOrDefault(Of Double)()
            End If
        Next

        Return New DoubleAggregateValue(sum)
    End Function
End Class

````

## See Also

* [Calculated Items]({%slug winforms/pivotgrid/calculated-items%})
* [Calculated Fields]({%slug winforms/pivotgrid/calculated-fields%})
* [Custom Aggregation]({%slug winforms/pivotgrid/custom-aggregation%})
