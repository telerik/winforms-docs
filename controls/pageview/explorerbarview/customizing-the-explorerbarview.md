---
title: Customizing the ExplorerBarView
page_title: Customizing the ExplorerBarView | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/explorerbarview/customizing-the-explorerbarview
tags: customizing,the,explorerbarview
published: True
position: 1
previous_url: pageview-explorerbarview-customizing-the-explorerbarview
---

# Customizing the ExplorerBarView

## Setting Content Size Mode

The **RadPageView**’s Explorer Bar mode supports three different content size modes for the expanded pages:

* *FixedLength*: implies that all expanded pages have a length, defined by the **PageLength** property. By default, the value of this property is *300* pixels. You can set this property in the Visual Studio Designer by selecting the corresponding **RadPageViewPage** instance and setting the **PageLength** property in the Property Grid. If there is not enough space for the items and the expanded pages, a scrollbar is shown in the control.

* *AutoSizeToBestFit*: implies that the expanded page is sized according to the content. In other words, the smallest bounding rectangle of all controls in the page is calculated and used to define the bounds of the page.

* *EqualLength*: implies that the size of all expanded pages is equal. The size is calculated based on the remaining space after the layout has finished ordering the items. The available space is equally distributed to all expanded pages.

To define how expanded pages are sized, you should set the __ContentSizeMode__ property of the **RadPageViewExplorerBarElement** class. When in PageViewMode.*ExplorerBar*, the **ViewElement** property of the **RadPageView** control returns an instance of this class, so you should simply cast it to the appropriate type and set the property as the code snippet below demonstrates:

#### ExplorerBarContentSizeMode.EqualLength

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

If you choose to use the *FixedLength* size mode and consequently wish to define length to a given page, you can do this the following way: 

#### PageLength

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

The **RadPageView**’s PageViewMode.*ExplorerBar* supports two stack positions:

* *Top*

* *Left*

## Expanding/Collapsing Pages

To expand or collapse a page, you should simply click on its item. You can also do this programmatically by setting the **IsContentVisible** property defined in the **RadPageViewPage** class:

#### Setting the IsContentVisible property

{{source=..\SamplesCS\PageView\ExplorerBarView.cs region=isContentVisible}} 
{{source=..\SamplesVB\PageView\ExplorerBarView.vb region=isContentVisible}} 

````C#
this.radPageViewPage1.IsContentVisible = true;

````
````VB.NET
Me.radPageViewPage1.IsContentVisible = True

````

{{endregion}} 

If you wish to have a page initially expanded, you can set the **IsContentVisible** property in the Visual Studio’s Designer as well.

## Using the Explorer Bar Events

**RadPageView** exposes four specific events fired when the state of a page is about to change, and when it is changed. It is important to note that these events are only relevant to the ExplorerBar mode:

* **PageExpanding**: It is fired each time a page is about to be expanded. It is possible to cancel the expansion of the page by modifying the Cancel property of the event arguments in the event handler of this event.

* **PageExpanded**: It is fired each time a page has been expanded.

* **PageCollapsing**: It is fired each time a page is about to be collapsed. It is possible to cancel the expansion of the page by modifying the Cancel property of the event arguments in the event handler of the event.

* **PageCollapsed**: It is fired each time a page has been collapsed. 

## Scrolling

The PageViewMode.*ExplorerBar* supports scrolling when the expanded content exceeds the bounds of the control. In this case, a scrollbar is automatically shown thus allowing the user to scroll and view each expanded page.

The PageViewMode.*ExplorerBar* also automatically scrolls to an item when it is selected. The **ScrollToItem** method is internally used. This method is also part of the **RadPageViewExplorerBarElement**'s API and can be accessed in case it is needed to scroll to a given item programmatically. The following code snippet demonstrates the usage of the **ScrollToItem** method:

#### ScrollToItem

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

# See Also

* [ExplorerBar Overview]({%slug winforms/pageview/explorerbarview%})	
