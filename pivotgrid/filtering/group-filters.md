---
title: Group Filters
page_title: Group Filters
description: Group Filters
slug: pivotgrid-filtering-group-filters
tags: group,filters
published: True
position: 1
---

# Group Filters



## 

Group filtering allows you to add filter conditions to the group descriptions. These conditions specify which
          of the generated groups will be displayed. There are two types of group filters: __Label filters__
          and __Value filters__. The Label filters apply a specified filter function to the name of the
          generated groups whereas the Value filters apply a filter function to the __GrandTotal__ value
          of a given aggregate field for that group.
        ![pivotgrid-filtering-group-filters 001](images/pivotgrid-filtering-group-filters001.png)

Group filtering is enabled by default. To enable or disable it use the following property:

#### __[C#] __

{{region AllowGroupFiltering}}
	            this.radPivotGrid1.AllowGroupFiltering = true;
	{{endregion}}



#### __[VB.NET] __

{{region AllowGroupFiltering}}
	        Me.radPivotGrid1.AllowGroupFiltering = True
	        '#End Region
	
	        '#Region "PropertyGroupDescription"
	        Dim description As PropertyGroupDescriptionBase = Me.radPivotGrid1.RowGroupDescriptions(0)
	        Dim filter As New LabelGroupFilter()
	        Dim condition As New ComparisonCondition()
	
	        condition.Condition = Telerik.Pivot.Core.Filtering.Comparison.Equals
	        condition.Than = "UK"
	
	        filter.Condition = condition
	        '#End Region
	        description.GroupFilter = filter
	    End Sub
	
	    Private Sub PivotGridReportFiltering_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	    End Sub
	End Class



The end-user can apply group filters using the filter button in the group descriptor elements or via the drop-down
          menus of the group fields in
          [RadPivotFieldList]({%slug pivotgrid-radpivotfieldlist%}).
          The filtering options are similar to the options of the __Report Filters__ with the addition of the
          __Top10 value filters__.  The Top10 filters allow you to select only the top/bottom groups from the
          order sorted by a given group value.
        

## Adding a group filter description

Group filters can be applied to group descriptions by using their __GroupFilter__ property
          as demonstrated in the following code snippet:
        

#### __[C#] __

{{region PropertyGroupDescription}}
	            PropertyGroupDescriptionBase description = (PropertyGroupDescriptionBase)this.radPivotGrid1.RowGroupDescriptions[0];
	            LabelGroupFilter filter = new LabelGroupFilter();
	            ComparisonCondition condition = new ComparisonCondition();
	
	            condition.Condition = Telerik.Pivot.Core.Filtering.Comparison.Equals;
	            condition.Than = "UK"; 
	
	            filter.Condition = condition; 
	            description.GroupFilter = filter;
	{{endregion}}



#### __[VB.NET] __

{{region PropertyGroupDescription}}
	        Dim description As PropertyGroupDescriptionBase = Me.radPivotGrid1.RowGroupDescriptions(0)
	        Dim filter As New LabelGroupFilter()
	        Dim condition As New ComparisonCondition()
	
	        condition.Condition = Telerik.Pivot.Core.Filtering.Comparison.Equals
	        condition.Than = "UK"
	
	        filter.Condition = condition
	        '#End Region
	        description.GroupFilter = filter
	    End Sub
	
	    Private Sub PivotGridReportFiltering_Load(sender As Object, e As EventArgs) Handles Me.Load
	        ' TODO: This line of code loads data into the 'nwindDataSet.Orders' table. You can move, or remove it, as needed.
	        Me.ordersTableAdapter.Fill(Me.nwindDataSet.Orders)
	    End Sub
	End Class


