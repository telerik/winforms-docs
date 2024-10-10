---
title: Paging panel
page_title: Paging panel - RadGridView
description: This article shows how you can access the Paging panel and set the properties that control the buttons configuration.
slug: winforms/gridview/paging/paging-panel
tags: paging,panel
published: True
position: 1
previous_url: gridview-paging-panel
---

# Paging Panel

When paging is enabled in __RadGridView__, a panel is added to the bottom of the grid view element. It allows users to navigate back and forth over the pages or jump directly to a desired page.

>note Paging functionality in RadGridView was introduced in **R1 2014 (version 2014.1.226)**. To enable it, the **EnablePaging** property of the control needs to be set to **true**.

![WinForms RadGridView Paging Panel](images/gridview-paging-panel001.png)

There are a number of properties, which allow you to customize the paging panel to your specific needs. You can access these properties through the __RadGridView.GridViewElement.PagingPanelElement__. Here is what options you have:

* __NumericButtonsCount:__ Controls how many buttons for navigation to concrete pages there are on the panel.

    ![WinForms RadGridView NumericButtonsCount](images/gridview-paging-panel002.png)

* __ShowButtonsStripElement:__ Controls whether the buttons panel is visible.

    ![WinForms RadGridView ShowButtonsStripElement](images/gridview-paging-panel003.png)

* __ShowFirstButton:__ Controls whether the button navigating to the first page is visible.

    ![WinForms RadGridView ShowFirstButton](images/gridview-paging-panel006.png)

* __ShowPreviousButton:__ Controls whether the button navigating to the previous page is visible.

    ![WinForms RadGridView ShowPreviousButton](images/gridview-paging-panel009.png)

* __ShowFastBackButton:__ Controls whether the button with three dots is visible. This button moves the grid back X number of pages, where X equals the number of numeric buttons.

    ![WinForms RadGridView ShowFastBackButton](images/gridview-paging-panel004.png)

* __ShowFastForwardButton:__ Controls whether the button with three dots is visible. This button moves the grid forth X number of pages, where X equals the number of numeric buttons.

    ![WinForms RadGridView ShowFastForwardButton](images/gridview-paging-panel005.png)

* __ShowNextButton:__  Controls whether the button navigating to the next page is visible.

    ![WinForms RadGridView ShowNextButton](images/gridview-paging-panel008.png)

* __ShowLastButton:__ Controls whether the button navigating to the last page is visible.
 
    ![WinForms RadGridView ShowLastButton](images/gridview-paging-panel007.png)

* __ShowNumericalButtons:__ Controls whether the buttons navigating to concrete pages are visible.

    ![WinFroms RadGridView ShowNumericalButtons](images/gridview-paging-panel002.png)

* __ShowTextBoxStripElement:__ Controls whether the panel allowing users to jump to a concrete page is visible.

    ![WinForms RadGridView ShowTextBoxStripElement](images/gridview-paging-panel010.png)


# See Also
* [Paging]({%slug winforms/gridview/paging/overview%})

