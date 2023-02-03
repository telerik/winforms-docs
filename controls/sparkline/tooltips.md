---
title: Tooltips
page_title: Tooltips RadSparkline
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-tooltips
tags: sparkline, tooltips
published: True
position: 8
---

# Tooltips

The tooltips are supported out of the box and you just need to enable them.

#### Enable tooltips

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=EnableTooltips}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=EnableTooltips}}

````C#
radSparkline1.ShowToolTip = true;

````
````VB.NET
radSparkline1.ShowToolTip = True


````
 
 

{{endregion}} 

The default tooltips will displayed when hovering over a particular data point. 

![WinForms RadSparkline Enable Tooltips](images/sparkline-tooltips001.png)


## Customizing Tooltip Text

You can use the __DataPointTooltipTextNeeded__ event to set custom tooltip text. The following snippet shows how you can access the event.

#### Subscribing to DataPointTooltipTextNeeded

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=TooltipController}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=TooltipController}}
````C#
var toolTipControler = new SparkTooltipController();
toolTipControler.DataPointTooltipTextNeeded += ToolTipControler_DataPointTooltipTextNeeded;
radSparkline1.Controllers.Add(toolTipControler);


````
````VB.NET
Dim toolTipControler = New SparkTooltipController()
AddHandler toolTipControler.DataPointTooltipTextNeeded, AddressOf ToolTipControler_DataPointTooltipTextNeeded
radSparkline1.Controllers.Add(toolTipControler)


````


{{endregion}} 


The following example shows how you can set the text in the event handler.

#### Customizing the Tooltip Text

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=TooltipTextEvent}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=TooltipTextEvent}}
````C#
private void ToolTipControler_DataPointTooltipTextNeeded(object sender, Telerik.WinControls.UI.Sparkline.SparkDataPointTooltipTextNeededEventArgs e)
{
    var point = e.DataPoint as CategoricalSparkDataPoint;
    if (point.Value > 10)
    {
        e.Text = "Value Critical";
    }
    else
    {
        e.Text = "Normal Vlaue";
    }
}

````
````VB.NET
Private Sub ToolTipControler_DataPointTooltipTextNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Sparkline.SparkDataPointTooltipTextNeededEventArgs)
    Dim point = TryCast(e.DataPoint, CategoricalSparkDataPoint)
    If point.Value > 10 Then
        e.Text = "Value Critical"
    Else
        e.Text = "Normal Vlaue"
    End If
End Sub


````

 
 

{{endregion}} 



