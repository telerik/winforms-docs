---
title: Selection
page_title: Selection - RadGanttView
description: The today indicator represents the current date and time in the graphical view of RadGanttView.
slug: winforms/ganttview/ganttview-selection
tags: selection
published: True
position: 6 
---

# Selection
 
**RadGanttView** provides you with selection functionality, which allows the user to select a link or a task displayed in the control. 

>caption Figure 1. Selected Task

![WinForms RadGanttView Selected Task](images/ganttview-selection001.png)

>caption Figure 2. Selected Link

![WinForms RadGanttView Selected Link](images/ganttview-selection002.png)

It is possible to select a task/link by simply clicking on the element with the mouse. The selection mechanism can be controlled programmatically as well. **RadGanttView** exposes the **SelectedItem** and **SelectedLink** properties which get or set the selected **GanttViewDataItem** and **GanttViewLinkDataItem** respectively. The **SelectedItemChanging** event is fired when the selected task is going to be changed. The **GanttViewSelectedItemChangingEventArgs** gives you access to the affected task. It is possible to prevent this selection by canceling the event. It is necessary to set the **Cancel** argument to *true*. The **SelectedItemChanged** event is fired once the task selected is completed. The **SelectedLinkChanging** and **SelectedLinkChanged** events follow a similar logic but for the links. 


# See Also

* [Properties]({%slug winforms/ganttview/properties%})
