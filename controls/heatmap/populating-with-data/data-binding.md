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

Data binding is a mechanism for automatic population of the RadHeatMap with items, based on the provided data structure. 

## Setting up the Model and the Sample Data

In order to demonstrate how to populate a RadHeatMap with data, we will create a sample object that will hold temperature information and a viewmodel that will hold a collection of those objects.

#### __Example 1: Setting up the model__

{{source=..\SamplesCS\TreeMap\HeatMapGettingStarted.cs region=Bind_Model}} 
{{source=..\SamplesVB\TreeMap\HeatMapGettingStarted.vb region=Bind_Model}} 

````C#
public class TempInfo
{
	public DateTime Year { get; set; }
	public string Month { get; set; }
	public double Temperature { get; set; }
	public double Rain { get; set; }
}        


````
````VB.NET

Public Class TempInfo
    Public Property Year As DateTime
    Public Property Month As String
    Public Property Temperature As Double
    Public Property Rain As Double
End Class


````

{{endregion}} 

#### __Example 1: Creating Sample Data__

{{source=..\SamplesCS\TreeMap\HeatMapGettingStarted.cs region=Bind_SampleData}} 
{{source=..\SamplesVB\TreeMap\HeatMapGettingStarted.vb region=Bind_SampleData}} 

````C#
private BindingList<TempInfo> PrepareData()
{
    DateTime date = DateTime.Today;
    var infos = new BindingList<TempInfo>()
    {
        new TempInfo() { Year = date, Month = "Apr", Temperature = 17, Rain = 8.8},
        new TempInfo() { Year = date, Month = "May", Temperature = 20, Rain = 6.25},

        new TempInfo() { Year = date.AddYears(1), Month = "Jan", Temperature = 5, Rain=10.3},
        new TempInfo() { Year = date.AddYears(1), Month = "Feb", Temperature = 13, Rain = 9.8},
        new TempInfo() { Year = date.AddYears(1), Month = "Mar", Temperature = 21, Rain = 9.6},

        new TempInfo() { Year = date.AddYears(2), Month = "Jan", Temperature = 14, Rain = 11.5},
        new TempInfo() { Year = date.AddYears(2), Month = "Feb", Temperature = 19, Rain = 7.5},
        new TempInfo() { Year = date.AddYears(2), Month = "Mar", Temperature = 17, Rain = 10.1},
    };
    return infos;
}     


````
````VB.NET

