---
title: Tracking changes in RadGridView
page_title: Tracking changes in RadGridView | RadGridView
description: This article show which events you should use to detect any  changes in RadGridView.
slug: winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview
tags: tracking,changes,in,radgridview
published: True
position: 3
previous_url: gridview-insert-update-delete-records-tracking-changes-in-radgridview
---

# Tracking changes in RadGridView

You can track row changes in __RadGridView__ by using the following four events: __RowsChanging__, __RowsChanged__, or the same events can be accessed from the __Rows__ collection - __CollectionChanging__, __CollectionChanged__.

You can track cell changes in __RadGridView__ by using __CellValueChanged__ event.

You can track column changes with __CollectionChanging__, __CollectionChanged__ events which can be accessed from the __Columns__ collection.

>caution RadGridView supports another two editor related events __ValueChanging__ and __ValueChanged__. Please refer to RadGridView [editors]({%slug winforms/gridview/editors/events%}) section for further details.
>


## CellValueChanged

The event is raised after the cell value is changed and the focus is moved away from the cell.   

## RowsChanging

The event fires before the rows collection is changed. __GridViewCollectionChangingEventArgs__ provides further details about the pending change or can be used to cancel the event if you change the __Cancel__ property value to true. __GridViewCollectionChangingEventArgs__ properties are summarized in the following table:

|||
| ------- | ------- | 
|e.Action|Indicates the reason for the change. __NotifyCollectionChangedAction__ enumeration specifies the action.|
|e.Cancel|Boolean property indicating whether the event should be canceled. The default value is *false* and the event is not canceled.|
|e.GridViewTemplate|Specifies the grid view template.|
|e.NewItems|Collection of the new items.|
|e.NewStartingIndex|Indicates the new starting index.|
|e.OldItems|Collection of the old items.|
|e.OldStartingIndex|Indicates the old starting index.|

## RowsChanged

The event fires after one or more grid rows are changed. __GridViewCollectionChangedEventArgs__ shares most properties of __GridViewCollectionChangingEventArgs__, besides the __Cancel__ one.

## CollectionChanging

__CollectionChanging__ event is a generic event. It can be used for __Collumns__ and __Rows__. The events are accessible from the __Collumns__ and __Rows__ collection respectively. 

__CollectionChanging__ is equivalent to __RowsChanging__ event.

## CollectionChanged

__CollectionChanged__ event is a generic event. It can be used for both __Collumns__ and __Rows__.The events are accessible from the __Collumns__ and __Rows__ collection respectively. 

__CollectionChanged__ is equivalent to __RowsChanged__ event.
# See Also
* [Data Editing Event Sequence]({%slug winforms/gridview/insert/update/delete-records/data-editing-event-sequence%})

* [Data Editing Support]({%slug winforms/gridview/insert/update/delete-records/data-editing-support%})

* [Insert/Update/Delete Using Controls API]({%slug winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api%})

* [Validation]({%slug winforms/gridview/insert/update/delete-records/validation%})

