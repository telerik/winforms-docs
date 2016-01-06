---
title: Views
page_title: Views | UI for WinForms Documentation
description: Views
slug: winforms/listview/views
tags: views
published: True
position: 2
---

# Views



RadListView supports three __ViewTypes__ – *ListView*, *IconsView* and *DetailsView*. Those are the basic views that every Windows user is familiar with since Windows Explorer offers them all. With RadListView you can extend the view types functionality and customize its appearance in order to fit your needs.
     

## ListView

The __ListView__ view has much the same look as RadListControl. It uses the engine of RadListView and takes benefits like checkboxes, editors and images from it. The __ListView__ view consists of vertically stacked list items:
        

![listview-views 001](images/listview-views001.png)

## IconsView

The __IconView__ displays the list items in icons, a manner that you surely are familiar with from the Windows Explorer. Its __Orientation__ property determines how the icons will be displayed:
        

![listview-views 002](images/listview-views002.png)

## DetailView

The __DetailView__ provides a grid-like interface for displaying items with more than one data fields. Interesting features in this view are the options to resize columns (__AllowColumnResize__), to reorder columns  (__AllowColumnReorder__), set the columns sizes and to determine which columns will be visible and which aren’t.

![listview-views 003](images/listview-views003.png)

## CardView

The __CardView__ arranges its data objects in separate card elements. The __CardListViewElement__ hosts a [RadLayoutContol]({%slug winforms/layoutcontrol%}) allowing modifications of the layout at design-time as well as at run-time.

![listview-views 004](images/listview-views004.png)

The __CardListViewElement__ extends the __IconListViewElement__ class and adds to it a specific functionality related to the *card* layout. Below are some of the more important properties and methods specific to the __CardView__. 

* CardListViewElement.CardTemplate: This property exposes the __RadLayoutControl__.
* CardListViewElement.SaveCardTemplateLayout: This method saves the layout.
* CardListViewElement.LoadCardTemplateLayout: Loads a previously saved layout. 

The layout changes are performed thanks to the __Customize Dialog__.
>caption Fig.1 Customize Dialog

![listview-views 005](images/listview-views005.gif)