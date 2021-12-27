---
title: Layout Strategies
page_title: Overview - WinForms TreeMap Control
description: Check our Layout Strategies documentation article for the RadTreeMap WinForms control.
slug: treemap-layout-strategies
tags: treeview
published: True
position: 4
---

# Layout Strategies

By the end of this help topic you will learn about the Layout Strategies which are responsible for data tiling in the RadTreeMap control. *Treemap* algorithms represent hierarchical data sets via recursive subdivision of the initial rectangle. The area of each rectangle in the treemap is proportional to the size of that particular node.

>note Layout Strategies are always applied to child nodes.

Currently there are two Layout Strategies to visualize the data:

### Squarified 

It creates rectangles with best aspect ratio:

![treemap-layout-strategies 001](images/treemap-layout-strategies001.png)

### Slice and Dice 

It creates rectangles with high aspect ratio and displays them sorted either horizontally or vertically:

![treemap-layout-strategies 002](images/treemap-layout-strategies002.png)

>note The default layout is Slice and Dice.

For the **Slice and Dice** algorithm you can specify **Orientation** (*Horizontal*, *Vertical* or *Smart*) and **SortDirection** (*Ascending* or *Descending*):

code


Setting the **Orientation** to *Smart* means that the algorithm will automatically choose the most appropriate orientation depending on your data and the available space.
You can instantiate a layout strategy by using the layout strategy name:

code
 
# See Also

* [Structure]({%slug winforms-treemap-structure%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

