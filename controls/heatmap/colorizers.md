---
title: Colorizers
page_title: Colorizers - WinForms HeatMap Control
description: Check our &quot;Colorizers&quot; documentation article for the RadHeatMap WinForms control.
slug: heatmap-colorizers
tags: heatmap, colorizer
published: True
position: 6
---

# Colorizers

This topic aims to get you familiar with all types of colorizers you may use to change the visualization of RadHeatMap. Depending on the heatmap's [Definition]({%slug heatmap-definition-types%}), the colorizer may be different according to the data that should be displayed. By default, **RadTreeMap** uses a **HeatMapGradientColorizer** with with two **GradientStop**s.

## Colorizers in a Horizontal/Vertical Definition

In the scenario of Horizontal/Vertical Definition, the colorizer is defined in the MemberMappings of the corresponding definition.

>note The only difference between the two definitions is that for the horizontal definition each item gets a row, while the vertical – a column.

{{source=..\SamplesCS\HeatMap\HeatMapDefinitions.cs region=CarClass}} 
{{source=..\SamplesVB\HeatMap\HeatMapDefinitions.vb region=CarClass}} 

````C#
public class Car
{
    public string Name { get; set; }
    public int MilesPerGallon { get; set; }
    public int TopSpeed { get; set; }
    public int Price { get; set; }
    public int HorsePower { get; set; }
} 

````
````VB.NET

Public Class Car
    Public Property Name As String
    Public Property MilesPerGallon As Integer
    Public Property TopSpeed As Integer
    Public Property Price As Integer
    Public Property HorsePower As Integer
End Class

````

{{endregion}}

Let's start with the following example:

{{source=..\SamplesCS\HeatMap\HeatMapDefinitions.cs region=DefaultColorizer}} 
{{source=..\SamplesVB\HeatMap\HeatMapDefinitions.vb region=DefaultColorizer}} 

````C#

public void ApplyDefaultColorizer()
{
    HorizontalDefinition horizontalDefinition1 = new HorizontalDefinition();
    horizontalDefinition1.DataSource = CreateData(); 
    horizontalDefinition1.HeaderMember = "Name";
    radHeatMap1.Definition = horizontalDefinition1;
    radHeatMap1.DescriptionContent = "Cars";

    MemberMapping memberMapping1 = new MemberMapping();
    memberMapping1.Header = "Price";
    memberMapping1.ValueMember = "Price";
    MemberMapping memberMapping2 = new MemberMapping();
    memberMapping2.Header = "HorsePower";
    memberMapping2.ValueMember = "HorsePower";
    MemberMapping memberMapping3 = new MemberMapping();
    memberMapping3.Header = "TopSpeed";
    memberMapping3.ValueMember = "TopSpeed";

    horizontalDefinition1.MemberMappings.Add(memberMapping1);
    horizontalDefinition1.MemberMappings.Add(memberMapping2);
    horizontalDefinition1.MemberMappings.Add(memberMapping3);
}


public List<Car> CreateData()
{
    var result = new List<Car>()
{
    new Car() {Name = "Car 1", Price = 20590, HorsePower = 70,  MilesPerGallon = 37, TopSpeed = 60 },
    new Car() {Name = "Car 2", Price = 21990, HorsePower = 70,  MilesPerGallon = 37, TopSpeed = 60 },
    new Car() {Name = "Car 3", Price = 23200, HorsePower = 140, MilesPerGallon = 28, TopSpeed = 110 },
    new Car() {Name = "Car 4", Price = 27500, HorsePower = 140, MilesPerGallon = 28, TopSpeed = 110 },
    new Car() {Name = "Car 5", Price = 28200, HorsePower = 160, MilesPerGallon = 31, TopSpeed = 120 },
    new Car() {Name = "Car 6", Price = 29500, HorsePower = 90,  MilesPerGallon = 35, TopSpeed = 80 },
    new Car() {Name = "Car 7", Price = 31200, HorsePower = 160, MilesPerGallon = 31, TopSpeed = 120 },
    new Car() {Name = "Car 8", Price = 32200, HorsePower = 90,  MilesPerGallon = 35, TopSpeed = 80 },
    new Car() {Name = "Car 9", Price = 35200, HorsePower = 115, MilesPerGallon = 29, TopSpeed = 90 },
    new Car() {Name = "Car 10", Price = 36700, HorsePower = 115, MilesPerGallon = 29, TopSpeed = 90 },
    new Car() {Name = "Car 11", Price = 38200, HorsePower = 130, MilesPerGallon = 24, TopSpeed = 140 },
    new Car() {Name = "Car 12", Price = 39700, HorsePower = 130, MilesPerGallon = 24, TopSpeed = 140 },
    new Car() {Name = "Car 13", Price = 41500, HorsePower = 326, MilesPerGallon = 16, TopSpeed = 150 },
    new Car() {Name = "Car 14", Price = 42200, HorsePower = 326, MilesPerGallon = 16, TopSpeed = 150 },
    new Car() {Name = "Car 15", Price = 43500, HorsePower = 276, MilesPerGallon = 25, TopSpeed = 162 },
    new Car() {Name = "Car 16", Price = 43500, HorsePower = 276, MilesPerGallon = 25, TopSpeed = 162 },
};

    return result;
} 

