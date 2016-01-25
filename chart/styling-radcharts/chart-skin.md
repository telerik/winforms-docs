---
title: Chart Skin
page_title: Chart Skin | UI for WinForms Documentation
description: Chart Skin
slug: winforms/chart/styling-radcharts/chart-skin
tags: chart,skin
published: True
position: 3
previous_url: chart-styling-radcharts-chart-skin
---

# Chart Skin



The skins in RadChart are a set of predefined appearance properties. You can use the embedded skins by setting the RadChart.Skin property to a name of a skin. You can also set the property to __Custom__ and use your own appearance settings.
			

## Saving own skins

You can either start from existing skin and modify its properties or start from scratch. We recommend the first approach as easier to use.

Once you have set up your skin you can save it in a __ChartSkin__ object using the __CreateFromChart__ method. Then you can save this object to an XML file (which will be your skin).
				

When you want to reuse the skin, you need to create an instance of __ChartSkin__ object, specifying the XML file as a source. Then you can apply the skin to the chart using the __ApplyTo__ method.

{{source=..\SamplesCS\Chart\ChartSkinForm.cs region=ChartSkin}} 
{{source=..\SamplesVB\Chart\ChartSkinForm.vb region=ChartSkin}} 

````C#
//Save the XML Skin file...
ChartSkin myCustomSkin = new ChartSkin();
myCustomSkin.CreateFromChart(RadChart1.Chart, "CustomSkin");
//Restore the XML Skin file...
ChartSkin myCustomSkin1 = new ChartSkin(xmlSource);
myCustomSkin1.ApplyTo(RadChart1.Chart);

````
````VB.NET
'//Save the XML Skin file...
Dim myCustomSkin As New ChartSkin()
        myCustomSkin.CreateFromChart(RadChart1.Chart, "CustomSkin")
        'Restore the XML Skin file...
        Dim myCustomSkin1 As New ChartSkin(xmlSource)
        myCustomSkin1.ApplyTo(RadChart1.Chart)

````

{{endregion}} 



