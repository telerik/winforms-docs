---
title: Report Filters
page_title: Report Filters
description: Report Filters
slug: pivotgrid-filtering-report-filters
tags: report,filters
published: True
position: 0
---

# Report Filters



## 

RadPivotGrid allows you to add filter conditions which describe which items from the data source should be
          included in the report. These filters are called __Report Filters__. Report filtering
          occurs before the aggregated information is calculated. This type of filtering is useful when you would like
          to see a report which concerns only records that share a common property, for example a sales report only for
          a specified country.
        ![pivotgrid-filtering-report-filters 001](images/pivotgrid-filtering-report-filters001.png)

The report filters are displayed as descriptor elements in the report filters area. This area is hidden by default
          and in order to show it, you need to set the following property:
        

#### __[C#] __

{{region ShowFilterArea}}
	            this.radPivotGrid1.ShowFilterArea = true;
	{{endregion}}



#### __[VB.NET] __

{{region ShowFilterArea}}
	        Me.radPivotGrid1.ShowFilterArea = True
	        '#End Region
	
	        '#Region "PropertyFilterDescription"
	        Dim description As New PropertyFilterDescription()
	        Dim condition As New ComparisonCondition()
	
	        condition.Condition = Telerik.Pivot.Core.Filtering.Comparison.Equals
	        condition.Than = "UK"
	
	        description.PropertyName = "ShipCountry"
	        description.Condition = condition
	        description.CustomName = "Country"
	
	        Me.radPivotGrid1.FilterDescriptions.Add(description)
	        '#End Region
	
	        description = New PropertyFilterDescription()
	
	        '#Region "SetCondition"
	        Dim setCondition As New SetCondition()
	
	        setCondition.Comparison = SetComparison.Includes
	        setCondition.Items.Add("UK")
	        setCondition.Items.Add("Canada")
	        setCondition.Items.Add("USA")
	        '#End Region
	
	        description.PropertyName = "ShipCountry"
	        description.Condition = setCondition
	        description.CustomName = "Country"
	
	        Me.radPivotGrid1.FilterDescriptions.Add(description)
	    End Sub
	
	    Private Sub PivotGridReportFiltering_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	    End Sub
	End Class



The end-user can add/remove report filters by dragging a field to the report filters area or by using the
          [RadPivotFieldList]({%slug pivotgrid-radpivotfieldlist%}).
          Additionally, the filter menu opened by the filter button on the filter descriptor elements allows applying
          different filter conditions. This can be achieved by either selecting/deselecting items from the list box or
          by using one of the well-known filtering functions (Equals, Contains, Between, etc.).
        

## Adding a report filter description

Report filter descriptions are stored in the FilterDescriptions collection of RadPivotGrid. You can edit the
          contents of the collection at design time, using the Smart tag of RadPivotGrid.
        ![pivotgrid-filtering-report-filters 002](images/pivotgrid-filtering-report-filters002.png)

The contents of the FilterDescriptions collection can also be edited at runtime using code. The
          __FilterDescriptions__ collection consists of __PropertyFilterDescription__
          instances which specify the field on which a filter is applied.
        

#### __[C#] __

{{region PropertyFilterDescription}}
	            PropertyFilterDescription description = new PropertyFilterDescription(); 
	            ComparisonCondition condition = new ComparisonCondition();
	
	            condition.Condition = Comparison.Equals;
	            condition.Than = "UK";
	
	            description.PropertyName = "ShipCountry";
	            description.Condition = condition;
	            description.CustomName = "Country";
	
	            this.radPivotGrid1.FilterDescriptions.Add(description);
	{{endregion}}



#### __[VB.NET] __

{{region PropertyFilterDescription}}
	        Dim description As New PropertyFilterDescription()
	        Dim condition As New ComparisonCondition()
	
	        condition.Condition = Telerik.Pivot.Core.Filtering.Comparison.Equals
	        condition.Than = "UK"
	
	        description.PropertyName = "ShipCountry"
	        description.Condition = condition
	        description.CustomName = "Country"
	
	        Me.radPivotGrid1.FilterDescriptions.Add(description)
	        '#End Region
	
	        description = New PropertyFilterDescription()
	
	        '#Region "SetCondition"
	        Dim setCondition As New SetCondition()
	
	        setCondition.Comparison = SetComparison.Includes
	        setCondition.Items.Add("UK")
	        setCondition.Items.Add("Canada")
	        setCondition.Items.Add("USA")
	        '#End Region
	
	        description.PropertyName = "ShipCountry"
	        description.Condition = setCondition
	        description.CustomName = "Country"
	
	        Me.radPivotGrid1.FilterDescriptions.Add(description)
	    End Sub
	
	    Private Sub PivotGridReportFiltering_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	    End Sub
	End Class



The __Condition__ property of the __PropertyFilterDescription__ holds the
          currently applied condition. It can be set with a __ComparisonCondition__ instance as shown
          above or a __SetCondition__ which allows you to include/exclude specific values:
        

#### __[C#] __

{{region SetCondition}}
	            SetCondition setCondition = new SetCondition();
	
	            setCondition.Comparison = SetComparison.Includes;
	            setCondition.Items.Add("UK");
	            setCondition.Items.Add("Canada");
	            setCondition.Items.Add("USA");
	{{endregion}}



#### __[VB.NET] __

{{region SetCondition}}
	        Dim setCondition As New SetCondition()
	
	        setCondition.Comparison = SetComparison.Includes
	        setCondition.Items.Add("UK")
	        setCondition.Items.Add("Canada")
	        setCondition.Items.Add("USA")
	        '#End Region
	
	        description.PropertyName = "ShipCountry"
	        description.Condition = setCondition
	        description.CustomName = "Country"
	
	        Me.radPivotGrid1.FilterDescriptions.Add(description)
	    End Sub
	
	    Private Sub PivotGridReportFiltering_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	    End Sub
	End Class