````
````VB.NET

Public Sub ApplyDefaultColorizer()
    Dim horizontalDefinition1 As HorizontalDefinition = New HorizontalDefinition()
    horizontalDefinition1.DataSource = CreateData()
    horizontalDefinition1.HeaderMember = "Name"
    radHeatMap1.Definition = horizontalDefinition1
    radHeatMap1.DescriptionContent = "Cars"
    Dim memberMapping1 As MemberMapping = New MemberMapping()
    memberMapping1.Header = "Price"
    memberMapping1.ValueMember = "Price"
    Dim memberMapping2 As MemberMapping = New MemberMapping()
    memberMapping2.Header = "HorsePower"
    memberMapping2.ValueMember = "HorsePower"
    Dim memberMapping3 As MemberMapping = New MemberMapping()
    memberMapping3.Header = "TopSpeed"
    memberMapping3.ValueMember = "TopSpeed"
    horizontalDefinition1.MemberMappings.Add(memberMapping1)
    horizontalDefinition1.MemberMappings.Add(memberMapping2)
    horizontalDefinition1.MemberMappings.Add(memberMapping3)
End Sub

Public Function CreateData() As List(Of Car)
    Dim result = New List(Of Car)() From {
        New Car() With {
            .Name = "Car 1",
            .Price = 20590,
            .HorsePower = 70,
            .MilesPerGallon = 37,
            .TopSpeed = 60
        },
        New Car() With {
            .Name = "Car 2",
            .Price = 21990,
            .HorsePower = 70,
            .MilesPerGallon = 37,
            .TopSpeed = 60
        },
        New Car() With {
            .Name = "Car 3",
            .Price = 23200,
            .HorsePower = 140,
            .MilesPerGallon = 28,
            .TopSpeed = 110
        },
        New Car() With {
            .Name = "Car 4",
            .Price = 27500,
            .HorsePower = 140,
            .MilesPerGallon = 28,
            .TopSpeed = 110
        },
        New Car() With {
            .Name = "Car 5",
            .Price = 28200,
            .HorsePower = 160,
            .MilesPerGallon = 31,
            .TopSpeed = 120
        },
        New Car() With {
            .Name = "Car 6",
            .Price = 29500,
            .HorsePower = 90,
            .MilesPerGallon = 35,
            .TopSpeed = 80
        },
        New Car() With {
            .Name = "Car 7",
            .Price = 31200,
            .HorsePower = 160,
            .MilesPerGallon = 31,
            .TopSpeed = 120
        },
        New Car() With {
            .Name = "Car 8",
            .Price = 32200,
            .HorsePower = 90,
            .MilesPerGallon = 35,
            .TopSpeed = 80
        },
        New Car() With {
            .Name = "Car 9",
            .Price = 35200,
            .HorsePower = 115,
            .MilesPerGallon = 29,
            .TopSpeed = 90
        },
        New Car() With {
            .Name = "Car 10",
            .Price = 36700,
            .HorsePower = 115,
            .MilesPerGallon = 29,
            .TopSpeed = 90
        },
        New Car() With {
            .Name = "Car 11",
            .Price = 38200,
            .HorsePower = 130,
            .MilesPerGallon = 24,
            .TopSpeed = 140
        },
        New Car() With {
            .Name = "Car 12",
            .Price = 39700,
            .HorsePower = 130,
            .MilesPerGallon = 24,
            .TopSpeed = 140
        },
        New Car() With {
            .Name = "Car 13",
            .Price = 41500,
            .HorsePower = 326,
            .MilesPerGallon = 16,
            .TopSpeed = 150
        },
        New Car() With {
            .Name = "Car 14",
            .Price = 42200,
            .HorsePower = 326,
            .MilesPerGallon = 16,
            .TopSpeed = 150
        },
        New Car() With {
            .Name = "Car 15",
            .Price = 43500,
            .HorsePower = 276,
            .MilesPerGallon = 25,
            .TopSpeed = 162
        },
        New Car() With {
            .Name = "Car 16",
            .Price = 43500,
            .HorsePower = 276,
            .MilesPerGallon = 25,
            .TopSpeed = 162
        }
    }
    Return result
End Function

````

{{endregion}}

>caption Default HeatMapGradientColorizer

![heatmap-colorizers001](images/heatmap-colorizers001.png)

As you may have already noticed, there is no colorizer to be seen in the provided code so far. When there is no colorizer specified, RadHeatMap uses a default one. It is a **HeatMapGradientColorizer**.

## See Also

* [Structure]({%slug heatmap-structure%}) 

