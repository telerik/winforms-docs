---
title: How to Save/Load GridView's Layout with Custom Summary Items 
description: This article demonstrates some tips how to save/load GridView's layout with custom summary items  
type: how-to
page_title: How to Save/Load GridView's Layout with Custom Summary Items     
slug: gridview-save-load-layout-with-custom-summary-items
position: 0
tags: gridview, print
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.3.1020|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

**RadGridView** provides a convenient API for creating [summary rows]({%slug winforms/gridview/rows/summary-rows%}). If the default aggregate functions are not suitable for your case, you can write your own logic for summary items evaluation by inheriting the **GridViewSummaryItem** class and overriding the **Evaluate** method.
A common requirement is to [save the layout and load]({%slug winforms/gridview/save-and-load-layout/overview%}) it at a later moment. However, the custom defined summary item may not be properly restored and it will stop functioning properly. 

## Solution 

In order to save the custom summary row in the layout and restore it as expected at a later moment, it is necessary to meet two requirements:

1. Have a parameterless constructor for the custom **GridViewSummaryItem**.
2. The custom **GridViewSummaryItem** class must be defined outside the form's class. It is good to create a separate file for the class.   
 

# See Also

* [Save and Load Layout]({%slug winforms/gridview/save-and-load-layout/overview%})
* [Summary Rows]({%slug winforms/gridview/rows/summary-rows%})

