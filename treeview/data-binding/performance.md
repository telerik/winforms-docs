---
title: Performance
page_title: Performance | RadTreeView
description: Performance
slug: winforms/treeview/data-binding/performance
tags: performance
published: True
position: 8
previous_url: treeview-data-binding-perfomance
---

# Performance

To improve performance in data loading and other long running operations use the RadTreeView __BeginUpdate__ and __EndUpdate__ methods. Place __BeginUpdate__ and __EndUpdate__ just before and after blocks of code that add, remove or reorder large numbers of nodes. 

