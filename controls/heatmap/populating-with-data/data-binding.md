---
title: Data Binding
page_title: Data Binding - WinForms HeatMap Control
description: Bind the WinForms HeatMap either at design time or at run time.   
slug: heatmap-data-binding
tags: heatmap, binding
published: True
position: 0
---

# Data Binding

Data binding is a mechanism for the automatic population of the RadHeatMap with items, based on the provided data structure. 

## Setting up the Model and the Sample Data

In order to demonstrate how to populate a __RadHeatMap__ with data, we will create a sample object that will hold temperature information and create a collection of those objects.

#### __Example 1: Setting up the model__

{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Bind_Model}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Bind_Model}} 

````C#
public class TempInfo
{
	public DateTime Year { get; set; }
	public string Month { get; set; }
	public double Temperature { get; set; }
}        


````
````VB.NET

Public Class TempInfo
    Public Property Year As DateTime
    Public Property Month As String
    Public Property Temperature As Double
End Class


````

{{endregion}} 

#### __Example 2: Creating Sample Data__

{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Bind_SampleData}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Bind_SampleData}} 

````C#
private BindingList<TempInfo> PrepareData()
{
    DateTime date = DateTime.Today;
    var infos = new BindingList<TempInfo>()
    {
        new TempInfo() { Year = date, Month = "Jan", Temperature = 17},
        new TempInfo() { Year = date, Month = "Feb", Temperature = 8},
        new TempInfo() { Year = date, Month = "Mar", Temperature = 20},
        new TempInfo() { Year = date.AddYears(1), Month = "Jan", Temperature = 5},
        new TempInfo() { Year = date.AddYears(1), Month = "Feb", Temperature = 13},
        new TempInfo() { Year = date.AddYears(1), Month = "Mar", Temperature = 21},
        new TempInfo() { Year = date.AddYears(2), Month = "Jan", Temperature = 14},
        new TempInfo() { Year = date.AddYears(2), Month = "Feb", Temperature = 19},
        new TempInfo() { Year = date.AddYears(2), Month = "Mar", Temperature = 17},
    };
    return infos;
}     


````
````VB.NET

Private Function PrepareData() As BindingList(Of TempInfo)
	Dim _date As DateTime = DateTime.Today
	Dim infos = New BindingList(Of TempInfo)() From {
		New TempInfo() With {
			.Year = _date,
			.Month = "Jan",
			.Temperature = 17
		},
		New TempInfo() With {
			.Year = _date,
			.Month = "Feb",
			.Temperature = 8
		},
		New TempInfo() With {
			.Year = _date,
			.Month = "Mar",
			.Temperature = 20
		},
		New TempInfo() With {
			.Year = _date.AddYears(1),
			.Month = "Jan",
			.Temperature = 5
		},
		New TempInfo() With {
			.Year = _date.AddYears(1),
			.Month = "Feb",
			.Temperature = 13
		},
		New TempInfo() With {
			.Year = _date.AddYears(1),
			.Month = "Mar",
			.Temperature = 21
		},
		New TempInfo() With {
			.Year = _date.AddYears(2),
			.Month = "Jan",
			.Temperature = 14
		},
		New TempInfo() With {
			.Year = _date.AddYears(2),
			.Month = "Feb",
			.Temperature = 19
		},
		New TempInfo() With {
			.Year = _date.AddYears(2),
			.Month = "Mar",
			.Temperature = 17
		}
	}
	Return infos
End Function



````

{{endregion}}


## Definitions

In order to visualize our data we need to set the Definition property of the control. The control works with few different definitions that describe how to data will be shown: __CategoricalDefinition, VerticalDefinition, HorizontalDefinition__. We will populate the control using each of the definitions.

### Categorical Definition

The definition provides few properties to define what data should be used.

* __RowGroupMember__: Contains the name of the property in the custom model that will be used to generate the rows.
* __ColumnGroupMember__: Contains the name of the property in the custom model that will be used to generate the columns.
* __ValueMember__: Contains the name of the property in the custom model that will be used to generate the cells. Based on that value the cell will be colored differently.

The __RowGroupMember__ in our example, will point to a __DateTime__ type property. To format the DateTime value, we can use the __RowHeaderTextFormat__ property of the control. The __ColumnGroupMember__ will represent the Month property. What's left is to set our value for the cell through the __ValueMember__, which in our case will be the Temperature property value.

#### __Example 3: Categorical Definition__
{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Bind_SampleData_CategoricalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Bind_SampleData_CategoricalDefinition}} 

````C#

CategoricalDefinition categoricalDefinition = new CategoricalDefinition();
categoricalDefinition.RowGroupMember = "Year";
categoricalDefinition.ColumnGroupMember = "Month";
categoricalDefinition.ValueMember = "Temperature";
categoricalDefinition.DataSource = PrepareData();
this.radHeatMap1.Definition = categoricalDefinition;
this.radHeatMap1.RowHeaderWidth = 40;
this.radHeatMap1.RowHeaderTextFormat = "yyyy";
this.radHeatMap1.HeaderCellTextAlignment = ContentAlignment.MiddleCenter;   


````
````VB.NET

