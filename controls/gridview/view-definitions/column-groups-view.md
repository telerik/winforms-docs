---
title: Column Groups View
page_title: Column Groups View - WinForms GridView Control
description: Learn how to use the ColumnGroupsViewDefinition in order to group columns and rows in one when using WinForms GridView.
slug: winforms/gridview/view-definitions/column-groups-view
tags: column,groups,view
published: True
position: 2
previous_url: gridview-viewdefinitions-column-groups-view
---

# Column Groups View

## Add groups view definition by using the Property Builder

Since R3 2015 you can add and configure the groups view definition in the [property builder]({%slug winforms/gridview/design-time-support/property-builder%}). This section will show you how you can use the property builder to setup the groups view definition.

1. Before configuring the view definition you should add all regular columns to the grid. For example you can add some columns directly in the property builder window. Figure 2 shows how you can do that.
            
	>caption Figure 2: Add the default columns.

	![Telerik UI for WinForms RadGridView Property Builder showing the default columns being added before configuring a column groups view](images/gridview-viewdefinitions-column-groups-view003.gif)

1. The next step is to change the __ViewDefinition__ to __ColumnGroups View__. `Figure 3` shows where you can find this property. Changing the view will add the default root group.
            
	>caption Figure 3: Change the ViewDefinition

	![Telerik UI for WinForms RadGridView Property Builder showing the ViewDefinition property changed to ColumnGroups View](images/gridview-viewdefinitions-column-groups-view002.png)

1. Now you are ready to add the groups. This can be achieved by selecting the __Columns groups__ node which will show the button for adding groups.
            
	>caption Figure 4: Add Groups

	![Telerik UI for WinForms RadGridView Property Builder showing column groups being added in the Columns groups node](images/gridview-viewdefinitions-column-groups-view004.gif)

1. The final step is to arrange the groups. This can easily achieved by just drag and drop columns or groups to the desired position.
            
	>caption Figure 5: Arrange the columns and groups

	![Telerik UI for WinForms RadGridView Property Builder showing columns and groups arranged by drag and drop](images/gridview-viewdefinitions-column-groups-view005.gif)

The property builder allows you to edit the groups properties as well. Once a particular group is selected you will be able to change its properties.
        
>caption Figure 6 Change the group properties

![Telerik UI for WinForms RadGridView Property Builder showing editable properties for a selected column group](images/gridview-viewdefinitions-column-groups-view006.png)

## 

Just as its name says, this view enables grouping of columns. Every column group can have an unlimited number of subgroups or rows containing columns. In the following example, the grid is bound to the `Customers` table from the Northwind data base. 

First instantiate __ColumnGroupsViewDefinition__ and add some groups.

#### Create groups

<snippet id='gridview-columngroupsview-creategroups-cs' />
<snippet id='gridview-columngroupsview-creategroups-vb' />

Then add at least one row. This row will contain the desired columns.

#### Add rows to groups

<snippet id='gridview-columngroupsview-addrows-cs' />
<snippet id='gridview-columngroupsview-addrows-vb' />

At the end simply set the __ViewDefinitions__ property to the newly created __ViewDefinition__ instance.

#### Set the ViewDefinition property of RadGridView

<snippet id='gridview-columngroupsview-settheviewdefinition-cs' />
<snippet id='gridview-columngroupsview-settheviewdefinition-vb' />

The result is:
        
>caption Figure 1: ColumnGroups ViewDefinition

![Telerik UI for WinForms RadGridView showing the resulting ColumnGroups ViewDefinition layout with grouped columns](images/gridview-viewdefinitions-column-groups-view001.png)

>caution In order to pin a certain group, you should do it after the RadGridView.__ViewDefinition__ property is set and the grid is populated with data.


# Important properties

* __GridViewColumnGroup__
    - __ShowHeader:__ Gets or sets a value indicating whether group header is visible. Works only for top level groups.
    - __RowSpan:__ Gets or set the vertical span of the group (the height) in pixels.

* __GridViewColumnGroupRow__
    - __MinHeight:__ Gets or sets the minimum height of the row. If the property is not set, the row height will be equal to the maximum RowSpan of the columns in that row.



# See Also

* [HTML View]({%slug winforms/gridview/view-definitions/html-view%})

* [Overview]({%slug winforms/gridview/view-definitions/overview%})

* [Table View]({%slug winforms/gridview/view-definitions/table-view%})

