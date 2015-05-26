---
title: Tracking changes in RadGridView
page_title: Tracking changes in RadGridView | UI for WinForms Documentation
description: Tracking changes in RadGridView
slug: winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview
tags: tracking,changes,in,radgridview
published: True
position: 3
---

# Tracking changes in RadGridView



You can track row changes in __RadGridView__by using the following four events: __RowsChanging__, __RowsChanged__, or the same events can be accessed from the __Rows__collection - __CollectionChanging__, __CollectionChanged__.

You can track cell changes in __RadGridView__by using __CellValueChanged__event.

You can track column changes with __CollectionChanging, CollectionChanged__events____which can be accessed from the __Columns__collection.

## 

>caution RadGridView supports another two editor related events ValueChanging and ValueChanged. Please refer to RadGridView[editors]({%slug winforms/gridview/editors/events%})section for further details.
>


## CellValueChanged

The event is raised after the cell value is changed.   

## RowsChanging

The event fires before the rows collection is changed. __GridViewCollectionChangingEventArgs__provides further details about the pending change or can be used to cancel the event if you change the __Cancel__property value to true. __GridViewCollectionChangingEventArgs__properties are summarized in the following table:





|e.Action|Indicates the reason for the change. __NotifyCollectionChangedAction__ enumeration specifies the action.|
|e.Cancel|Boolean property indicating whether the event should be canceled. The default value is false and the event is not canceled.|
|e.GridViewTemplate|Specifies the grid view template.|
|e.NewItems|Collection of the new items.|
|e.NewStartingIndex|Indicates the new starting index.|
|e.OldItems|Collection of the old items.|
|e.OldStartingIndex|Indicates the old starting index.|

## RowsChanged

The event fires after one or more grid rows are changed. __GridViewCollectionChangedEventArgs__shares most properties of __GridViewCollectionChangingEventArgs__, besides the __Cancel__one.

## CollectionChanging

__CollectionChanging__event is a generic event. It can be used for __Collumns__and __Rows__. The events are accessible from the __Collumns__and __Rows__collection respectively of __RadGridView__. 

__CollectionChanging__ is equivalent to __RowsChanging__event.

## CollectionChanged

__CollectionChanged__event is a generic event. It can be used for both Collumns and Rows__.__The events are accessible from the __Collumns__and __Rows__collection respectively of RadGridView. 

__CollectionChanged__is equivalent to __RowsChanged__event.
