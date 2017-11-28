---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/customizing-appearance/accessing-and-customizing-elements
tags: formatting,items
published: True
position: 0
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/listview/structure%}) of the __RadListView__.      

## Design time

You can access and modify the style for different elements in __RadListView__ by using the *Element hierarchy editor*, which can accessed by clicking Edit UI Elements link.
>caption Fig.1 Element hierarchy editor

![listview-accessing-and-customizing-elements 001](images/listview-accessing-and-customizing-elements001.png)

![listview-accessing-and-customizing-elements 003](images/listview-accessing-and-customizing-elements003.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![listview-accessing-and-customizing-elements 002](images/listview-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\ListView\ListViewFormattingItems.cs region=CustomizeElements}} 
{{source=..\SamplesVB\ListView\ListViewFormattingItems.vb region=CustomizeElements}} 

````C#
this.radListView1.ListViewElement.BackColor = Color.Yellow;
this.radListView1.ListViewElement.ViewElement.HScrollBar.ThumbElement.ThumbFill.BackColor = Color.Red;

````
````VB.NET
Me.RadListView1.ListViewElement.BackColor = Color.Yellow
Me.RadListView1.ListViewElement.ViewElement.HScrollBar.ThumbElement.ThumbFill.BackColor = Color.Red

````

{{endregion}} 
 
# See Also

* [Formatting Items]({%slug winforms/listview/formatting-items%})		
