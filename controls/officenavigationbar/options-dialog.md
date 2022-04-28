---
title: Options Dialog
page_title: Options Dialog | RadOfficeNavigationBar
description: OfficeNavigationBarOptionsDialog allows you to adjust the settings offered by the WinForms OfficeNavigationBar.  
slug: officenavigationbar-options-dialog
tags: officenavigationbar, options, dialog
published: True
position: 7
---

# Options Dialog

The **OfficeNavigationBarOptionsDialog** is shown when the user clicks the **NavigationOptionsMenuItem**.

>caption OfficeNavigationBarOptionsDialog

![officenavigationbar-options-dialog 001](images/officenavigationbar-options-dialog001.png)

The **ShowNavigationOptionsMenuItem** property indicates whether to show the navigation options menu item when context menu is opened.

>caption NavigationOptionsMenuItem

![officenavigationbar-options-dialog 002](images/officenavigationbar-options-dialog002.png)

#### Hide NavigationOptionsMenuItem

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=ShowNavigationOptionsMenuItem}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=ShowNavigationOptionsMenuItem}} 

````C#

this.radOfficeNavigationBar1.ShowNavigationOptionsMenuItem = false;         

````
````VB.NET

Me.radOfficeNavigationBar1.ShowNavigationOptionsMenuItem = False       

````

{{endregion}} 
 
The dialog offers the following settings:

* **Maximum number of visible items**: controls the **VisibleItemsCount** property which indicates how many items to be visible on the strip. If this property is not set, it returns the count of items.
* **Items display style**: controls the **ItemsDisplayStyle** property. The available options are:
	* **None**: specifies that neither image nor text is rendered.
	* **Text**: specifies that only text is rendered.
	* **Image**: specifies that only an image is rendered.
	* **ImageAndText**: specifies that both an image and text are to be rendered.
* **Use Compact Font**: controls the **UseCompactFont** property which indicates whether to use compact or large font for the items.
* **Display in this order**: controls the items order. The `Move Up` and `Move Down` buttons reorder the items in the respective direction.

# See Also

* [Structure]({%slug officenavigationbar-structure%})	
* [Design Time]({%slug officenavigationbar-design-time%})	
* [Getting Started]({%slug officenavigationbar-getting-started%})	
* [Context Menu]({%slug officenavigationbar-context-menu%})



