---
title: Modifying the Default Context Menu
page_title: Modifying the Default Context Menu - ChartView
description: The default RadChartView context menu can be customized in the ContextMenuOpening event handler.
slug: winforms/chartview/context-menu/modifying-the-default-context-menu
tags: modifying,the,default,context,menu
published: True
position: 0
---

# Modifying the Default Context Menu

The default __RadChartView__ context menu can be customized in the __ContextMenuOpening__ event handler.

## New Menu Item

In order to add custom menu items to the default context menu, you should create menu item instances in the __ContextMenuOpening__ event handler and add them to the __e.ContextMenu.Items__ collection. The following example adds an item responsible for exporting the chart to an image.

>caption Figure 1: Modified Context Menu
![WinForms RadChartView Modified Context Menu](images/modifying-the-default-context-menu001.png)

#### Subscribe to Event

<snippet id='chartview-modifying-the-default-context-menu-subscribetoevent-cs'/>
<snippet id='chartview-modifying-the-default-context-menu-subscribetoevent-vb'/>



#### Handle Event

<snippet id='chartview-modifying-the-default-context-menu-handleevent-cs'/>
<snippet id='chartview-modifying-the-default-context-menu-handleevent-vb'/>



# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Export]({%slug winforms/chartview-/features/export%})
* [Printing]({%slug winforms/chartview-/printing-support/printing%})
