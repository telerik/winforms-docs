---
title: Overview
page_title: Paging | RadGridView
description: This article shows how you can use the built-in Paging functionality.
slug: winforms/gridview/paging/overview
tags: overview
published: True
position: 0
previous_url: gridview-paging-overview
---

# Paging Overview

The data layer of __RadGridView__ now supports pagination of data natively. You can still bind __RadGridView__ to the same [data providers]({%slug winforms/gridview/populating-with-data/bindable-types%}) as before with the addition of the paging option. There is a number of features, which will allow you to easily configure and manage the paging of the data.

![gridview-paging-overview 001](images/gridview-paging-overview001.png)

To access the public API for paging you will use the __MasterTemplate__ property. Here are the more important properties and methods:

* __EnablePaging:__ Gets or sets a value indicating whether paging is enabled.

* __PageSize:__ Gets or sets the number of items shown per page.

* __TotalPages:__ Gets the total number of pages.

* __PageIndex:__ Gets the zero-based index of the current page.

* __CanChangePage:__ Gets a value indicating whether page change is possible.

* __IsPageChanging:__ Gets a value indicating whether a page change operation is underway.

* __MoveToFirstPage:__ Sets RadGridView to its first page.

* __MoveToPreviousPage:__ Sets RadGridView to the previous page.

* __MoveToPage(int pageIndex):__ Sets RadGridView to a specific page.

* __MoveToNextPage:__ Sets RadGridView to the next page.

* __MoveToLastPage:__ Sets RadGridView to its last page.

* __PagingBeforeGrouping:__ Gets or sets a value indicating whether paging is performed before grouping or vice versa.
            
# See Also
* [Paging panel]({%slug winforms/gridview/paging/paging-panel%})

