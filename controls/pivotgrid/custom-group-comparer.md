---
title: Custom Group Comparer
page_title: Custom Group Comparer - RadPivotGrid
description: Learn how to implement a custom GroupComparer to define custom sorting logic for row and column groups in RadPivotGrid for WinForms.
slug: winforms/pivotgrid/custom-group-comparer
tags: pivotgrid, sorting, group, comparer, custom
published: True
position: 19
---

# Custom Group Comparer

**RadPivotGrid** uses the `GroupComparer` class to determine the order of groups within rows and columns. The two built-in comparers, `GroupNameComparer` and `GrandTotalComparer`, cover common scenarios such as sorting groups alphabetically or by their aggregate totals. When neither fits your requirements, you can create a custom comparer by inheriting the `GroupComparer` base class.

## Understanding the GroupComparer Class

The `GroupComparer` abstract class resides in the `Telerik.Pivot.Core` namespace. It exposes a single abstract method that you must override:

````C#
public abstract int CompareGroups(IAggregateResultProvider results, IGroup left, IGroup right, PivotAxis axis);
````

The parameters provide the following information:

* `results`&mdash;Gives access to the current aggregate values through `GetAggregateResult` and the root groups through the `Root` property.
* `left` and `right`&mdash;The two `IGroup` instances being compared. Each group exposes a `Name` property (the group key), a `Level`, and a reference to its `Parent` group.
* `axis`&mdash;Indicates whether the groups belong to `PivotAxis.Rows` or `PivotAxis.Columns`.

The method returns a signed integer following the standard comparison contract&mdash;a negative value when `left` precedes `right`, zero when they are equal, and a positive value when `left` follows `right`.

Because `GroupComparer` inherits from `Cloneable`, you must also override `CreateInstanceCore` and `CloneCore`.

## Creating a Custom GroupComparer

The following example demonstrates a custom comparer that orders groups by the length of their names. Groups with shorter names appear first.

#### Defining the Custom Comparer

````C#
public class NameLengthComparer : GroupComparer
{
    public override int CompareGroups(IAggregateResultProvider results, IGroup left, IGroup right, PivotAxis axis)
    {
        string leftName = left.Name != null ? left.Name.ToString() : string.Empty;
        string rightName = right.Name != null ? right.Name.ToString() : string.Empty;

        return leftName.Length.CompareTo(rightName.Length);
    }

    protected override Cloneable CreateInstanceCore()
    {
        return new NameLengthComparer();
    }

    protected override void CloneCore(Cloneable source)
    {
    }
}

````
````VB.NET
Public Class NameLengthComparer
    Inherits GroupComparer

    Public Overrides Function CompareGroups(results As IAggregateResultProvider, left As IGroup, right As IGroup, axis As PivotAxis) As Integer
        Dim leftName As String = If(left.Name IsNot Nothing, left.Name.ToString(), String.Empty)
        Dim rightName As String = If(right.Name IsNot Nothing, right.Name.ToString(), String.Empty)

        Return leftName.Length.CompareTo(rightName.Length)
    End Function

    Protected Overrides Function CreateInstanceCore() As Cloneable
        Return New NameLengthComparer()
    End Function

    Protected Overrides Sub CloneCore(source As Cloneable)
    End Sub
End Class

````

## Assigning the Custom Comparer

Set the `GroupComparer` property on the target `PropertyGroupDescription` or `DateTimeGroupDescription`. The `SortOrder` property controls whether the comparer result is applied in ascending or descending direction.

#### Using the Custom Comparer

````C#
PropertyGroupDescription groupDescription = (PropertyGroupDescription)this.radPivotGrid1.RowGroupDescriptions[0];
groupDescription.GroupComparer = new NameLengthComparer();
groupDescription.SortOrder = Telerik.Pivot.Core.SortOrder.Ascending;
this.radPivotGrid1.ReloadData();

````
````VB.NET

Dim groupDescription As PropertyGroupDescription = DirectCast(Me.RadPivotGrid1.RowGroupDescriptions(0), PropertyGroupDescription)
groupDescription.GroupComparer = New NameLengthComparer()
groupDescription.SortOrder = Telerik.Pivot.Core.SortOrder.Ascending
Me.RadPivotGrid1.ReloadData()

````

## Using Aggregate Values in a Custom Comparer

A custom comparer can also use aggregate results. The following example compares groups based on the aggregate value at a specific index, falling back to group name comparison when the aggregate values are equal.

#### Defining a Comparer with Aggregate Access

````C#
public class AggregateWithFallbackComparer : GroupComparer
{
    private int aggregateIndex;

    public int AggregateIndex
    {
        get { return this.aggregateIndex; }
        set
        {
            if (this.aggregateIndex != value)
            {
                this.aggregateIndex = value;
                this.OnPropertyChanged("AggregateIndex");
            }
        }
    }

