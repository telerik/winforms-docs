---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms TreeMap Control
description: Get familiar with the public API of the RadTreeMap WinForms control.
slug: properties-methods-events
tags: treemap, properties, methods, events
published: True
position: 9
---

# Properties, Methods and Events

## RadTreeMap's Properties

|Property|Description|
|----|----|
|**DefaultSize**|Gets the default size of the RadTreeMap when a new instance is initialized.|
|**ValueMember**|Gets or sets the value member.|
|**DisplayMember**|Gets or sets the display member.|
|**DataSource**|Gets or sets the data source.|
|**Items**|Gets a collection of TreeMapDataItem objects which represent the items in RadTreeMap.|
|**Groups**|Gets a collection containing the groups of the RadTreeMap.|
|**EnableGrouping**|Gets or sets a value indicating whether the grouping is enabled.|
|**AllowSelection**|Gets or sets a value indicating whether the selection is enabled.|
|**AllowHotTracking**|Gets or sets a value indicating whether the hot tracking behavior is enabled.|
|**Algorithm**|Gets or sets the tree map algorithm.|
|**Colorizer**|Gets or sets the tree map items colorizer.|
|**HoveredItem**|Gets the hovered item.|
|**HoveredGroup**|Gets the hovered group.|
|**SelectedGroup**|Gets or sets the selected group.|
|**SelectedItem**|Gets or sets the selected item.|
|**GroupBackColor**|Gets or sets the group background color.|
|**GroupBorderColor**|Gets or sets the group border color.|
|**HoveredItemBackColor**|Gets or sets the hovered item background color.|
|**HoveredItemBorderColor**|Gets or sets the hovered item border color.|
|**HoveredItemBorderWidth**|Gets or sets the hovered item border width.|
|**SelectedItemBackColor**|Gets or sets the selected item background color.|
|**SelectedItemBorderColor**|Gets or sets the selected item border color.|
|**SelectedItemBorderWidth**|Gets or sets the border width of selected item.|
|**WrapItemText**|Gets or sets a value indicating whether to wrap the text of the items.|
|**ItemTextAlignment**|Gets or sets the text alignment of the items.|
|**GroupTextAlignment**|Gets or sets the text alignment of the groups.|
|**GroupDescriptors**|Gets a collection of GroupDescriptor which are used to define grouping rules over the TreeMapDataItemCollection.|
|**Title**|Gets or sets the tree map title.|
|**ShowLegend**|Gets or sets a value indicating whether legend is shown.|
|**LegendPosition**|Gets or sets the legend position.|
|**LegendOrientation**|Gets or sets the orientation of the legend items.|
|**LegendTitle**|Gets or sets the legend title.|
|**ToolTipDisplayMode**|Gets or sets a value indicating how to display tool tips.| 

## RadTreeMap's Methods

|Method|Description|
|----|----|
|**EvaluateAlgorithm**|Evaluates the algorithm. When the algorithm passes, each item will have updated Bounds property.|
|**ColorizeItems**|The colorizer passes through all items ad sets the corresponding background and foreground colors.|

## RadTreeMap's Events

|Event|Description|
|----|----|
|**ItemCreating**|Occurs when a TreeMapDataItem needs to be created.|
|**ItemDataBound**|Occurs when a data-bound item is being attached to a TreeMapDataItem.|
|**AlgorithmEvaluated**|Occurs when the Algorithm has been evaluated and all Items have valid Bounds.|
|**ItemPainting**|Occurs when an item is about to be painted.|
|**GroupPainting**|Occurs when an group is about to be painted.|
|**ItemPainted**|Occurs when an item has been painted.|
|**GroupPainted**|Occurs when a group and its items have been painted.|
|**HoveredItemChanged**|Occurs when the hovered item has changed.|
|**HoveredGroupChanged**|Occurs when the hovered group has changed.|
|**SelectedItemChanging**|Occurs when the selected item is about to be changed. Cancellable.|
|**SelectedItemChanged**|Occurs when the selected item has changed.|
|**SelectedGroupChanging**|Occurs when the selected group is about to be changed. Cancellable.|
|**SelectedGroupChanged**|Occurs when the selected group has changed.|
|**ScreenTipShowing**|Occurs when the screen tip is about to be shown. Cancellable.|
|**ToolTipShowing**|Occurs when the tool tip is about to be shown. Cancellable.|

# See Also

* [Structure]({%slug winforms-treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Data Binding]({%slug treemap-data-binding%})

