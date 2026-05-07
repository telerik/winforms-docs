---
title: Adding Users and Tags
page_title: Adding Users and Tags - Task Board
description: Add tags and users in the WinForms TaskBoard (Kanban) control.
slug: task-board-adding-user-and-tasks
tags: task board, kanban, add, user, tag
published: True
position: 5  
---

## Adding Users

**RadTaskBoard** allows you to define users at control level via the RadTaskBoard.**Users** collection. It can be achieved either at design time through the [smart tag]({%slug task-board-design-time%}), or programmatically:  

#### Adding Users at Design time
 
![WinForms RadTaskBoard Adding Users at Design time](images/task-board-adding-user-and-tasks001.png)

Once, there are users in the RadTaskBoard.**Users** collection at design time, they will be available for adding to the task cards:

![WinForms RadTaskBoard Users](images/task-board-adding-user-and-tasks002.png)

#### Adding Users at Run time

<snippet id='task-board-taskboardgettingstarted-adduser-cs' />
<snippet id='task-board-taskboardgettingstarted-adduser-vb' />



## Adding Tags

**RadTaskBoard** allows you to define tags at control level via the RadTaskBoard.**Tags** collection. It can be achieved either at design time through the [smart tag]({%slug task-board-design-time%}), or programmatically: 

#### Adding Tags at Design time

![WinForms RadTaskBoard Adding Tags at Design time](images/task-board-adding-user-and-tasks003.png)

Once, there are tags in the RadTaskBoard.**Tags** collection at design time, they will be available for adding to the task cards:

![WinForms RadTaskBoard Tags](images/task-board-adding-user-and-tasks004.png)

#### Adding Tags at Run time

<snippet id='task-board-taskboardgettingstarted-addtag-cs' />
<snippet id='task-board-taskboardgettingstarted-addtag-vb' />



>note When you add a **TagInfo** to a card, the TagInfo is added to the main collection in **RadTaskBoard**, so it can be reused.
  
# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
* [Task Card Edit Dialog]({%slug task-board-edit-dialog%})
 
        
