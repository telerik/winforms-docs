---
title: Save and Load Layout
page_title: Save and Load Layout | UI for WinForms Documentation
description: Save and Load Layout
slug: winforms/gauges/lineargauge/save-and-load-layout
tags: save,and,load,layout
published: True
position: 6
previous_url: lineargauge-save-and-load-layout
---

# Save and Load Layout



__RadLinearGauge__ supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements' settings and restore them later. The layout settings are written in xml file. You can save the layout at design or at run time.
      

## Design Time

You can easily save/load the layout with the smart tag.

![lineargauge-save-and-load-layout 001](images/lineargauge-save-and-load-layout001.png)

## Run Time

You can save/load the layout in code as well. 

{{source=..\SamplesCS\Gauges\LinearGauge\LinearGuageGettingStarted.cs region=code}} 
{{source=..\SamplesVB\Gauges\LinearGauge\LinearGuageGettingStarted.vb region=code}} 

````C#
radLinearGauge1.SaveLayout("Layout.xml");
radLinearGauge1.LoadLayout("Layout.xml");

````
````VB.NET
radLinearGauge1.SaveLayout("Layout.xml")
radLinearGauge1.LoadLayout("Layout.xml")

````

{{endregion}} 



