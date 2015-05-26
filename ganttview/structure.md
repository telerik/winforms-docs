---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: Structure
slug: winforms/ganttview-/structure
tags: structure
published: True
position: 0
---

# Structure



## 

The main elements of the structure of RadGanttView are displayed below:
        

* RadGanttView
            

* RadGanttViewElement
                

* GanttViewTextViewElement (virtualized container)
                    

* GanttViewTextItemElement
                        

* GanttViewTextViewCellElement
                            

* GanttViewGraphicalViewElement (virtualized container)
                    

* GanttViewTimelineContainer (virtualized container)
                        

* GanttGraphicalViewBaseItemElement
                        

* GanttGraphicalViewBaseTaskElement
                            ![ganttview-structure 001](images/ganttview-structure001.png)

1. RadGanttViewElement is the main element contained in the control. It parents the two main elements that you can see in RadGanttView and the separator between them.
            

1. GanttViewTextViewElement is a virtualized stack container which holds the columns of the text view and the items in it.
            

1. GanttViewTextItemElement represents a single row in the text view.
            

1. GanttViewTextViewCellElement is a cell element which displays data from the data item.
            

1. GanttViewGraphicalViewElement is a virtualized stack container which holds the timeline container, the items graphically visualizing the gantt data and the links connecting different tasks.
            

1. GanttViewTimelineContainer is a virtualized stack container which holds items displaying time.
            

1. GanttGraphicalViewBaseItemElement – this is the base type for the items displayed in the graphical view element
            

1. GanttGraphicalViewBaseTaskElement- this is the base type for the task elements.
            
