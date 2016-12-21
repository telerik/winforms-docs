---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadSplitContainer
description: RadSplitContainer is a layout control which allows you to add many container panels to a form, separated by splitter(s).
slug: winforms/splitcontainer/accessing-and-customizing-elements
tags: splitcontainer
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/splitcontainer/structure%}) of **RadSplitContainer**.
      

## Design time

You can access and modify the style for different elements in **RadSplitContainer** by using the *Element hierarchy editor*.

>caption Figure 1: Element hierarchy editor

![splitcontainer-accessing-and-customizing-elements 001](images/splitcontainer-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Fig.2 Customize elements

![splitcontainer-accessing-and-customizing-elements 002](images/splitcontainer-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\SplitContainer\BuildingLayout.cs region=CustomizeElements}} 
{{source=..\SamplesCS\SplitContainer\BuildingLayout.vb region=CustomizeElements}} 

````C#
this.radSplitContainer1.SplitPanels[0].BackColor = Color.Red;
this.radSplitContainer1.Splitters[0].BackgroundFill.BackColor = Color.Yellow;
this.radSplitContainer1.Splitters[0].Border.ForeColor = Color.Lime;
this.radSplitContainer1.Splitters[0].Border.BoxStyle = BorderBoxStyle.SingleBorder;        

````
````VB.NET
Me.radSplitContainer1.SplitPanels(0).BackColor = Color.Red
Me.radSplitContainer1.Splitters(0).BackgroundFill.BackColor = Color.Yellow
Me.radSplitContainer1.Splitters(0).Border.ForeColor = Color.Lime
Me.radSplitContainer1.Splitters(0).Border.BoxStyle = BorderBoxStyle.SingleBorder

````

{{endregion}}  

# See Also

* [Themes]({%slug winforms/splitcontainer/themes%})	