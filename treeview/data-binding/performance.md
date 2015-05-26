---
title: Performance
page_title: Performance | UI for WinForms Documentation
description: Performance
slug: winforms/treeview/data-binding/performance
tags: performance
published: True
position: 8
---

# Performance



## 

To improve performance in data loading and other long running operations use the RadTreeView __BeginUpdate()__ and __EndUpdate()__ methods. Place __BeginUpdate()__ and __EndUpdate()__just before and after blocks of code that add, remove or reorder large numbers of nodes. 

See the [Load On Demand]({%slug winforms/treeview/data-binding/load-on-demand%}) topic for an example.
