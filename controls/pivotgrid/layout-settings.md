---
title: Layout Settings
page_title: Layout Settings - RadPivotGrid
description: RadPivotGrid supports two types of layouts - Tabular and Compact. You can control the layout type of the column and row headers via the following properties.
slug: winforms/pivotgrid/layout-settings
tags: layout,settings
published: True
position: 7
previous_url: pivotgrid-layout-settings
---

# Layout Settings

**RadPivotGrid** supports two types of layouts - __Tabular__ and __Compact__. The Tabular layout displays each field in a separate rectangle - for row descriptors in a separate column, and for columns descriptors in a separate row. The Compact layout nests the field descriptors in one common rectangle to save up space which can be useful in the cases where a large number of fields is being used.

## Headers

You can control the layout type of the column and row headers via the following properties:

>caption Figure 1: Row and Column Headers Layout

![pivotgrid-layout-settings 001](images/pivotgrid-layout-settings001.png)

#### Headers Layout

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=LayoutType}} 
{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=LayoutType}} 

````C#
this.radPivotGrid1.ColumnHeadersLayout = Telerik.WinControls.UI.PivotLayout.Tabular;
this.radPivotGrid1.RowHeadersLayout = Telerik.WinControls.UI.PivotLayout.Compact;

````
````VB.NET
Me.RadPivotGrid1.ColumnHeadersLayout = Telerik.WinControls.UI.PivotLayout.Tabular
Me.RadPivotGrid1.RowHeadersLayout = Telerik.WinControls.UI.PivotLayout.Compact

````

{{endregion}} 

## Sub and Grand Totals

You can also control where SubTotals and GrandTotals are displayed:

>caption Figure 2: Totals Position

![pivotgrid-layout-settings 002](images/pivotgrid-layout-settings002.png)

#### Set Grand and Sub Totals Position

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=Totals}} 
{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=Totals}} 

````C#
this.radPivotGrid1.ColumnGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.First;
this.radPivotGrid1.RowGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last;
this.radPivotGrid1.ColumnsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.First;
this.radPivotGrid1.RowsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last;

````
````VB.NET
Me.RadPivotGrid1.ColumnGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
Me.RadPivotGrid1.RowGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last
Me.RadPivotGrid1.ColumnsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
Me.RadPivotGrid1.RowsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last

````

{{endregion}}

When you set the **RowSubTotalsPosition** and **ColumnSubTotalsPosition** property of the group description to a value different than *None*, the pivot renders the subtotals of the corresponding property group. You can alter this and hide the subtotals for a specific group via the **AutoShowSubTotals** property of the corresponding group description object.

|Row Group with SubTotal| Row Group without SubTotal|
|----|----|
![pivotgrid-layout-settings 004](images/pivotgrid-layout-settings004.png)|![pivotgrid-layout-settings 005](images/pivotgrid-layout-settings005.png)|

#### Hiding Sub Totals

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=HiddenSubtotals}} 
{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=HiddenSubtotals}}
````C#
this.provider.RowGroupDescriptions.Add(new PropertyGroupDescription()
{
    PropertyName = "Product",
    GroupComparer = new GroupNameComparer(),
    SortOrder = Telerik.Pivot.Core.SortOrder.Descending,
    AutoShowSubTotals = false
});

````
````VB.NET
Me.provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With {
.PropertyName = "Product",
.GroupComparer = New GroupNameComparer(),
.SortOrder = Telerik.Pivot.Core.SortOrder.Descending,
.AutoShowSubTotals = False
    })

```` 



{{endregion}}

## Aggregates

When you have added more than one aggregate description, there are special header cells for each aggregate. To control whether these cells  are displayed in the column headers area or in the row headers area, and also set the level of the aggregate descriptions in the group tree, you can use the following properties:

>caption Figure 4: Aggregates Settings

![pivotgrid-layout-settings 003](images/pivotgrid-layout-settings003.png)

#### Set Aggregates Level and Position

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=Aggregates}} 
{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=Aggregates}} 

````C#
this.radPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns;
this.radPivotGrid1.AggregatesLevel = 1;

````
````VB.NET
Me.RadPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns
Me.RadPivotGrid1.AggregatesLevel = 1

````

{{endregion}}

# See Also

* [Structure]({%slug winforms/pivotgrid/structure%})
* [Formatting Cells]({%slug winforms/pivotgrid/formatting-appearance%})
