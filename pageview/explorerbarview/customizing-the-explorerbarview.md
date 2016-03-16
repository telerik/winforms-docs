---
title: Customizing the ExplorerBarView
page_title: Customizing the ExplorerBarView | UI for WinForms Documentation
description: Customizing the ExplorerBarView
slug: winforms/pageview/explorerbarview/customizing-the-explorerbarview
tags: customizing,the,explorerbarview
published: True
position: 1
previous_url: pageview-explorerbarview-customizing-the-explorerbarview
---

# Customizing the ExplorerBarView



## Setting Content Size Mode

The RadPageView’s Explorer Bar mode supports three different content size modes for the expanded pages:

* FixedLength

* AutoSizeToBestFit

* EqualLength

The __FixedLength__ size mode implies that all expanded pages have a length, defined by the PageLength property. By default, the value of this property is 300 pixels. You can set this property in the Visual Studio Designer by selecting the corresponding RadPageViewPage instance and setting the PageLength property in the Property Grid. If there is not enough space for the items and the expanded pages, a scrollbar is shown in the control.

The __AutoSizeToBestFit__ property implies that the expanded page is sized according to the content. In other words, the smallest bounding rectangle of all controls in the page is calculated and used to define the bounds of the page.

The __EqualLength__ property implies that the size of all expanded pages is equal. The size is calculated based on the remaining space after the layout has finished ordering the items. The available space is equally distributed to all expanded pages.

To define how expanded pages are sized, you should set the __ContentSizeMode__ property of the RadPageViewExplorerBarElement class. When in ExplorerBar mode, the ViewElement property of the RadPageView control returns an instance of this class, so you should simply cast it to the appropriate type and set the property as the code snippet below demonstrates:

{{source=..\SamplesCS\PageView\ExplorerBarView.cs region=contentSizeMode}} 
{{source=..\SamplesVB\PageView\ExplorerBarView.vb region=contentSizeMode}} 

````C#
RadPageViewExplorerBarElement explorerBarElement = (this.radPageView1.ViewElement as RadPageViewExplorerBarElement);
explorerBarElement.ContentSizeMode = ExplorerBarContentSizeMode.EqualLength;

````
````VB.NET
Dim explorerBarElement As RadPageViewExplorerBarElement = (TryCast(Me.radPageView1.ViewElement, RadPageViewExplorerBarElement))
explorerBarElement.ContentSizeMode = ExplorerBarContentSizeMode.EqualLength

````

{{endregion}} 

If you choose to use the __FixedLength__ size mode and consequently wish to define length to a given page, you can do this the following way: 

{{source=..\SamplesCS\PageView\ExplorerBarView.cs region=pageLength}} 
{{source=..\SamplesVB\PageView\ExplorerBarView.vb region=pageLength}} 

````C#
this.radPageViewPage1.PageLength = 430;

````
````VB.NET
Me.radPageViewPage1.PageLength = 430

````

{{endregion}}

## Setting Stack Position

The RadPageView’s ExplorerBar mode supports two stack positions:

* Top

* Left

## Expanding/Collapsing Pages

To expand or collapse a page, you should simply click on its item. You can also do this programmatically by setting the IsContentVisible property defined in the RadPageViewPage class:

{{source=..\SamplesCS\PageView\ExplorerBarView.cs region=isContentVisible}} 
{{source=..\SamplesVB\PageView\ExplorerBarView.vb region=isContentVisible}} 

````C#
this.radPageViewPage1.IsContentVisible = true;

````
````VB.NET
Me.radPageViewPage1.IsContentVisible = True

````

{{endregion}} 

If you wish to have a page initially expanded, you can set the IsContentVisible property in the Visual Studio’s Designer as well.

## Using the Explorer Bar Events

RadPageView exposes four specific events fired when the state of a page is about to change, and when it is changed. It is important to note that these events are only relevant to the ExplorerBar mode:

* PageExpanding

* PageExpanded

* PageCollapsing

* PageCollapsed

The *PageExpanding* event is fired each time a page is about to be expanded. It is possible to cancel the expansion of the page by modifying the Cancel property of the event arguments in the event handler of this event.

The *PageExpanded* event is fired each time a page has been expanded.

The *PageCollapsing* event is fired each time a page is about to be collapsed. It is possible to cancel the expansion of the page by modifying the Cancel property of the event arguments in the event handler of the event.

The *PageCollapsed* event is fired each time a page has been collapsed.

## Scrolling

The ExplorerBar mode of the RadPageView control supports scrolling when the expanded content exceeds the bounds of the control. In this case, a scrollbar is automatically shown thus allowing the user to scroll and view each expanded page.

The ExplorerBar view also automatically scrolls to an item when it is selected. The ScrollToItem method is internally used. This method is also part of the RadPageViewExplorerBarElement API and can be accessed in case it is needed to scroll to a given item programmatically. The following code snippet demonstrates the usage of the ScrollToItem method:

{{source=..\SamplesCS\PageView\ExplorerBarView.cs region=scrolling}} 
{{source=..\SamplesVB\PageView\ExplorerBarView.vb region=scrolling}} 

````C#
RadPageViewExplorerBarItem item = this.radPageViewPage1.Item as RadPageViewExplorerBarItem;
explorerBarElement.ScrollToItem(item);

````
````VB.NET
Dim item As RadPageViewExplorerBarItem = TryCast(Me.radPageViewPage1.Item, RadPageViewExplorerBarItem)
explorerBarElement.ScrollToItem(item)

````

{{endregion}} 

## Using the Keyboard

The RadPageView’s ExplorerBar mode supports keyboard navigation with the arrow keys on the keyboard. If the stack position is adjusted to be Top, the Up/Down arrows select the previous/next item in the stack, whereas the Left/Right collapse/expand the currently selected item. On the contrary, if the stack position is chosen to be Left, the Left/Right keys on the keyboard select the previous/next item, whereas the Up/Down keys expand/collapse the currently selected item.
