---
title: Layout Settings
page_title: Layout Settings
description: Layout Settings
slug: pivotgrid-layout-settings
tags: layout,settings
published: True
position: 3
---

# Layout Settings



## 

RadPivotGrid supports two types of layouts - __Tabular__ and __Compact__. 
          The Tabular layout displays each field in a separate rectangle - for row descriptors in a separate column, 
          and for columns descriptors in a separate row. The Compact layout nests the field descriptors in one common 
          rectangle to save up space which can be useful in the cases where a large number of fields is being used.
        

You can control the layout type of the column and row headers via the following properties:

#### __[C#] __

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=LayoutType}}
	            this.radPivotGrid1.ColumnHeadersLayout = Telerik.WinControls.UI.PivotLayout.Tabular;
	            this.radPivotGrid1.RowHeadersLayout = Telerik.WinControls.UI.PivotLayout.Compact;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=LayoutType}}
	        Me.RadPivotGrid1.ColumnHeadersLayout = Telerik.WinControls.UI.PivotLayout.Tabular
	        Me.RadPivotGrid1.RowHeadersLayout = Telerik.WinControls.UI.PivotLayout.Compact
	        '#End Region
	
	        '#Region "Totals"
	        Me.RadPivotGrid1.ColumnGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
	        Me.RadPivotGrid1.RowGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last
	        Me.RadPivotGrid1.ColumnsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
	        Me.RadPivotGrid1.RowsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last
	        '#End Region
	
	        '#Region "Aggregates"
	        Me.RadPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns
	        Me.RadPivotGrid1.AggregatesLevel = 1
	        '#End Region
	
	    End Sub
	
	    Private Sub SetupProvider()
	        Me.provider = New LocalDataSourceProvider() With { _
	         .ItemsSource = orders _
	        }
	
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Product", _
	         .GroupComparer = New GroupNameComparer(), _
	         .SortOrder = Telerik.Pivot.Core.SortOrder.Descending _
	        })
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Promotion", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	
	        provider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Advertisement", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	        provider.ColumnGroupDescriptions.Add(New DateTimeGroupDescription() With { _
	         .PropertyName = "Date", _
	         .[Step] = DateTimeStep.Month _
	        })
	
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Quantity", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Net", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	
	        Me.RadPivotGrid1.PivotGridElement.DataProvider = provider
	    End Sub
	
	    Private Sub LoadData()
	        Dim stream As Stream = System.Reflection.Assembly.GetAssembly(Me.[GetType]()).GetManifestResourceStream("SamplesVB.PivotData.txt")
	
	        Using streamReader As New StreamReader(stream)
	            While streamReader.Peek() <> -1
	                Dim items As String() = streamReader.ReadLine().Split(ControlChars.Tab)
	                Dim o As New Order2() With { _
	                 .[Date] = DateTime.Parse(items(0), System.Globalization.CultureInfo.InvariantCulture), _
	                 .Product = items(1), _
	                 .Quantity = Integer.Parse(items(2)), _
	                 .Net = Double.Parse(items(3)), _
	                 .Promotion = items(4), _
	                 .Advertisement = items(5) _
	                }
	                orders.Add(o)
	            End While
	        End Using
	    End Sub
	
	End Class
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik, @toddanglin
	'Facebook: facebook.com/telerik
	'=======================================================

![pivotgrid-layout-settings 001](images/pivotgrid-layout-settings001.png)

You can also control where SubTotals and GrandTotals are displayed:

