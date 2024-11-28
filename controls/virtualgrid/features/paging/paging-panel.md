---
title: Paging Panel
page_title: Paging Panel - RadVirtualGrid
description: This article describes the properties used for controlling the layout of the paging panel.
slug: winforms/virtualgrid/paging/paging-panel
tags: paging,panel
published: True
position: 1
---

# Paging panel


When paging is enabled in __RadVirtualGrid__, a panel is added to the bottom of the grid view element. It allows users to navigate back and forth over the pages or jump directly to a desired page.

![WinForms RadVirtualGrid Paging Panel](images/gridview-paging-panel001.png)

There are a number of properties, which allow you to customize the paging panel to your specific needs. You can access these properties through the RadVirtualGrid.TableElement.[PagingPanelElement](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.virtualgridpagingpanelelement#properties). Here is what options you have:

* __NumericButtonsCount:__ Controls how many buttons for navigation to concrete pages there are on the panel.
 
    ![WinForms RadVirtualGrid NumericButtonsCount](images/gridview-paging-panel002.png)

* __ShowButtonsStripElement:__ Controls whether the buttons panel is visible.

    ![WinForms RadVirtualGrid ShowButtonsStripElement](images/gridview-paging-panel003.png)

* __ShowFirstButton:__ Controls whether the button navigating to the first page is visible.

    ![WinForms RadVirtualGrid ShowFirstButton](images/gridview-paging-panel006.png)

* __ShowPreviousButton:__ Controls whether the button navigating to the previous page is visible.

    ![WinForms RadVirtualGrid ShowPreviousButton](images/gridview-paging-panel009.png)

* __ShowFastBackButton:__ Controls whether the button with three dots is visible. This button moves the grid back X number of pages, where X equals the number of numeric buttons.
 
    ![WinForms RadVirtualGrid ShowFastBackButton](images/gridview-paging-panel004.png)

* __ShowFastForwardButton:__ Controls whether the button with three dots is visible. This button moves the grid forth X number of pages, where X equals the number of numeric buttons.

    ![WinForms RadVirtualGrid ShowFastForwardButton](images/gridview-paging-panel005.png)

* __ShowNextButton:__ Controls whether the button navigating to the next page is visible. 

    ![WinForms RadVirtualGrid ShowNextButton](images/gridview-paging-panel008.png)

* __ShowLastButton__ Controls whether the button navigating to the last page is visible.

    ![WinForms RadVirtualGrid ShowLastButton](images/gridview-paging-panel007.png)

* __ShowNumericalButtons:__ Controls whether the buttons navigating to concrete pages are visible. 
  
    ![WinForms RadVirtualGrid ShowNumericalButtons](images/gridview-paging-panel002.png)

* __ShowTextBoxStripElement:__ Controls whether the panel allowing users to jump to a concrete page is visible.

    ![WinForms RadVirtualGrid ShowTextBoxStripElement](images/gridview-paging-panel010.png)

# See Also
* [Overview]({%slug winforms/virtualgrid/paging/paging-overview%})