Private Function PrepareData() As BindingList(Of TempInfo)
    Dim date As DateTime = DateTime.Today
    Dim infos = New BindingList(Of TempInfo)() From {
        New TempInfo() With {
            .Year = date,
            .Month = "Apr",
            .Temperature = 17,
            .Rain = 8.8
        },
        New TempInfo() With {
            .Year = date,
            .Month = "May",
            .Temperature = 20,
            .Rain = 6.25
        },
        New TempInfo() With {
            .Year = date.AddYears(1),
            .Month = "Jan",
            .Temperature = 5,
            .Rain = 10.3
        },
        New TempInfo() With {
            .Year = date.AddYears(1),
            .Month = "Feb",
            .Temperature = 13,
            .Rain = 9.8
        },
        New TempInfo() With {
            .Year = date.AddYears(1),
            .Month = "Mar",
            .Temperature = 21,
            .Rain = 9.6
        },
        New TempInfo() With {
            .Year = date.AddYears(2),
            .Month = "Jan",
            .Temperature = 14,
            .Rain = 11.5
        },
        New TempInfo() With {
            .Year = date.AddYears(2),
            .Month = "Feb",
            .Temperature = 19,
            .Rain = 7.5
        },
        New TempInfo() With {
            .Year = date.AddYears(2),
            .Month = "Mar",
            .Temperature = 17,
            .Rain = 10.1
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

The __RowGroupMember__ will point to DateTime type property. To format the DateTime value, we can subscribe to the __HeaderCellPainting__ event of the RadHeatMap. This event will be called for the row/column header cells. In the event handler, you can get the raw value of the cell from the HeaderValue property, format it per your requirements, and set the new text to the Text property from the event arguments.

{{source=..\SamplesCS\TreeMap\HeatMapGettingStarted.cs region=Bind_SampleData_CategoricalDefinition}} 
{{source=..\SamplesVB\TreeMap\HeatMapGettingStarted.vb region=Bind_SampleData_CategoricalDefinition}} 

````C#

private void Bind_CategoricalDefinition()
{
    CategoricalDefinition categoricalDefinition = new CategoricalDefinition();
    categoricalDefinition.RowGroupMember = "Year";
    categoricalDefinition.ColumnGroupMember = "Month";
    categoricalDefinition.ValueMember = "Temperature";
    categoricalDefinition.DataSource = PrepareData();
    this.radHeatMap1.Definition = categoricalDefinition;
    this.radHeatMap1.HeaderCellPainting += RadHeatMap1_HeaderCellPainting;
}

private void RadHeatMap1_HeaderCellPainting(object sender, HeatMapHeaderCellPaintingEventArgs e)
{
    if (e.Index.ColumnIndex == -1 && e.Index.RowIndex > -1)
    {
        e.Text = ((DateTime)e.HeaderValue).ToString("yyyy");
    }
}
    


````
````VB.NET

Private Sub Bind_CategoricalDefinition()
	Dim categoricalDefinition As CategoricalDefinition = New CategoricalDefinition()
	categoricalDefinition.RowGroupMember = "Year"
	categoricalDefinition.ColumnGroupMember = "Month"
	categoricalDefinition.ValueMember = "Temperature"
	categoricalDefinition.DataSource = PrepareData()
	Me.radHeatMap1.Definition = categoricalDefinition
	AdHandler Me.radHeatMap1.HeaderCellPainting, AddressOf RadHeatMap1_HeaderCellPainting
End Sub

Private Sub RadHeatMap1_HeaderCellPainting(ByVal sender As Object, ByVal e As HeatMapHeaderCellPaintingEventArgs)
	If e.Index.ColumnIndex = -1 AndAlso e.Index.RowIndex > -1 Then
		e.Text = (CType(e.HeaderValue, DateTime)).ToString("yyyy")
	End If
End Sub



````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Categorical Definition](images/heatmap-data-binding01.png)

### Vertical Definition

Alternatively, we can also use a __VerticalDefinition__. We'll set the months as HeaderPath of our HeatMap. Thus the months supplied by the Month property of our underlying source will be visualized as column headers. For each row we'll display the Temperature and Rain values of the corresponding month.

{{source=..\SamplesCS\TreeMap\HeatMapGettingStarted.cs region=Bind_SampleData_VerticalDefinition}} 
{{source=..\SamplesVB\TreeMap\HeatMapGettingStarted.vb region=Bind_SampleData_VerticalDefinition}} 

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
	this.radHeatMap1.Definition = verticalDefinition;
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
    Me.radHeatMap1.Definition = verticalDefinition
End Sub



````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Vertical Definition](images/heatmap-data-binding02.png)

### Horizontal Definition

This definition is similar to the VerticalDefinition, except the fact that the property value of our underlying source set to the HeaderMember property will be visualized as row headers.

{{source=..\SamplesCS\TreeMap\HeatMapGettingStarted.cs region=Bind_SampleData_HorizontalDefinition}} 
{{source=..\SamplesVB\TreeMap\HeatMapGettingStarted.vb region=Bind_SampleData_HorizontalDefinition}} 

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
    horizontalDefinition.MemberMappings = new MemberMappingsCollection() {
        new MemberMapping() { Header = "Temperature in Celsius", ValueMember = "Temperature",},
        new MemberMapping() { Header = "Rain in Centimeters", ValueMember = "Rain", Colorizer = heatMapGradientColorizer }
    };
    this.radHeatMap1.Definition = horizontalDefinition;
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
    Me.radHeatMap1.Definition = horizontalDefinition
End Sub



````

{{endregion}}

![WinForms RadHeatMapMap Data Binding Horizontal Definition](images/heatmap-data-binding03.png)

## Design Time

It is possible to specify the **DataSource**, **DisplayMember**, **ValueMember** properties via the Smart Tag. The following tutorial demonstrates how to bind the tree map control to the Northwind.Products table:


 
## See Also

* [Structure]({%slug heatmap-structure%}) 

* [Getting Started]({%slug heatmap-getting-started%})

* [Unbound Mode]({%slug heatmap-unbound-mode%})


