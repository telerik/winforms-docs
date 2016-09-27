---
title: Properties, events and methods.
page_title: Properties Events and methods| RadGanttView
description: This article list the most important properties of RadGanttView. 
slug: winforms/ganttview/Properties
tags: properties,events,methods
published: True
position: 10
---

# Properties

|Property|Description|
|---|---|
|__Links__|Gets the collection of links.|
|__Items__|Gets the collection of task items.|
|__Columns__| Gets the collection of columns shown in the text element|
|__Ratio__|Gets or sets the ratio between the text view and the graphical view.|
|__ItemHeight__|Gets or sets the height of the items.|
|__HeaderHeight__|Gets or sets the height of the header row and the timeline container.|
|__SplitterWidth__|Gets or sets the width of the splitter.|
|__IsEditing__|Gets a value indicating whether this instance is in edit mode.|
|__AllowSummaryEditing__|Gets or sets a value indicating whether summary items are editable by the user or their value is auto-calculated from their sub items.|
|__SelectedItem__|Gets or sets the selected item.|
|__CurrentColumn__|Gets or sets the current column.|
|__DataSource__|Gets or sets the data source that the RadGanttView is displaying data for.|
|__ShowTimelineTodayIndicator__|Gets or sets a value indicating whether to show the timeline today indicator.|
|__ShowTodayIndicator__|Gets or sets a value indicating whether to show the today indicator.|

# Events

|Events|Description|
|---|---|
|__ItemChildIdNeeded__|Occurs when an item needs an id for storing in data sources.|
|__ItemPaint__|Occurs when an item is painted. Allows custom painting over the item. EnableCustomPainting must be set to true for this event to be fired.|
|__ContextMenuOpening__|Occurs when a context menu is about to be opened.|
|__CreateDataItem__|Occurs when a new data item is created.|
|__CreateLinkDataItem__|Occurs when a new link data item is created.|
|__ItemAdding__|Occurs before an GanttViewDataItem is added to the Items collection.|
|__LinkAdding__|Occurs before an GanttViewLinkDataItem is added to the Links collection.|
|__ItemDataError__|Occurs when there is an error in the data layer of RadGanttView related to data operations with Item objects.|
|__LinkDataError__|Occurs when there is an error in the data layer of RadGanttView related to data operations with Link objects.|
|__SelectedItemChanging__|Occurs when the selected item is about to be changed.|
|__SelectedItemChanged__|Occurs when selected item has been changed.|
|__ItemExpandedChanging__|Occurs when an item is about to be expanded or collapsed.|
|__ItemExpandedChanged__|Occurs after an item is expanded or collapsed.|
|__ItemDataBound__|Occurs when an item is data bound.|
|__ItemAdded__|Occurs when a new item is added to the Items collection.|
|__ItemChanged__|Occurs when an item's property is changed.|
|__LinkDataBound__|Occurs when a link is data bound.|
|__LinkAdded__|Occurs when a new link added to the Links collection.|
|__LinkRemoved__|Occurs when a link is removed from the Links collection.|
|__HeaderCellElementCreating__|Occurs when a new header cell element needs to be created.|
|__DataCellElementCreating__|Occurs when a new data cell element needs to be created.|
|__TextViewCellFormatting__|Occurs when the content of a cell needs to be formatted for display.|
|__TextViewItemFormatting__|Occurs when an item in the GanttViewTextViewElement state changes and it needs to be formatted.|
|__TimelineItemFormatting__|Occurs when the state of a timeline item changes and it needs to be formatted.|
|__GraphicalViewItemFormatting__|Occurs when the state of an item in the GanttViewGraphicalViewElement changes and it needs to be formatted.|
|__PrintElementFormatting__|Occurs when an element will be printed. Allows formatting of the element.|
|__PrintElementPaint__|Occurs after an element is printed. Allows for custom painting over the element.|

# Methods

|Methods|Description|
|---|---|
|__BeginUpdate__|Disables all notifications in the RadGanttView.|
|__EndUpdate__|Ends the update.|

Complete list of Properties events and methods can be found in the API Reference: [RadGanttView](http://docs.telerik.com/devtools/winforms/api/html/t_telerik_wincontrols_ui_radganttview.htm) 