---
title: Grouping
page_title: Grouping - UI for WinForms Documentation
description: Grouping
slug: winforms/cardview/features/grouping
tags: grouping
published: True
position: 1
---

# Grouping

__RadCardView__ allows grouping of its __CardViewItems__ and it can be enabled by using the __EnableGrouping__ property of the control. An example with custom grouping is demonstrated in the __Populating Data Programmatically__ section of the  [Unbound Mode]({%slug winforms/cardview/populating-with-data/unbound-mode%}) article.

#### Enable Grouping

<snippet id='cardview-features-grouping-enablegrouping-cs'/>
<snippet id='cardview-features-grouping-enablegrouping-vb'/>



Once the grouping is enabled, we have to create a new __GroupDescriptor__ and assign its __PropertyName__ and __ListSortDirection__. Let's group the items by `Address` in `Descending` direction. 

#### Group by Column

<snippet id='cardview-features-grouping-groupdescriptor-cs'/>
<snippet id='cardview-features-grouping-groupdescriptor-vb'/>


