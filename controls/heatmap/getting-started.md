---
title: Getting Started
page_title: Getting Started - WinForms HeatMap Control
description: Get familiar with the WinForms HeatMap.  
slug: heatmap-getting-started
tags: heatmap, getting, started
published: True
position: 2
---

# Getting Started with WinForms HeatMap

This article shows how you can start using **RadHeatMap**. Just drag a RadHeatMap from the toolbox and drop it onto the form. Then, you can define a sample data and bind the control:

![WinForms RadHeatMap Getting Started](images/heatmap-getting-started001.png)

## Setting up the Data

To use the RadHeatMap control you will need to define a model that will describe the data that will be shown.

{{source=..\SamplesCS\HeatMap\HeatMapGettingStarted.cs region=Model}} 
{{source=..\SamplesVB\HeatMap\HeatMapGettingStarted.vb region=Model}} 

````C#
public class TempInfo 
{ 
    public int Year { get; set; } 
    public string Month { get; set; } 
    public double Temperature { get; set; } 
}            


````
````VB.NET

Public Class TempInfo
    Public Property Year As Integer
    Public Property Month As String
    Public Property Temperature As Double
End Class


````

{{endregion}} 

## Setting up the Control

The control works with few different definitions that describe how to data will be shown. In this example we will use the __CategoricalDefinition__. The definition provides few properties to define what data should be used.

* __RowGroupMember__: Contains the name of the property in the custom model that will be used to generate the rows.
* __ColumnGroupMember__: Contains the name of the property in the custom model that will be used to generate the columns.
* __ValueMember__: Contains the name of the property in the custom model that will be used to generate the cells. Based on that value the cell will be colored differently.

What's left is to create our sample data and set the DataSource property of the __CategoricalDefinition__. Then this definition needs to be applied to the __RadHeatMap.Definition__ property.

{{source=..\SamplesCS\HeatMap\HeatMapGettingStarted.cs region=Populate}} 
{{source=..\SamplesVB\HeatMap\HeatMapGettingStarted.vb region=Populate}} 

````C#

private void PrepareData()
{
    int year = 2018;
    string[] months = new string[6] { "Jan", "Feb", "Mar", "Apr", "May", "Jun" };
    var randomNumberGenerator = new Random();

    var source = new BindingList<TempInfo>();
    for (int i = 0; i < months.Length; i++)
    {
        for (int k = 0; k < 6; k++)
        {
            var info = new TempInfo() { Year = year + k, Month = months[i], Temperature = randomNumberGenerator.Next(10, 300) };
            source.Add(info);
        }
    }
    CategoricalDefinition categoricalDefinition = new CategoricalDefinition();
    categoricalDefinition.RowGroupMember = "Year";
    categoricalDefinition.ColumnGroupMember = "Month";
    categoricalDefinition.ValueMember = "Temperature";
    categoricalDefinition.DataSource= source;
    this.radHeatMap1.Definition = categoricalDefinition;
}  


````
````VB.NET

Private Sub PrepareData()
    Dim year As Integer = 2018
    Dim months As String() = New String(5) {"Jan", "Feb", "Mar", "Apr", "May", "Jun"}
    Dim randomNumberGenerator = New Random()
    Dim source = New BindingList(Of TempInfo)()

    For i As Integer = 0 To months.Length - 1

        For k As Integer = 0 To 6 - 1
            Dim info = New TempInfo() With {
                .Year = year + k,
                .Month = months(i),
                .Temperature = randomNumberGenerator.[Next](10, 300)
            }
            source.Add(info)
        Next
    Next

    Dim categoricalDefinition As CategoricalDefinition = New CategoricalDefinition()
    categoricalDefinition.RowGroupMember = "Year"
    categoricalDefinition.ColumnGroupMember = "Month"
    categoricalDefinition.ValueMember = "Temperature"
    categoricalDefinition.DataSource = source
    Me.radHeatMap1.Definition = categoricalDefinition
End Sub


````

{{endregion}}

## See Also

* [Structure]({%slug heatmap-structure%}) 

