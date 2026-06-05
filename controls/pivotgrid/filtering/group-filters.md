---
title: Group Filters
page_title: Group Filters - RadPivotGrid
description: Group Filters
slug: winforms/pivotgrid/filtering/group-filters
tags: group,filters
published: True
position: 1
previous_url: pivotgrid-filtering-group-filters
---

# Group Filters

Group filtering allows you to add filter conditions to the group descriptions. These conditions specify which of the generated groups will be displayed. There are two types of group filters: __Label filters__ and __Value filters__. The Label filters apply a specified filter function to the name of the generated groups whereas the Value filters apply a filter function to the __GrandTotal__ value of a given aggregate field for that group.

>caption Figure 1: Group Filters

![WinForms RadPivotGrid Group Filters](images/pivotgrid-filtering-group-filters001.png)

Group filtering is enabled by default. To enable or disable it use the following property:

#### AllowGroupFiltering

<snippet id='pivotgrid-pivotgridgroupfiltering-allowgroupfiltering-cs' />
<snippet id='pivotgrid-pivotgridgroupfiltering-allowgroupfiltering-vb' />



The end-user can apply group filters using the filter button in the group descriptor elements or via the drop-down menus of the group fields in [RadPivotFieldList]({%slug winforms/pivotgrid/pivot-field-list/radpivotfieldlist%}). The filtering options are similar to the options of the __Report Filters__ with the addition of the __Top10 value filters__.  The Top10 filters allow you to select only the top/bottom groups from the order sorted by a given group value.

## Adding a Group Filter Description

Group filters can be applied to group descriptions by using their __GroupFilter__ property as demonstrated in the following code snippet:

<snippet id='pivotgrid-pivotgridgroupfiltering-propertygroupdescription-cs' />
<snippet id='pivotgrid-pivotgridgroupfiltering-propertygroupdescription-vb' />



# See Also

* [Report Filters]({%slug winforms/pivotgrid/filtering/report-filters%})
* [Sorting]({%slug winforms/pivotgrid/sorting%})
