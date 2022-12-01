---
title: Structure
page_title: Structure - UI for WinForms Documentation
description: RadCheckedListBox is an enhanced alternative to the standard Windows Forms checked list box control. 
slug: winforms/checkedlistbox/structure
tags: checkedlistbox
published: True
position: 1
previous_url: checkedlistbox-structure
---

This article will show the internal elements structure of __RadCheckedListBox__ considering the __ListViewType__:

# Structure of ListViewType.ListView

>caption Figure 1: ListViewType.ListView's elements hierarchy

![WinForms RadCheckedListBox ListViewTypeListView's elements hierarchy](images/checkedlistbox-structure001.png)

>caption Figure 2: RadCheckedListBox's structure in ListViewType.ListView

![WinForms RadCheckedListBox RadCheckedListBox's structure in ListViewTypeListView](images/checkedlistbox-structure002.png)

1. __SimpleListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __SimpleListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.

# Structure of ListViewType.IconsView

>caption Figure 3: ListViewType.IconsView's elements hierarchy

![WinForms RadCheckedListBox ListViewTypeIconsView's elements hierarchy](images/checkedlistbox-structure005.png)

>caption Figure 4: RadCheckedListBox's structure in ListViewType.IconsView

![WinForms RadCheckedListBox RadCheckedListBox's structure in ListViewTypeIconsView](images/checkedlistbox-structure003.png)

1. __IconListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __IconListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.

# Structure of ListViewType.DetailsView

>caption Figure 5: RadCheckedListBox's structure in ListViewType.DetailsView

![WinForms RadCheckedListBox RadCheckedListBox's structure in ListViewTypeDetailsView](images/checkedlistbox-structure006.png)

>caption Figure 6: RadCheckedListBox's structure in ListViewType.DetailsView

![WinForms RadCheckedListBox RadCheckedListBox's structure in ListViewTypeDetailsView](images/checkedlistbox-structure004.png)

1. __DetailListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.<br>
	1\.2\. __DetailListViewColumnContainer__: represents the column container that holds the cells. <br>
		1\.2\.1\. __DetailListViewDataCellElement__: represents the cell.<br>
2. __DetailsListViewContainer__: represents the view container.
3. __DetailListViewColumnContainer__: represents the container that holds the columns.
4. __RadScrollBarElement__: represents the scroll bar.
