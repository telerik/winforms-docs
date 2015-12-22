---
title: Adding items
page_title: Adding items | UI for WinForms Documentation
description: Adding items
slug: winforms/ganttview-/design-time/adding-items
tags: adding,items
published: True
position: 2
---

# Adding items



## 

The GanttViewDataItem Collection Editor allows you to add tasks to the gantt view in design time.
        
![ganttview-designtime-adding-items 001](images/ganttview-designtime-adding-items001.png)

The more important properties of the column you need to set up are:

* __Title:__ This is the text that will be displayed over the item if it is a Task item. No text is displayed for summary and milestone items.
            

* __Start:__ The start date and time for the task.
            

* __End:__ The end date and time for the task.
            

* __ReadOnly:__ Determines whether this item is editable.
            

* __Visible:__ Determines whether this item will be visible in RadGanttView.
            

* __ContextMenu:__ Allows you to assign a particular context menu to each individual item. Individual context menus are shown with higher priority than the default of the control’s context menu.
            

* __Progress:__ Allows you to set the completion of the task.