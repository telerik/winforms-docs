---
title: Filtering
page_title: Filtering - WinForms DropDownList Control
description: WinForms DropDownList offers filtering functionality for its items.
components: ["dropdownlist"]
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/filtering
tags: filtering
published: True
position: 11
previous_url: dropdown-and-listcontrol-dropdownlist-filtering
---

# Filtering

`RadDropDownList` in Progress® Telerik® UI for WinForms supports filtering. To apply a filter, set the `Filter` property to a predicate. The control evaluates the predicate for each data item to determine whether to display it.

## Filter

<snippet id='dropdownlist-filtering-filter-cs' />
<snippet id='dropdownlist-filtering-filter-vb' />

 

## Filtering Predicate

<snippet id='dropdownlist-filtering-filteringpredicate-cs' />
<snippet id='dropdownlist-filtering-filteringpredicate-vb' />

 
 

When you apply this filter to a `RadDropDownList` bound to the `Northwind.Customers` table, the control displays the following result:
        
>caption Figure 1: Filter

![RadDropDownList dropdown showing customer names with Laurence Lebihan selected](images/dropdown-and-listcontrol-dropdownlist-filtering001.png)

You can also filter items by setting the `FilterExpression` property.

## Filtering Expression

<snippet id='dropdownlist-filtering-filteringexpression-cs' />
<snippet id='dropdownlist-filtering-filteringexpression-vb' />

 
 
>caption Figure 2: FilteringExpression

![WinForms RadDropDownList FilteringExpression](images/dropdown-and-listcontrol-dropdownlist-filtering002.png)

>note The `IsFilterActive` property indicates whether the `Filter` or `FilterExpression` property has a value.

## See Also

* [Configure auto-completion in RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/auto-complete%})
* [Sort RadDropDownList items]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/sorting%})
* [Configure selection in RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/selection%})
