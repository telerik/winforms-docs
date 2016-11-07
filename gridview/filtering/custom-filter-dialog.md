---
title: Customizing composite filter dialog
page_title: Customizing composite filter dialog | RadGridView
description: This articles shows how you can access the Composite Filter Dialog instance and change its properties.
slug: winforms/gridview/filtering/composite-filter-dialog
tags: composite,filtering
published: True
position: 9
---


## Customizing composite filter dialog

When you select an item from the "Available Filter" menu, a __CompositeFilterForm__ is displayed. The __CreateCompositeFilterDialog__ event is fired before the __CompositeFilterForm__ is created. It allows you to create the default dialog and customize it or initialize your own implementation of the composite filter dialog.

![gridview-filtering-composite-filter-dialog 001](images/gridview-filtering-composite-filter-dialog001.png)