Dim categoricalDefinition As CategoricalDefinition = New CategoricalDefinition()
categoricalDefinition.RowGroupMember = "Year"
categoricalDefinition.ColumnGroupMember = "Month"
categoricalDefinition.ValueMember = "Temperature"
categoricalDefinition.DataSource = PrepareData()
Me.radHeatMap1.Definition = categoricalDefinition
Me.radHeatMap1.RowHeaderWidth = 40
Me.radHeatMap1.RowHeaderTextFormat = "yyyy"
Me.radHeatMap1.HeaderCellTextAlignment = ContentAlignment.MiddleCenter



````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Categorical Definition](images/heatmap-data-binding01.png)

### Vertical Definition

Alternatively, we can also use a __VerticalDefinition__. We'll set the months as __HeaderPath__ of our HeatMap. Thus the months supplied by the Month property of our underlying source will be visualized as column headers. For each row, we'll display the Temperature and Rain values of the corresponding month. However, this setup may not clearly indicate which month belongs to which year. To address this, we can customize the column headers by subscribing to the HeaderCellPainting event of the control. Within the event handler, we can specifically target the column header row and retrieve information about the associated data item from the first data cell in the column.

#### __Example 4: Vertical Definition__
{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Bind_SampleData_VerticalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Bind_SampleData_VerticalDefinition}} 

````C#

private void Bind_VerticalDefinition()
{
	HeatMapGradientColorizer heatMapGradientColorizer = new HeatMapGradientColorizer();
	ColorConverter colorConverter = new ColorConverter();
	heatMapGradientColorizer.GradientStops = new List<GradientStop>()
	{
	new GradientStop() { Color=(Color)new ColorConverter().ConvertFromString("#D9E7F1"), Position=0 },
	new GradientStop() { Color=(Color)new ColorConverter().ConvertFromString("#01518C"), Position=1 }
	};
	VerticalDefinition verticalDefinition = new VerticalDefinition();
	verticalDefinition.DataSource = PrepareData();
	verticalDefinition.HeaderMember = "Month";
	verticalDefinition.MemberMappings = new MemberMappingsCollection() {
	new MemberMapping() { Header = "Temperature in Celsius", ValueMember = "Temperature",},
	new MemberMapping() { Header = "Rain in Centimeters", ValueMember = "Rain", Colorizer = heatMapGradientColorizer }
	};
	this.radHeatMap1.HeatMapElement.RowHeaderWidth = 130;
	this.radHeatMap1.HeaderCellPainting += RadHeatMap1_HeaderCellPainting;
	this.radHeatMap1.Definition = verticalDefinition;
}

private void RadHeatMap1_HeaderCellPainting(object sender, HeatMapHeaderCellPaintingEventArgs e)
{
	if (e.Index.ColumnIndex > -1 && e.Index.RowIndex == -1)
	{
		var heatMapItem = this.radHeatMap1.Definition.GetDataItem(new CellIndex(0,e.Index.ColumnIndex));
		var dataBoundItem = heatMapItem.DataBoundItem as TempInfo;
		e.Text = dataBoundItem.Year.ToString("yyyy") +"  "+ dataBoundItem.Month;
	}
}


````
````VB.NET

Private Sub Bind_VerticalDefinition()
	Dim heatMapGradientColorizer As HeatMapGradientColorizer = New HeatMapGradientColorizer()
	Dim colorConverter As ColorConverter = New ColorConverter()
	heatMapGradientColorizer.GradientStops = New List(Of GradientStop)() From {
		New GradientStop() With {
			.Color = CType(New ColorConverter().ConvertFromString("#D9E7F1"), Color),
			.Position = 0
		},
		New GradientStop() With {
			.Color = CType(New ColorConverter().ConvertFromString("#01518C"), Color),
			.Position = 1
		}
	}
	Dim verticalDefinition As VerticalDefinition = New VerticalDefinition()
	verticalDefinition.DataSource = PrepareData()
	verticalDefinition.HeaderMember = "Month"
	verticalDefinition.MemberMappings = New MemberMappingsCollection() From {
		New MemberMapping() With {
			.Header = "Temperature in Celsius",
			.ValueMember = "Temperature"
		},
		New MemberMapping() With {
			.Header = "Rain in Centimeters",
			.ValueMember = "Rain",
			.Colorizer = heatMapGradientColorizer
		}
	}
	Me.radHeatMap1.HeatMapElement.RowHeaderWidth = 130
	AddHandler Me.radHeatMap1.HeaderCellPainting, AddressOf RadHeatMap1_HeaderCellPainting
	Me.radHeatMap1.Definition = verticalDefinition
End Sub

Private Sub RadHeatMap1_HeaderCellPainting(ByVal sender As Object, ByVal e As HeatMapHeaderCellPaintingEventArgs)
	If e.Index.ColumnIndex > -1 AndAlso e.Index.RowIndex = -1 Then
		Dim heatMapItem = Me.radHeatMap1.Definition.GetDataItem(New CellIndex(0, e.Index.ColumnIndex))
		Dim dataBoundItem = TryCast(heatMapItem.DataBoundItem, TempInfo)
		e.Text = dataBoundItem.Year.ToString("yyyy") & "  " + dataBoundItem.Month
	End If
