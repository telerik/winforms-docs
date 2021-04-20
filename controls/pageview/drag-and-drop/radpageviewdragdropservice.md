---
title: RadPageViewDragDropService
page_title: RadPageViewDragDropService - WinForms PageView Control
description: WinForms PageView supports RadPageViewDragDropService which allows you to reorder the page items/tabs.
slug: winforms/pageview/radpageviewdragdropservice
tags: pageview
published: True
position: 0 
---

# RadPageViewDragDropService

**RadPageView** allows you to reorder the page items/tabs if the RadPageView.ViewElement.**ItemDragMode** property is set to *Preview* or *Immediate*.

>caption Figure 1: PageViewItemDragMode.Immediate

![radpageviewdragdropservice 001](images/radpageviewdragdropservice001.gif)

>caption Figure 2: PageViewItemDragMode.Preview

![radpageviewdragdropservice 002](images/radpageviewdragdropservice002.gif)

This functionality is achieved by the **RadPageViewDragDropService** which can be accessed by the RadPageView.ViewElement.**ItemDragService** property. Similar to [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **RadPageViewDragDropService** exposes public events which allows to handle the drag and drop operation and customize it according to your requirements, e.g. control which page tabs to be dragged or on what target to drop them.  

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	


