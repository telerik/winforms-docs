---
title: Item types
page_title: Item types | UI for WinForms Documentation
description: Item types
slug: winforms/ganttview-/structure/item-types
tags: item,types
published: True
position: 0
---

# Item types



There are total of three item types: summary item, task item and milestone item.![ganttview-structure-item-types 001](images/ganttview-structure-item-types001.png)

## Summary item

Summary items are defined as items that have sub tasks. Usually they start at the same 
          point in time as the earliest starting child task. Respectively the summary task ends where the latest ending child task ends.
        ![ganttview-structure-item-types 002](images/ganttview-structure-item-types002.png)

## Milestone item

Milestone items are defined as items with identical start and end time. They are used as an indication for major events in the 
          timeline e.g. finishing of a module in a project or getting to a certain level of completion or phase.
        ![ganttview-structure-item-types 003](images/ganttview-structure-item-types003.png)

## Task item

Common tasks are concrete tasks with defined start and end time.![ganttview-structure-item-types 004](images/ganttview-structure-item-types004.png)

## 

The following table demonstrates the similarities and differences between the item types:
        


| Item \ Function | Movable | Resizable | Shows progress | Shows text |
| ------ | ------ | ------ | ------ | ------ |
|Summary|True|True|True|False|
|Milestone|True|False|False|False|
|Task|True|True|True|True|
