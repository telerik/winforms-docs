---
title: How Do I Assign Individual Colors to Bars?
page_title: How Do I Assign Individual Colors to Bars? | UI for WinForms Documentation
description: How Do I Assign Individual Colors to Bars?
slug: winforms/chart/how-to/how-do-i-assign-individual-colors-to-bars?
tags: how,do,i,assign,individual,colors,to,bars?
published: True
position: 2
previous_url: chart-how-to-assign-individual-colors-to-bars
---

# How Do I Assign Individual Colors to Bars?



## 

"I need each bar in a bar chart to be a different color.  How do I do this?"

By default __RadChart__ is designed so that all bars from a series have the same colors. If you need each to have a different color, loop through each chart series item and assign them a color from an array. This should be done after binding the chart, so the chart series items are available.


>caption 

![chart-how-to-assign-individual-colors-to-bars 001](images/chart-how-to-assign-individual-colors-to-bars001.png) 

{{source=..\SamplesCS\Chart\AddIndividualColorsToBars.cs region=assignColors}} 
{{source=..\SamplesVB\Chart\AddIndividualColorsToBars.vb region=assignColors}} 

````C#
void Form1_Load(object sender, EventArgs e)
{
    Color[] barColors = new Color[8]{
        Color.Purple,
        Color.SteelBlue,
        Color.Aqua,
        Color.Yellow,
        Color.Navy,
        Color.Green,
        Color.Blue,
        Color.Red
    };
    int i = 0;
    radChart1.DataSource = "..\\..\\Chart\\ChartXML.xml";
    radChart1.DataBind();
    radChart1.Series[0].Name = "Units by Category";
    foreach (ChartSeriesItem item in radChart1.Series[0].Items)
    {
        item.Appearance.FillStyle.MainColor = barColors[i++];
    }
}

````
````VB.NET
Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    Dim barColors As Color()
    barColors = New Color() {Color.Purple, Color.SteelBlue, Color.Aqua, Color.Yellow, Color.Navy, Color.Green, Color.Blue, Color.Red}
    Dim i As Integer = 0
    radChart1.DataSource = "..\..\Chart\ChartXML.xml"
    radChart1.DataBind()
    radChart1.Series(0).Name = "Units by Category"
    For Each item As ChartSeriesItem In radChart1.Series(0).Items
        item.Appearance.FillStyle.MainColor = barColors(System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1))
    Next
End Sub

````

{{endregion}} 



