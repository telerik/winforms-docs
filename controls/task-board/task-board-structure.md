---
title: Structure
page_title: Structure | Task Board
description: Get familiar with the internal elements structure of the WinForms TaskBoard (Kanban) control.
slug: task-board-structure
tags: task board, kanban, structure
published: True
position: 1  
---

# Structure

This article describes the inner structure and organization of the elements which build **RadTaskBoard**.

![task-board-structure 001](images/task-board-structure001.png)

**RadTaskBoard** is composed of column elements. Each **RadTaskBoardColumnElement** contains a header, task card elements and a button at the bottom for adding more task cards. Every **RadTaskCardElement** contains 9 containers: 3 x 3. This allows adding different elements top-left, top-center, top-right, middle-left, middle-center, middle-right, bottom-left, bottom-center, bottom-right. 

* Column: Essential building block, represented by the base class RadTaskBoardColumnElement. The columns inside the control can be collapsed.
 
* Column Header: Represents the header of the columns inside the RadTaskBoard control.

* Task Title: Represents the title of the task item.

* User: Represents the circle container which can display an icon image of the RadTaskBoard card.

* Tags: Displays a collection of highlight objects applied to a given item.

* Accent/Category Indicator: Represents the color container on the left side for a RadTaskBoard card.

* Task Description: Represents the description of the item.

* Expand/Collapse Column Button: Collapses and expands the column.

Each **RadTaskCardElement** offers accent color, title, description, user info, tags, sub tasks. The sub tasks are displayed in the following format: "Number of Completed Tasks/ Total number of tasks". 

![task-board-structure 003](images/task-board-structure003.png)

## Elements Hierarchy
 
![task-board-structure 002](images/task-board-structure002.png)
 
# See Also

* [Getting Started]({%slug task-board-getting-started%})
* [Design Time]({%slug task-board-design-time%})
 
        
