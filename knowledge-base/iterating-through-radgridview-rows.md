---
title: Iterating through RadGridView Rows
description: Iterating through RadGridView Rows. Check it now!
type: how-to
page_title: Iterating through RadGridView Rows
slug: iterating-through-radgridview-rows
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2010|RadGridView for WinForms|Nikolay Diyanov|Oct 7, 2010| 
 
   
**HOW-TO**  

Iterate through RadGridView Rows.  
   
**SOLUTION**

When you want to iterate through the rows of your RadGridView, you should use either **RadGridView.Rows** or **RadGridView.MasterTemplate.Rows** collection. Both are references to the actual rows collection, bound to the underlying data, and processed by grid's automatic filtering, grouping, and sorting features.  
   
Iterating through the **RadGridView.MasterView.Rows** is a bit slower performance-wise, but this collection is more useful when working in hierarchy mode. It is slower, because the **GridViewInfo.Rows** property is calculated on each request, based on the UI state of the current **GridViewInfo**. For example these are the rows in one sub-detail view in the hierarchy.  
   