    public override int CompareGroups(IAggregateResultProvider results, IGroup left, IGroup right, PivotAxis axis)
    {
        Coordinate leftCoordinate;
        Coordinate rightCoordinate;

        if (axis == PivotAxis.Rows)
        {
            leftCoordinate = new Coordinate(left, results.Root.ColumnGroup);
            rightCoordinate = new Coordinate(right, results.Root.ColumnGroup);
        }
        else
        {
            leftCoordinate = new Coordinate(results.Root.RowGroup, left);
            rightCoordinate = new Coordinate(results.Root.RowGroup, right);
        }

        AggregateValue leftAggregate = results.GetAggregateResult(this.AggregateIndex, leftCoordinate);
        AggregateValue rightAggregate = results.GetAggregateResult(this.AggregateIndex, rightCoordinate);

        object leftValue = leftAggregate != null ? leftAggregate.GetValue() : null;
        object rightValue = rightAggregate != null ? rightAggregate.GetValue() : null;

        if (leftValue is AggregateError)
        {
            leftValue = null;
        }

        if (rightValue is AggregateError)
        {
            rightValue = null;
        }

        int result = System.Collections.Comparer.Default.Compare(leftValue, rightValue);

        if (result == 0)
        {
            IComparable leftName = left.Name as IComparable;
            if (leftName != null && right.Name != null)
            {
                return leftName.CompareTo(right.Name);
            }
        }

        return result;
    }

    protected override Cloneable CreateInstanceCore()
    {
        return new AggregateWithFallbackComparer();
    }

    protected override void CloneCore(Cloneable source)
    {
        AggregateWithFallbackComparer comparer = source as AggregateWithFallbackComparer;
        if (comparer != null)
        {
            this.AggregateIndex = comparer.AggregateIndex;
        }
    }
}

````
````VB.NET
Public Class AggregateWithFallbackComparer
    Inherits GroupComparer

    Private _aggregateIndex As Integer

    Public Property AggregateIndex As Integer
        Get
            Return _aggregateIndex
        End Get
        Set(value As Integer)
            If _aggregateIndex <> value Then
                _aggregateIndex = value
                OnPropertyChanged("AggregateIndex")
            End If
        End Set
    End Property

    Public Overrides Function CompareGroups(results As IAggregateResultProvider, left As IGroup, right As IGroup, axis As PivotAxis) As Integer
        Dim leftCoordinate As Coordinate
        Dim rightCoordinate As Coordinate

        If axis = PivotAxis.Rows Then
            leftCoordinate = New Coordinate(left, results.Root.ColumnGroup)
            rightCoordinate = New Coordinate(right, results.Root.ColumnGroup)
        Else
            leftCoordinate = New Coordinate(results.Root.RowGroup, left)
            rightCoordinate = New Coordinate(results.Root.RowGroup, right)
        End If

        Dim leftAggregate As AggregateValue = results.GetAggregateResult(AggregateIndex, leftCoordinate)
        Dim rightAggregate As AggregateValue = results.GetAggregateResult(AggregateIndex, rightCoordinate)

        Dim leftValue As Object = If(leftAggregate IsNot Nothing, leftAggregate.GetValue(), Nothing)
        Dim rightValue As Object = If(rightAggregate IsNot Nothing, rightAggregate.GetValue(), Nothing)

        If TypeOf leftValue Is AggregateError Then
            leftValue = Nothing
        End If

        If TypeOf rightValue Is AggregateError Then
            rightValue = Nothing
        End If

        Dim result As Integer = System.Collections.Comparer.Default.Compare(leftValue, rightValue)

        If result = 0 Then
            Dim leftName As IComparable = TryCast(left.Name, IComparable)
            If leftName IsNot Nothing AndAlso right.Name IsNot Nothing Then
                Return leftName.CompareTo(right.Name)
            End If
        End If

        Return result
    End Function

    Protected Overrides Function CreateInstanceCore() As Cloneable
        Return New AggregateWithFallbackComparer()
    End Function

    Protected Overrides Sub CloneCore(source As Cloneable)
        Dim comparer As AggregateWithFallbackComparer = TryCast(source, AggregateWithFallbackComparer)
        If comparer IsNot Nothing Then
            AggregateIndex = comparer.AggregateIndex
        End If
    End Sub
End Class

````

>note When the comparer exposes additional properties (such as `AggregateIndex`), copy their values in the `CloneCore` override. This ensures the comparer state is preserved when the pivot engine clones group descriptions internally.

# See Also

* [Sorting]({%slug winforms/pivotgrid/sorting%})
* [Custom Aggregation]({%slug winforms/pivotgrid/custom-aggregation%})
