---
title: Structure
page_title: Structure - RadOfficeNavigationBar
description: Get familiar with the internal elements structure of the WinForms OfficeNavigationBar.  
slug: officenavigationbar-structure
tags: officenavigationbar, structure, elements, internal
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build **RadOfficeNavigationBar**.

![WinForms RadOfficeNavigationBar officenavigationbar-structure 001](images/officenavigationbar-structure001.png)

* **RadOfficeNavigationBarElement** - the main element in **RadOfficeNavigationBar**.
	* **OfficeNavigationBarItemContainer** - holds the items and their content area. 
		* **OfficeNavigationBarItemLayout** - represents the StripViewItemContainer that holds all the items.
			* **RadOfficeNavigationBarItem** - represents a separate office item.
			* **RadOfficeNavigationBarOverflowItem** - represents the options/ overflow button ("**...**") that allows the user navigate through the hidden items in the navigation bar. When you click the item, a RadContextMenuDropDown is shown.

		* **RadPageViewContentAreaElement** - represents the content area that is relevant to the currently selected office item.

# Elements Hierarchy

![WinForms RadOfficeNavigationBar officenavigationbar-structure 002](images/officenavigationbar-structure002.png)

# See Also

* [View Modes]({%slug officenavigationbar-view-modes%})	
* [Design Time]({%slug officenavigationbar-design-time%})	
* [Getting Started]({%slug officenavigationbar-getting-started%})	