#### __[C#] __

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=Totals}}
	            this.radPivotGrid1.ColumnGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.First;
	            this.radPivotGrid1.RowGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last;
	            this.radPivotGrid1.ColumnsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.First;
	            this.radPivotGrid1.RowsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=Totals}}
	        Me.RadPivotGrid1.ColumnGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
	        Me.RadPivotGrid1.RowGrandTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last
	        Me.RadPivotGrid1.ColumnsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.First
	        Me.RadPivotGrid1.RowsSubTotalsPosition = Telerik.WinControls.UI.TotalsPos.Last
	        '#End Region
	
	        '#Region "Aggregates"
	        Me.RadPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns
	        Me.RadPivotGrid1.AggregatesLevel = 1
	        '#End Region
	
	    End Sub
	
	    Private Sub SetupProvider()
	        Me.provider = New LocalDataSourceProvider() With { _
	         .ItemsSource = orders _
	        }
	
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Product", _
	         .GroupComparer = New GroupNameComparer(), _
	         .SortOrder = Telerik.Pivot.Core.SortOrder.Descending _
	        })
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Promotion", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	
	        provider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Advertisement", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	        provider.ColumnGroupDescriptions.Add(New DateTimeGroupDescription() With { _
	         .PropertyName = "Date", _
	         .[Step] = DateTimeStep.Month _
	        })
	
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Quantity", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Net", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	
	        Me.RadPivotGrid1.PivotGridElement.DataProvider = provider
	    End Sub
	
	    Private Sub LoadData()
	        Dim stream As Stream = System.Reflection.Assembly.GetAssembly(Me.[GetType]()).GetManifestResourceStream("SamplesVB.PivotData.txt")
	
	        Using streamReader As New StreamReader(stream)
	            While streamReader.Peek() <> -1
	                Dim items As String() = streamReader.ReadLine().Split(ControlChars.Tab)
	                Dim o As New Order2() With { _
	                 .[Date] = DateTime.Parse(items(0), System.Globalization.CultureInfo.InvariantCulture), _
	                 .Product = items(1), _
	                 .Quantity = Integer.Parse(items(2)), _
	                 .Net = Double.Parse(items(3)), _
	                 .Promotion = items(4), _
	                 .Advertisement = items(5) _
	                }
	                orders.Add(o)
	            End While
	        End Using
	    End Sub
	
	End Class
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik, @toddanglin
	'Facebook: facebook.com/telerik
	'=======================================================

![pivotgrid-layout-settings 002](images/pivotgrid-layout-settings002.png)

When you have added more than one aggregate description, there are special header cells for each aggregate. To control whether these cells  are displayed in the column headers area or in the row headers area, and also set the level of the aggregate descriptions in the group tree, you can use the following properties:

#### __[C#] __

{{source=..\SamplesCS\PivotGrid\PivotGridLayoutSettings.cs region=Aggregates}}
	            this.radPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns;
	            this.radPivotGrid1.AggregatesLevel = 1;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PivotGrid\PivotGridLayoutSettings.vb region=Aggregates}}
	        Me.RadPivotGrid1.AggregatesPosition = Telerik.Pivot.Core.PivotAxis.Columns
	        Me.RadPivotGrid1.AggregatesLevel = 1
	        '#End Region
	
	    End Sub
	
	    Private Sub SetupProvider()
	        Me.provider = New LocalDataSourceProvider() With { _
	         .ItemsSource = orders _
	        }
	
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Product", _
	         .GroupComparer = New GroupNameComparer(), _
	         .SortOrder = Telerik.Pivot.Core.SortOrder.Descending _
	        })
	        provider.RowGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Promotion", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	
	        provider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With { _
	         .PropertyName = "Advertisement", _
	         .GroupComparer = New GroupNameComparer() _
	        })
	        provider.ColumnGroupDescriptions.Add(New DateTimeGroupDescription() With { _
	         .PropertyName = "Date", _
	         .[Step] = DateTimeStep.Month _
	        })
	
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Quantity", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	        provider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
	         .PropertyName = "Net", _
	         .AggregateFunction = AggregateFunctions.Sum _
	        })
	
	        Me.RadPivotGrid1.PivotGridElement.DataProvider = provider
	    End Sub
	
	    Private Sub LoadData()
	        Dim stream As Stream = System.Reflection.Assembly.GetAssembly(Me.[GetType]()).GetManifestResourceStream("SamplesVB.PivotData.txt")
	
	        Using streamReader As New StreamReader(stream)
	            While streamReader.Peek() <> -1
	                Dim items As String() = streamReader.ReadLine().Split(ControlChars.Tab)
	                Dim o As New Order2() With { _
	                 .[Date] = DateTime.Parse(items(0), System.Globalization.CultureInfo.InvariantCulture), _
	                 .Product = items(1), _
	                 .Quantity = Integer.Parse(items(2)), _
	                 .Net = Double.Parse(items(3)), _
	                 .Promotion = items(4), _
	                 .Advertisement = items(5) _
	                }
	                orders.Add(o)
	            End While
	        End Using
	    End Sub
	
	End Class
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik, @toddanglin
	'Facebook: facebook.com/telerik
	'=======================================================

![pivotgrid-layout-settings 003](images/pivotgrid-layout-settings003.png)
