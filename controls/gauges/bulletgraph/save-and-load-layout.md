---
title: Save and Load Layout
page_title: Save and Load Layout | RadBulletGraph
description: RadBulletGraph supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements' settings and restore them later. The layout settings are written in xml file.
slug: winforms/gauges/bulletgraph/save-and-load-layout
tags: save,and,load,layout
published: True
position: 5
---

# Save and Load Layout

__RadBulletGraph__ supports Save/Load layout functionality which gives you the opportunity to preserve gauge elements' settings and restore them later. The layout settings are written in xml file. You can save the layout at design or at run time.

## Design Time

You can easily save/load the layout with the smart tag.

>caption Figure 1: Smart Tag
![radbulletgraph-save-and-load-layout 001](images/radbulletgraph-save-and-load-layout001.png)

## Run Time

You can save/load the layout in code as well. 

#### Save/Load Layout

{{source=..\SamplesCS\Gauges\BulletGraphCode.cs region=SaveLoadLayout}} 
{{source=..\SamplesVB\Gauges\BulletGraphCode.vb region=SaveLoadLayout}} 

````C#
private void SaveLoadLayout()
{
    this.radBulletGraph1.SaveLayout(@"..\..\gauge-layout.xml");
    this.radBulletGraph1.LoadLayout(@"..\..\gauge-layout.xml");
}

````
````VB.NET
Private Sub SaveLoadLayout()
    Me.radBulletGraph1.SaveLayout("..\..\gauge-layout.xml")
    Me.radBulletGraph1.LoadLayout("..\..\gauge-layout.xml")
End Sub

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/gauges/bulletgraph/smart-tag%})
* [Getting Started]({%slug winforms/gauges/bulletgraph/getting-started%})


