---
title: Adding Task Cards
page_title: Adding Task Cards - Task Board
description: Create predefined task cards in the WinForms TaskBoard (Kanban) control.
slug: task-board-adding-task-cards
tags: task board, kanban, add, task, card
published: True
position: 5  
---

# Adding Task Cards

Each column element in **RadTaskBoard** has a button at the bottom for adding new task cards to this particular column. This button can be accessed by the RadTaskBoardColumnElement.**AddTaskCardButton** property. If you want to disable it for certain columns, manage the AddTaskCardButton.**Visibility** property respectively. 

However, if the button is enabled, the default **RadTaskCardElement** that is generated is almost empty and it contains only a title:

![WinForms RadTaskBoard Adding Empty Task Cards](images/task-board-adding-task-cards001.png)

**RadTaskBoardColumnElement** offers the **TaskCardAdding** event which allows you to define default values for the new task card of a certain column element.

>note The **TaskCardAdding** event is also an appropriate place to show a custom dialog and present the end user an appropriate UI for filling in the necessary information. Just make sure that such a dialog is modal and its information is used when assigning the TaskCardAddingEventArgs.TaskCard.

#### Create a Predefined RadTaskCardElement

<snippet id='task-board-taskboardgettingstarted-predefinedcard-cs' />
<snippet id='task-board-taskboardgettingstarted-predefinedcard-vb' />



![WinForms RadTaskBoard Adding Task Cards](images/task-board-adding-task-cards002.png)
  
# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
* [Task Card Edit Dialog]({%slug task-board-edit-dialog%})
 
        
