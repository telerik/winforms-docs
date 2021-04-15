---
title: Save and Load layout
page_title: Save and Load layout - WinForms RadialGauge Control
description: WinForms RadialGauge supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements' settings and restore them later.
slug: winforms/gauges/radialgauge/save-and-load-layout
tags: save,and,load,layout
published: True
position: 5
previous_url: radialgauge-save-and-load-layout
---

# Save and Load Layout

__RadRadialGauge__ supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements' settings and restore them later. The layout settings are written in XML file. You can save the layout at design or at run time.

## Design Time

You can easily save/load the layout with the smart tag.

>caption Figure 1: Smart Tag
![radialgauge-save-and-load-layout 001](images/radialgauge-save-and-load-layout001.png)

## Run Time

You can save/load the layout in code as well. 

#### Save/Load Layout
	
{{source=..\SamplesCS\Gauges\RadialGauge\RadialGaugePropertiesAndEvents.cs region=SaveLoadLayout}} 
{{source=..\SamplesVB\Gauges\RadialGauge\RadialGaugePropertiesAndEvents.vb region=SaveLoadLayout}}
````C#
private void SaveLoadLayout()
{
    this.radRadialGauge1.SaveLayout(@"..\..\gauge-layout.xml");
    this.radRadialGauge1.LoadLayout(@"..\..\gauge-layout.xml");
}

````
````VB.NET
Private Sub SaveLoadLayout()
    Me.RadRadialGauge1.SaveLayout("..\..\gauge-layout.xml")
    Me.RadRadialGauge1.LoadLayout("..\..\gauge-layout.xml")
End Sub

```` 



{{endregion}} 

# See Also

* [Design Time]({%slug winforms/gauges/radialgauge/design-time%})
* [Getting Started]({%slug winforms/gauges/radialgauge/getting-started%})
        
