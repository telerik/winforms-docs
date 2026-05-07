---
title: Custom Grouping
page_title: Custom Grouping - RadPropertyGrid
description: Custom grouping is a flexible mechanism for creating RadPropertyGrid groups by using custom logic.
slug: winforms/propertygrid/features/custom-grouping
tags: custom,grouping
published: True
position: 2
previous_url: propertygrid-features-custom-grouping
---

# Custom Grouping

Custom grouping is a flexible mechanism for creating RadPropertyGrid groups by using custom logic. It has a higher priority than the applied __GroupDescriptors__. Grouping is applied if user grouping is enabled through the __RadPropertyGrid.EnableGrouping__ or __PropertyGridElement.EnableGrouping__ properties. By default, grouping is enabled.

You can use the __ItemFormatting__ event to format the group text of the created custom groups.

## Using the CustomGrouping Event

The __CustomGrouping__ event is fired if custom grouping is enabled through the __RadPropertyGrid.EnableCustomGrouping__ or __PropertyGridElement.EnableCustomGrouping__ properties. By default, custom grouping is disabled.

* __PropertyGridTable__: The table while holds the items that will be grouped

* __Item__: The item which group is defined

* __GroupKey__: Identifier of the group

* __Handled__: Defines whether the item is processed by the custom algorithm or by the applied group descriptors.

The following example demonstrates how to handle the __CustomGrouping__ event to group the **RadPropertyGrid** items by the type of the property:

>caption Figure 1: Custom Grouping

![WinForms RadPropertyGrid Custom Grouping](images/propertygrid-features-custom-grouping001.png)

#### Custom Grouping

<snippet id='propertygrid-propertygridcustomgrouping-customgrouping-cs' />
<snippet id='propertygrid-propertygridcustomgrouping-customgrouping-vb' />



# See Also

* [Filtering]({%slug winforms/propertygrid/features/filtering%})
* [Grouping]({%slug winforms/propertygrid/features/grouping%})
* [Sorting]({%slug winforms/propertygrid/features/sorting%})
* [Editors]({%slug winforms/propertygrid/editors/overview%})
