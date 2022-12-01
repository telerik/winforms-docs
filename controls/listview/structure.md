---
title: Structure
page_title: Structure - WinForms ListView Control
description: Get familiar with the internal elements structure of WinForms ListView.
slug: winforms/listview/structure
tags: listview
published: True
position: 1 
---

# Structure 

This article will show the internal elements structure of __RadListView__ considering the __ListViewType__:

# Structure of ListViewType.ListView

>caption Figure 1: ListViewType.ListView's elements hierarchy

![WinForms RadListView ListViewTypeListView's elements hierarchy](images/listview-structure001.png)

>caption Figure 2: RadListView's structure in ListViewType.ListView

![WinForms RadListView RadListView's structure in ListViewTypeListView](images/listview-structure002.png)

1. __SimpleListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __SimpleListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.

# Structure of ListViewType.IconsView

>caption Figure 3: ListViewType.IconsView's elements hierarchy

![WinForms RadListView ListViewTypeIconsView's elements hierarchy](images/listview-structure005.png)

>caption Figure 4: RadListView's structure in ListViewType.IconsView

![WinForms RadListView RadListView's structure in ListViewTypeIconsView](images/listview-structure003.png)

1. __IconListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __IconListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.

# Structure of ListViewType.DetailsView

>caption Figure 5: RadListView's structure in ListViewType.DetailsView

![WinForms RadListView RadListView's structure in ListViewTypeDetailsView](images/listview-structure006.png)

>caption Figure 6: RadListView's structure in ListViewType.DetailsView

![WinForms RadListView RadListView's structure in ListViewTypeDetailsView](images/listview-structure004.png)

1. __DetailListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.<br>
	1\.2\. __DetailListViewColumnContainer__: represents the column container that holds the cells. <br>
		1\.2\.1\. __DetailListViewDataCellElement__: represents the cell.<br>
2. __DetailsListViewContainer__: represents the view container.
3. __DetailListViewColumnContainer__: represents the container that holds the columns.
4. __RadScrollBarElement__: represents the scroll bar.


# See Also

* [Getting Started]({%slug winforms/listview/getting-started%})
* [Desing Time]({%slug winforms/listview/working-with-design-time/design-time%})
 
