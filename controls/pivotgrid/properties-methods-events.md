---
title: Properties, Methods and Events
page_title: Properties, Methods, Events | RadPivotGrid
description: RadPivotGrid for WinForms is a control which provides functionality similar to the functionality of PivotTables in MS Excel.
slug: winforms/pivotgrid/properties-methods-and-events
tags: pivotgrid, properties, methods, events
published: True
position: 5
---

# Properties

|Property|Description|
|------|------|
|**AutoSize**|Gets or sets whether the edit control is auto-sized|
|**RowGroupsExpandBehavior**|Gets or sets the behavior that will set the expand or collapse state for rows.|
|**ColumnGroupsExpandBehavior**|Gets or sets the behavior that will set the expand or collapse state for columns.|
|**AllowGroupFiltering**|Gets or sets a value indicating whether Group Filtering is enabled.|
|**AllowSelection**|Gets or sets a value indicating whether the user is able to select cells.|
|**AllowDefaultScreenTips**|Gets or sets a value indicating whether the built-in screen tips are enabled.|
|**AllowContextMenu**|Gets or sets a value indicating whether the built-in context menu is enabled.|
|**AllowSorting**|Gets or sets a value indicating whether the user is able to sort the group labels.|
|**AllowHorizontalResize**|Gets or sets a value indicating whether the user is able to resize columns.|
|**AllowVerticalResize**|Gets or sets a value indicating whether the user is able to resize rows.|
|**AutoExpandRowHeaders**|Gets or sets a value indicating whether the newly created row groups should be initially expanded.|
|**AutoExpandColumnHeaders**|Gets or sets a value indicating whether the created column groups should be initially expanded.|
|**ColumnWidth**|Gets or sets the default column width for all columns.|
|**RowHeight**|Gets or sets the default row height for all rows.|
|**ColumnHeaderHeight**|Gets or sets the height of the column headers area.|
|**FilterAreaHeight**|Gets or sets the height of the report filters area.|
|**PrintStyle**|Gets or sets the that is responsible for printing the pivot grid.|
|**EmptyValueString**|Gets or sets the string that will appears on cells that do not have a value.|
|**ErrorString**|Gets or sets the string that will appear on cells for which an error has occurred during calculation.|
|**ColumnGrandTotalsPosition**|Gets or sets the position of the GrandTotal column in the Columns axis.|
|**RowGrandTotalsPosition**|Gets or sets the position of the GrandTotal row in the Rows axis.|
|**RowsSubTotalsPosition**|Gets or sets the position of the SubTotal rows in the Rows axis.|
|**ColumnsSubTotalsPosition**|Gets or sets the position of the SubTotal columns in the Columns axis.|
|**AggregatesPosition**|Gets or sets the axis of the Aggregates groups when more than one aggregate is used.|
|**AggregatesLevel**|Gets or sets the depth of the Aggregates groups among the other groups when more than one aggregate is used.|
|**RowHeadersLayout**|Gets or sets the layout type of the row headers.|
|**ColumnHeadersLayout**|Gets or sets the layout type of the column headers.|
|**ShowFilterArea**|Gets or sets a value indicating whether the Report Filters area should be displayed.|
|**AllowFieldsDragDrop**|Gets or sets a value indicating whether the fields can be reorganized via drag and drop.|
|**RowGroupDescriptions**|A collection of which is used for generating row groups.|
|**ColumnGroupDescriptions**|A collection of which is used for generating column groups.|
|**AggregateDescriptions**|A collection of which describes how the values in the cells are calculated (aggregated).|
|**FilterDescriptions**|A collection of which defines the fields that are available in the Report Filters area.|
|**DataMember**|Gets or sets the name of the list or table in the data source for which RadPivotGrid is displaying aggregated data.|
|**DataSource**|Gets or sets the data source for which RadPivotGrid is displaying aggregated data.|
|**DataProvider**|Gets or sets the that populates the pivot grid with data.|
|**BackColor**|RadPivotGrid consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|**ForeColor**|RadPivotGrid consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|
|**XmlSerializationInfo**|Gets the serialization info for RadPivotGrid used by Save/Load layout methods to persist grid settings to/from XML. By default or when set to null the ComponentXmlSerializationInfo provided by GetDefaultXmlSerializationInfo() will be used.|
|**TableLayoutState**|Gets or sets an object which holds the state of the resized and the collapsed rows and columns. Setting the object will apply the state and will update the layout.|
|**LayoutState**|Gets or sets an object which holds the state of the resized and the collapsed rows and columns. Setting the object will apply the state and will update the layout.|

# Methods

|Method|Description|
|------|------|
|**ReloadData**|Recalculated the displayed information and refreshes the view.|
|**ShowFieldList**|Shows the which allows you to pick fields that are not currently available in RadPivotGrid.|
|**BeginUpdate**|Puts RadPivotGrid in update mode and suspends refreshing the view.|
|**EndUpdate**|Ends the update mode and refreshes the view.|
|**Print**|Directly prints the to the default printer.|
|**PrintPreview**|Shows a for editing the print settings.|
|**GetDefaultXmlSerializationInfo**|Gets the default serialization info for RadPivotGrid used by Save/Load loyout methods to persist grid settings to/from XML.|
|**SaveLayout**|Stores RadPivotGrid properties, sub-objects and their properties in XML format, using the serialization information provided by the property|
|**LoadLayout**|Loads RadPivotGrid properties, sub-objects and their properties from XML file, using the serialization information provided by the property|

# Events

|Event|Description|
|------|------|
|**FilterDescriptorElementCreating**|Fires when a filter descriptor element is being created. Allows for replacing it with a custom element.|
|**AggregateDescriptorElementCreating**|Fires when an aggregate descriptor element is being created. Allows for replacing it with a custom element.|
|**AggregatesPositionElementCreating**|Fires when the aggregate position element is being created. Allows for replacing it with a custom element.|
|**GroupDescriptorElementCreating**|Fires when a group descriptor element is being created. Allows for replacing it with a custom element.|
|**CellFormatting**|Fires when a cell element is updated. Allows for customizing the appearance of the cells.|
|**RowFormatting**|Fires when a row element is updated.|
|**CellCreating**|Fires when a cell element is being created. Allows for replacing the default elements with custom ones.|
|**RowCreating**|Fires when a row element is being created. Allows for replacing the default elements with custom ones.|
|**GroupElementCreating**|Fires when a group element is being created. Allows for replacing the default group elements.|
|**GroupElementFormatting**|Fires when a group element is updated. Allows for customizing its appearance.|
|**GroupExpandedChanged**|Fires when a group is expanded or collapsed.|
|**SelectionChanged**|Fires when the selection in RadPivotGrid has changed.|
|**PrintElementFormatting**|Fires when a print element is being prepared for painting.|
|**PrintElementPaint**|Fires when the print element has been painted. Allows for adding custom painting.|
|**UpdateCompleted**|Fires when the data provider has finished building the data and the UI was updated.|
|**DataProviderChanged**|Fires when the DataProvider property has changed.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpivotgrid.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpivotgrid.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpivotgrid.html#events)

