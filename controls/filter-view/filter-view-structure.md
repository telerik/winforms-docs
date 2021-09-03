---
title: Structure
page_title: Structure | Filter View
description: Get familiar with the internal elements structure of the WinForms FilterView control.  
slug: filter-view-structure
tags: filter, view
published: True
position: 1  
---

# Structure

This article describes the inner structure and organization of the elements which build **RadFilterView**.

![filter-view-structure 001](images/filter-view-structure001.png)

**RadFilterView** is build of different filter view group elements. The control uses a **FilterViewCategoriesFactory** that creates the necessary category element considering the property data type:

* **FilterViewNumericCategoryElement**: used for numeric types
* **FilterViewDateTimeCategoryElement**: used for DateTime properties
* **FilterViewBooleanCategoryElement**: used for boolean fields
* **FilterViewTextCategoryElement**: default category element
 
## Elements Hierarchy

![filter-view-structure 002](images/filter-view-structure002.png) 
 
# See Also

* [Getting Started]({%slug filter-view-getting-started%})
* [Structure]({%slug filter-view-structure%})
 
        
