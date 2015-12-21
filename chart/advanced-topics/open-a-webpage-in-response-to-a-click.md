---
title: Open a WebPage in Response to a Click
page_title: Open a WebPage in Response to a Click | UI for WinForms Documentation
description: Open a WebPage in Response to a Click
slug: winforms/chart/advanced-topics/open-a-webpage-in-response-to-a-click
tags: open,a,webpage,in,response,to,a,click
published: True
position: 1
---

# Open a WebPage in Response to a Click



## 

To open a web page in response to a click of an item, you can use the [ActiveRegion]({%slug winforms/chart/advanced-topics/activeregions-and-showing-tooltips%}) __Url__ property and the RadChart.Click event, whose ChartClickEventArgs contains the item clicked: 

{{source=..\SamplesCS\Chart\OpenAWebPageInResponceToAClick.cs region=openAWebPage}} 
{{source=..\SamplesVB\Chart\OpenAWebPageInResponceToAClick.vb region=openAWebPage}} 

````C#
void radChart1_Click(object sender, Telerik.Charting.ChartClickEventArgs args)
{
    if (args.SeriesItem.Index == 2)
    {
        Process.Start(args.SeriesItem.ActiveRegion.Url);
    }
}

````
````VB.NET
Private Sub radChart1_Click(ByVal sender As Object, ByVal args As Telerik.Charting.ChartClickEventArgs)
    If args.SeriesItem.Index = 2 Then
        Process.Start(args.SeriesItem.ActiveRegion.Url)
    End If
End Sub

````

{{endregion}} 





