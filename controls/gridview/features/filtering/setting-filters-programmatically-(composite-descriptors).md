---
title: Setting Filters Programmatically (composite descriptors)
page_title: Setting Filters Programmatically (composite descriptors) - WinForms GridView Control
description: Learn how to filter a single data field by multiple values in WinForms GridView by using the CompositeFilterDescriptor object.
slug: winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)
tags: setting,filters,programmatically,(composite,descriptors)
published: True
position: 3
previous_url: gridview-filtering-setting-filters-programmatically-composite-descriptors
---

# Setting Filters Programmatically (composite descriptors)

## Using CompositeFilterDescriptor

To filter a single data field by multiple values, you have to use the __CompositeFilterDescriptor__ object. It contains a collection of filter descriptors objects and the logical operator for that filters.

#### Setting composite filter descriptors

<snippet id='gridview-filtering-settingcompositefilterdescriptors-cs' />
<snippet id='gridview-filtering-settingcompositefilterdescriptors-vb' />

The __CompositeFilterDescriptors__ supports *__And__* and *__Or__* logical operators. Result of the above example using *__And__* logical operator:

![WinForms RadGridView CompositeFilterDescriptors](images/gridview-filtering-setting-filters-programmatically-composite-descriptors001.png)

Result of the above example using *__Or__* logical operator:

![WinForms RadGridView CompositeFilterDescriptors With LogicalOperator](images/gridview-filtering-setting-filters-programmatically-composite-descriptors002.png)

## More Complex Composite Filters

The composite filters allow you to create more complex filtering expressions. Such a complex filtering expression might include filters for multiple fields combined with different logical operators, like __(UnitsOnOrder= 0 AND (UnitsInStock> 100 OR ProductName.StartsWith(“G”)))__.

#### Setting complex composite filter descriptors

<snippet id='gridview-filtering-settingcomplexcompositefilterdescriptors-cs' />
<snippet id='gridview-filtering-settingcomplexcompositefilterdescriptors-vb' />

## Setting Filters for Excel-like filtering

The following example shows how you can add descriptors that will be reflected in the [Excel-like]({%slug winforms/gridview/filtering/excel-like-filtering%}) filter popup.

#### Setting filters for Excel-like filtering

<snippet id='gridview-filtering-excel-cs' />
<snippet id='gridview-filtering-excel-vb' />

## See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Events]({%slug winforms/gridview/filtering/events%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

