---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | Task Board
description: Get familiar with the public API of the WinForms TaskBoard (Kanban) control.
slug: task-board-properties-methods-events
tags: task board, kanban, properties, methods, events
published: True
position: 6  
---
 
# Properties, Methods and Events for RadTaskBoards

## Properties

|Property|Description|
|----|----|
|**DefaultColumnWidth**|Gets or sets the default column width for the task board. This default value is used to set the width of all columns in the task board.|
|**DefaultCollapsedColumnWidth**|Gets or sets the default collapsed column width for the task board. This default value is used to set the width of all collapsed columns in the task board.|
|**DefaultHeaderHeight**|Gets or sets the default header height for the task board. This default value is used to set the height of all headers in the task board.|
|**DefaultColumnScrollBarThickness**|Gets or sets the default columns' scroll bar thickness for the task board. This default value is used to set the width of all columns' scroll bars in the task board.|
|**DefaultAddButtonHeight**|Gets or sets the default add button height for the task board. This default value is used to set the height of all "+ Add a card" buttons in the task board.|
|**AddButtonText**|Gets or sets the text of the AddTaskCardButton element for all columns.|
|**ScrollBarThickness**|Gets or sets the task board's scroll bar thickness.|
|**IsDragMouseCentered**|True, if while dragging the mouse position is centered on the card. False, if the mouse position does not change.|
|**SelectedCard**|Gets or sets the selected card in the task board.|
|**Columns**|Gets a collection of RadTaskBoardColumnElement objects that represents the columns holding the task cards.|
|**Users**|Gets a collection of UserInfo objects that represents the users that can be assigned to the task cards.|

## Methods

|Method|Description|
|----|----|
|**ResetDefaultColumnWidth**|Resets the DefaultColumnWidth property to the default value.|
|**ResetDefaultCollapsedColumnWidth**|Resets the DefaultCollapsedColumnWidth property to the default value.|
|**ResetDefaultHeaderHeight**|Resets the DefaultHeaderHeight property to the default value.|
|**ResetDefaultColumnScrollBarThickness**|Resets the DefaultColumnScrollBarThickness property to the default value.|
|**ResetDefaultAddButtonHeight**|Resets the DefaultAddButtonHeight property to the default value.|
|**SaveLayout**|Stores RadTaskBoard's layout state in XML format, using the serialization information provided by the XmlSerializationInfo property.|
**LoadLayout**|Loads RadTaskBoard's layout state from XML file, using the serialization information provided by the XmlSerializationInfo property.|

## RadTaskBoardElement's Events 

|Event|Description|
|----|----|
|**TaskCardSelecting**|The Event is fired, when selecting a task card.|
|**TaskCardSelected**|The Event is fired, when a task card has been selected.|
  
# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
 
        
