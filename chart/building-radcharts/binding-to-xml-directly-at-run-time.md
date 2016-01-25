---
title: Binding to XML Directly at Run-Time
page_title: Binding to XML Directly at Run-Time | UI for WinForms Documentation
description: Binding to XML Directly at Run-Time
slug: winforms/chart/building-radcharts/binding-to-xml-directly-at-run-time
tags: binding,to,xml,directly,at,run-time
published: True
position: 16
previous_url: chart-building-radcharts-data-binding-radchart-binding-to-xml-directly-at-runtime
---

# Binding to XML Directly at Run-Time



## 

The example below demonstrates binding RadChart to an XML file:

{{source=..\SamplesCS\Chart\DataBindingToXMLAtRunTime.cs region=bindingToXML}} 
{{source=..\SamplesVB\Chart\DataBindingToXMLAtRunTime.vb region=bindingToXML}} 

````C#
RadChart radChart1 = new RadChart();
public DataBindingToXMLAtRunTime()
{
    this.Controls.Add(radChart1);
    InitializeComponent();
    // assign the data source
    radChart1.DataBound += new EventHandler<EventArgs>(radChart1_DataBound);
    radChart1.DataSource = "..\\..\\Chart\\ChartXML.xml";
}
void radChart1_DataBound(object sender, EventArgs e)
{
    radChart1.Series[0].DataYColumn = "QuantityInStock";
    radChart1.PlotArea.XAxis.DataLabelsColumn = "Name";
    // assign appearance related properties
    radChart1.PlotArea.XAxis.Appearance.LabelAppearance.RotationAngle = 300;
    radChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = new System.Drawing.Font("Verdana", 6, System.Drawing.FontStyle.Bold);
    radChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Color = System.Drawing.Color.BlueViolet;
    radChart1.PlotArea.Appearance.Dimensions.Margins.Bottom = Telerik.Charting.Styles.Unit.Percentage(20);
}

````
````VB.NET
Private radChart1 As New RadChart()
Public Sub New()
    Me.Controls.Add(radChart1)
    InitializeComponent()
    ' assign the data source
    AddHandler radChart1.DataBound, AddressOf radChart1_DataBound
    radChart1.DataSource = "..\..\Chart\ChartXML.xml"
End Sub
Private Sub radChart1_DataBound(ByVal sender As Object, ByVal e As EventArgs)
    radChart1.Series(0).DataYColumn = "QuantityInStock"
    radChart1.PlotArea.XAxis.DataLabelsColumn = "Name"
    ' assign appearance related properties
    radChart1.PlotArea.XAxis.Appearance.LabelAppearance.RotationAngle = 300
    radChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = New System.Drawing.Font("Verdana", 6, System.Drawing.FontStyle.Bold)
    radChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Color = System.Drawing.Color.BlueViolet
    radChart1.PlotArea.Appearance.Dimensions.Margins.Bottom = Telerik.Charting.Styles.Unit.Percentage(20)
End Sub

````

{{endregion}} 
 

The running application looks something like the figure shown below.


>caption 

![chart-building-radcharts-data-binding-radchart-binding-to-xml-directly-at-runtime 001](images/chart-building-radcharts-data-binding-radchart-binding-to-xml-directly-at-runtime001.png)


