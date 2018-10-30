---
title: Drill Down
page_title: Drill Down | RadPivotGrid
description: The LocalDataSourceProvider exposes a GetUnderlyingData method which allows extracting the records from the data source object responsible for accumulating the result for a particular row and column.
slug: winforms/pivotgrid/drilldown
tags: custom, aggregation
published: True
position: 13
---

# Drill Down

The value of a particular __PivotCellElement__ is calculated depending on the applied row and column groups together with the aggregate descriptions.

The __LocalDataSourceProvider__ exposes a __GetUnderlyingData__ method which allows extracting the records from the data source object responsible for accumulating the result for a particular row and column. The __GetUnderlyingData__ method is working with two parameters: __Row Group__ and __Column Group__.

In the example below we will handle RadPivotGrid.__MouseDoubleClick__ event and use the retrieved IEnumerable object to bind [RadGridView]({%slug winforms/gridview%}) and display the result.

>caption Figure 1: RadPivotGrid Drill Down Data

![pivotgrid-drilldown 001](images/pivotgrid-drilldown001.gif)

#### GetUnderlyingData Method

{{source=..\SamplesCS\PivotGrid\PivotGridDrillDownForm.cs region=GetUnderlyingDataMethod}} 
{{source=..\SamplesVB\PivotGrid\PivotGridDrillDownForm.vb region=GetUnderlyingDataMethod}}
````C#
private void radPivotGrid1_MouseDoubleClick(object sender, MouseEventArgs e)
{
    if (e.Button == MouseButtons.Left)
    {
        RadPivotGrid pivotGrid = (RadPivotGrid)sender;
        PivotCellElement cell = pivotGrid.ElementTree.GetElementAtPoint(e.Location) as PivotCellElement;
        if (cell != null)
        {
            var row = cell.Row.Group;
            var column = cell.Column.Group;
            LocalDataSourceProvider localProvider = pivotGrid.DataProvider as LocalDataSourceProvider;
            localProvider.GetUnderlyingData(row, column);
        }
    }
}

````
````VB.NET
Private Sub radPivotGrid1_MouseDoubleClick(sender As Object, e As MouseEventArgs)
    If e.Button = MouseButtons.Left Then
        Dim pivotGrid As RadPivotGrid = DirectCast(sender, RadPivotGrid)
        Dim cell As PivotCellElement = TryCast(pivotGrid.ElementTree.GetElementAtPoint(e.Location), PivotCellElement)
        If cell IsNot Nothing Then
            Dim row = cell.Row.Group
            Dim column = cell.Column.Group
            Dim localProvider As LocalDataSourceProvider = TryCast(pivotGrid.DataProvider, LocalDataSourceProvider)
            localProvider.GetUnderlyingData(row, column)
        End If
    End If
End Sub

````



{{endregion}}

The underlying data can be retrieved by handling the __GetUnderlyingDataCompleted__ event and accessing the __DrillDownCompletedEventArgs__ arguments:

* __Result__: An IEnumerable representing the result of the underlying data extraction operation.
* __InnerExceptions__: A *read-only* collection with the thrown exceptions during the underlying data extraction.

>tip If the __DeferUpdates__ property of the __LocalDataSourceProvider__ is set to *true*, calling the __GetUnderlyingData__ method without first updating the provider will result in an __InvalidOperationException__.

>important The underlying data is extracted asynchronously when using the assemblies built for .NET 4.0. In this respect it is necessary to use [BeginInvoke](https://msdn.microsoft.com/en-us/library/a06c0dc2(v=vs.110).aspx) if the retrieved data will be used on the UI thread.

#### GetUnderlyingDataCompleted Event

{{source=..\SamplesCS\PivotGrid\PivotGridDrillDownForm.cs region=GetUnderlyingDataCompletedEvent}} 
{{source=..\SamplesVB\PivotGrid\PivotGridDrillDownForm.vb region=GetUnderlyingDataCompletedEvent}}
````C#
private void provider_GetUnderlyingDataCompleted(object sender, Telerik.Pivot.Core.DrillDown.DrillDownCompletedEventArgs e)
{
    IEnumerable underlyingData = e.Result;
    this.radGridView1.BeginInvoke(new Action(() =>
    {
        if (e.InnerExceptions.Count == 0)
        {
            this.radGridView1.DataSource = underlyingData;
        }
    }));
}

````
````VB.NET
Private Sub provider_GetUnderlyingDataCompleted(sender As Object, e As Telerik.Pivot.Core.DrillDown.DrillDownCompletedEventArgs)
    Dim underlyingData As IEnumerable = e.Result
    Me.radGridView1.BeginInvoke(New Action(Function()
                                               If e.InnerExceptions.Count = 0 Then
                                                   Me.radGridView1.DataSource = underlyingData
                                               End If
                                           End Function))
End Sub

````



{{endregion}}

# See Also

* [Calculated Fields]({%slug winforms/pivotgrid/calculated-fields%})
* [Calculated Items]({%slug winforms/pivotgrid/calculated-items%})