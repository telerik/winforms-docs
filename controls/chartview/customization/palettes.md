---
title: Palettes
page_title: Palettes - WinForms ChartView Control
description: WinForms ChartView's palettes are a quick and easy way to define a skin for your chart view. A palette is a collection of several palette entries and each palette entry defines up to four colors – two fills and two strokes.
slug: winforms/chartview-/customization/palettes
tags: palettes
published: True
position: 0
previous_url: chartview-customization-palettes
---

# Palettes

Palettes are a quick and easy way to define a skin for your chart view. A palette is a collection of several palette entries and each palette entry defines up to four colors – two fills and two strokes. Currently, only the Fill and Stroke properties are in use, the AdditionalFill and AdditionalStroke are not taken into consideration when applying a palette. 

>caption Figure 1: Palettes

![WinForms RadChartView Palettes](images/chartview-customization-palettes001.png)

As of **R1 2018 RadChartView** offers two new palettes: *Material* and *Fluent*.

>caption Material and Fluent palettes

![WinForms RadChartView Material and Fluent palettes](images/chartview-customization-palettes006.png)

As of **R2 2024 RadChartView** offers four new palettes: *Crystal*, *VisualStudio2019*, *Office2019*, *Windows11*.

>caption Crystal, VisualStudio2019, Office2019, Windows11 palettes

![WinForms RadChartView Crystal, VisualStudio2019, Office2019, Windows11 palettes](images/chartview-customization-palettes007.png)

To apply one of these predefined palettes all you have to do is execute the following line of code:

#### Apply a Palette

{{source=..\SamplesCS\ChartView\Customization\ChartViewPalettes.cs region=palette}} 
{{source=..\SamplesVB\ChartView\Customization\ChartViewPalettes.vb region=palette}} 

````C#
this.radChartView1.Area.View.Palette = KnownPalette.Metro;

````
````VB.NET
Me.RadChartView1.Area.View.Palette = KnownPalette.Metro

````

{{endregion}}  
Here is how two of the palettes look like in action:

>caption Figure 2: Autumn

![WinForms RadChartView Autumn](images/chartview-customization-palettes002.png)

>caption Figure 3: Windows 8

![WinForms RadChartView Windows 8](images/chartview-customization-palettes003.png)

The predefined palettes consist of 8 palette entries which are applied to the series in a cyclic order. The first series is drawn with the colors from the first palette entry the second series is drawn with the colors form the second palette entry… the ninth series is drawn with the colors form the first palette entry and so on. If you would like to apply a palette entry specifically to a series you can do so using either one of the following line of code: 

#### Specific Palette Entry

{{source=..\SamplesCS\ChartView\Customization\ChartViewPalettes.cs region=sample}} 
{{source=..\SamplesVB\ChartView\Customization\ChartViewPalettes.vb region=sample}} 

````C#
lineSeria.Palette = KnownPalette.Flower.GlobalEntries[0];
lineSeria.Palette = new PaletteEntry(Color.Yellow, Color.Red);

````
````VB.NET
lineSeria.Palette = KnownPalette.Flower.GlobalEntries(0)
lineSeria.Palette = New PaletteEntry(Color.Yellow, Color.Red)

````

{{endregion}}

Predefined palettes cannot be edited , however, you can define your own palettes by inheriting from __ChartPalette__ and creating a collection of palette entries. Here is an example: 

#### Create a Custom Palette

{{source=..\SamplesCS\ChartView\Customization\ChartViewPalettes.cs region=customPalette}} 
{{source=..\SamplesVB\ChartView\Customization\ChartViewPalettes.vb region=customPalette}} 

````C#
public class CustomPalette : ChartPalette
{
    public CustomPalette()
    {
        this.GlobalEntries.Add(Color.Yellow, Color.Red);
        this.GlobalEntries.Add(Color.Yellow, Color.Blue);
    }
}

````
````VB.NET
Public Class CustomPalette
    Inherits ChartPalette
    Public Sub New()
        Me.GlobalEntries.Add(Color.Yellow, Color.Red)
        Me.GlobalEntries.Add(Color.Yellow, Color.Blue)
    End Sub
End Class

````

{{endregion}}  

#### Apply a Custom Palette

{{source=..\SamplesCS\ChartView\Customization\ChartViewPalettes.cs region=setCustomPalette}} 
{{source=..\SamplesVB\ChartView\Customization\ChartViewPalettes.vb region=setCustomPalette}} 

````C#
   this.radChartView1.Area.View.Palette = new CustomPalette();

````
````VB.NET
Me.RadChartView1.Area.View.Palette = New CustomPalette()

````

{{endregion}} 

>caption Figure 4: Custom Palette

![WinForms RadChartView Custom Palette](images/chartview-customization-palettes005.png)

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Axes]({%slug winforms/chartview-/axes%})
