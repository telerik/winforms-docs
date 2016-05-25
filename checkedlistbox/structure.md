---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: RadCheckedListBox is an enhanced alternative to the standard Windows Forms checked list box control. 
slug: winforms/checkedlistbox/structure
tags: checkedlistbox
published: True
position: 1
previous_url: checkedlistbox-structure
---

# Structure

>caption Fig.1 RadCheckedListBox's elements hierarchy

|ListViewType|Elements hierarchy|
|----|----|
|__ListView__|![checkedlistbox-structure 001](images/checkedlistbox-structure001.png)|
|__IconsView__|![checkedlistbox-structure 005](images/checkedlistbox-structure005.png)|
|__DetailsView__|![checkedlistbox-structure 006](images/checkedlistbox-structure006.png)|

>caption Fig.2 RadCheckedListBox's structure in ListViewType.ListView

![checkedlistbox-structure 002](images/checkedlistbox-structure002.png)

1. __SimpleListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __SimpleListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.



>caption Fig.3 RadCheckedListBox's structure in ListViewType.IconsView

![checkedlistbox-structure 003](images/checkedlistbox-structure003.png)

1. __IconListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.
2. __IconListViewContainer__: represents the view container.
3. __RadScrollBarElement__: represents the scroll bar.

>caption Fig.4 RadCheckedListBox's structure in ListViewType.DetailsView

![checkedlistbox-structure 004](images/checkedlistbox-structure004.png)

1. __DetailListViewVisualItem__: represents the visual item. <br>
	1\.1\. __ListViewItemCheckbox__: represents the check box.<br>
	1\.2\. __DetailListViewColumnContainer__: represents the column container that holds the cells. <br>
		1\.2\.1\. __DetailListViewDataCellElement__: represents the cell.<br>
2. __DetailsListViewContainer__: represents the view container.
3. __DetailListViewColumnContainer__: represents the container that holds the columns.
4. __RadScrollBarElement__: represents the scroll bar.