End Sub
	

````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Vertical Definition](images/heatmap-data-binding02.png)

### Horizontal Definition

This definition closely resembles the __VerticalDefinition__, with the distinction that the property value of our underlying source, specifically the __HeaderMember__ property, will be represented as row headers. To accommodate this, we must make adjustments to the __HeaderCellPainting__ event handler to correctly handle the row headers instead of the column headers.

#### __Example 5: Horizontal Definition__
{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Bind_SampleData_HorizontalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Bind_SampleData_HorizontalDefinition}} 

````C#

private void Bind_HorizontalDefinition()
{
    HeatMapGradientColorizer heatMapGradientColorizer = new HeatMapGradientColorizer();
    ColorConverter colorConverter = new ColorConverter();
    heatMapGradientColorizer.GradientStops = new List<GradientStop>()
    {
    new GradientStop() { Color=(Color)new ColorConverter().ConvertFromString("#D9E7F1"), Position=0 },
    new GradientStop() { Color=(Color)new ColorConverter().ConvertFromString("#01518C"), Position=1 }
    };
    HorizontalDefinition horizontalDefinition = new HorizontalDefinition();
    horizontalDefinition.DataSource = PrepareData();
    horizontalDefinition.HeaderMember = "Month";
    horizontalDefinition.MemberMappings = new MemberMappingsCollection()
    {
    new MemberMapping() { Header = "Temperature in Celsius", ValueMember = "Temperature",},
    new MemberMapping() { Header = "Rain in Centimeters", ValueMember = "Rain", Colorizer = heatMapGradientColorizer }
    };
    this.radHeatMap1.HeatMapElement.RowHeaderWidth = 80;
    this.radHeatMap1.HeaderCellPainting += RadHeatMap1_HeaderCellPainting1;
    this.radHeatMap1.Definition = horizontalDefinition;
}

private void RadHeatMap1_HeaderCellPainting1(object sender, HeatMapHeaderCellPaintingEventArgs e)
{
    if (e.Index.ColumnIndex == -1 && e.Index.RowIndex > -1)
    {
        var heatMapItem = this.radHeatMap1.Definition.GetDataItem(new CellIndex(e.Index.RowIndex, 0));
        var dataBoundItem = heatMapItem.DataBoundItem as TempInfo;
        e.Text = dataBoundItem.Year.ToString("yyyy") + "  " + dataBoundItem.Month;
    }
}



````
````VB.NET

Private Sub Bind_HorizontalDefinition()
	Dim heatMapGradientColorizer As HeatMapGradientColorizer = New HeatMapGradientColorizer()
	Dim colorConverter As ColorConverter = New ColorConverter()
	heatMapGradientColorizer.GradientStops = New List(Of GradientStop)() From {
		New GradientStop() With {
			.Color = CType(New ColorConverter().ConvertFromString("#D9E7F1"), Color),
			.Position = 0
		},
		New GradientStop() With {
			.Color = CType(New ColorConverter().ConvertFromString("#01518C"), Color),
			.Position = 1
		}
	}
	Dim horizontalDefinition As HorizontalDefinition = New HorizontalDefinition()
	horizontalDefinition.DataSource = PrepareData()
	horizontalDefinition.HeaderMember = "Month"
	horizontalDefinition.MemberMappings = New MemberMappingsCollection() From {
		New MemberMapping() With {
			.Header = "Temperature in Celsius",
			.ValueMember = "Temperature"
		},
		New MemberMapping() With {
			.Header = "Rain in Centimeters",
			.ValueMember = "Rain",
			.Colorizer = heatMapGradientColorizer
		}
	}
	Me.radHeatMap1.HeatMapElement.RowHeaderWidth = 80
	AddHandler Me.radHeatMap1.HeaderCellPainting, AddressOf RadHeatMap1_HeaderCellPainting1
	Me.radHeatMap1.Definition = horizontalDefinition
End Sub

Private Sub RadHeatMap1_HeaderCellPainting1(ByVal sender As Object, ByVal e As HeatMapHeaderCellPaintingEventArgs)
	If e.Index.ColumnIndex = -1 AndAlso e.Index.RowIndex > -1 Then
		Dim heatMapItem = Me.radHeatMap1.Definition.GetDataItem(New CellIndex(e.Index.RowIndex, 0))
		Dim dataBoundItem = TryCast(heatMapItem.DataBoundItem, TempInfo)
		e.Text = dataBoundItem.Year.ToString("yyyy") & "  " + dataBoundItem.Month
	End If
End Sub


````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Horizontal Definition](images/heatmap-data-binding03.png)

## Design Time

It is possible to specify the data member properties via the Smart Tag. The following tutorial demonstrates how to bind the heat map control to a BindingSource object in the current form.

![WinForms RadHeatMapMap Data Binding Design Time](images/heatmap-data-binding04.png)
 
## See Also

* [Structure]({%slug heatmap-structure%})
* [Getting Started]({%slug heatmap-getting-started%})
* [Unbound Mode]({%slug heatmap-unbound-mode%})
