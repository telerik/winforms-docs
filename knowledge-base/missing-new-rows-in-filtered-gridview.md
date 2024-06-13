---
title: Newly Added Rows in GridView Disappear If Filtering is Applied
description: This article explains how the filtering mechanism works in the WinForms GridView.
type: how-to
page_title: Newly Added Rows in GridView Disappear If Filtering is Applied
slug: missing-new-rows-in-filtered-gridview
position: 0
tags: gridview, splash, control, update, external
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.1.314|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

When filtering is applied and the user modifies a certain cell value from the filtered column, this automatically may hide the edited row according to the filter criterion.  
 
## Solution 

Adding a FilterDescriptor to RadGridView doesn't perform a one time filtering operation. While the FilterDescriptor is present in the grid, it is responsible to keep the rows visible or not according to the filtering condition. Even newly added rows will be hidden if they don't meet the filter requirements. They won't be displayed until the filter is cleared. 

The possible solution for hiding/showing the rows to any certain logic that is different than the default behavior described above is to use the custom filtering functionality that RadGridView offers. Thus, you can implement any rows filtering  logic that fits your needs. A sample approach is demonstrated in the following help article: [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%}).
 
# See Also

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})  




 

 
