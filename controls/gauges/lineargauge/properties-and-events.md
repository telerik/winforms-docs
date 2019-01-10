---
title: Properties and Events
page_title: Properties and Events | RadLinearGauge
description: Properties and Events of RadLinearGauge
slug: winforms/gauges/lineargauge/properties-and-events
tags: properties,and,events
published: True
position: 5
previous_url: lineargauge-properties-and-events
---

# Properties

|Property|Description|
|------|------|
|__RangeEnd__|Specifies the gauge's end.|
|__RangeStart__|Specifies the gauge's start.|
|__Value__|Specifies the gauge's value|
|__Vertical__|Set or Get Gauge Orientation|
|__XmlSerializationInfo__|Gets the serialization info for RadRadialGauge used by Save/Load layout methods to persist grid settings to/from XML. By default, or when set to null the ComponentXmlSerializationInfo provided by GetDefaultXmlSerializationInfo() will be used.|

# Events

|Event|Description|
|------|------|
|__ValueChanged__|The ValueChanged event fires when the value is modified.|
|__OrientationChanged__|The OrientationChanged event fires when the orientation of the gauges is changed.|

The __ValueChanged__ event fires when the __Value__ of the control is changed. For example you can use this event to alert the user that the current value is close to the maximum: 

#### ValueChanged Event

{{source=..\SamplesCS\Gauges\LinearGauge\LinearGuageGettingStarted.cs region=value}} 
{{source=..\SamplesVB\Gauges\LinearGauge\LinearGuageGettingStarted.vb region=value}} 

````C#
void radLinearGauge2_ValueChanged(object sender, EventArgs e)
{
    if ( radLinearGauge2.Value > radLinearGauge2.RangeEnd - 10)
    {
        RadMessageBox.Show("Detected value that is close to the maximum!");
    }
}

````
````VB.NET
Private Sub radLinearGauge1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    If radLinearGauge2.Value > radLinearGauge2.RangeEnd - 10 Then
        RadMessageBox.Show("Detected value that is close to the maximum!")
    End If
End Sub

````

{{endregion}}

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.gauges.radlineargauge.html#properties)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.gauges.radlineargauge.html#events)
