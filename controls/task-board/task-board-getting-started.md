---
title: Getting Started
page_title: Getting Started | Task Board
description: Learn how to get started with the WinForms TaskBoard (Kanban) control.
slug: task-board-getting-started
tags: task board, kanban, getting, started
published: True
position: 2 
CTAControlName: TaskBoard
---

# Getting Started



{{source=..\SamplesCS\TaskBoard\TaskBoardGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\TaskBoard\TaskBoardGettingStarted.vb region=GettingStarted}} 

````C#

UserInfo user1 = new UserInfo();
user1.FirstName = "Anne";
user1.LastName = "Dodsworth";
user1.Avatar = Properties.Resources.anne;
UserInfo user2 = new UserInfo();
user2.FirstName = "Andrew";
user2.LastName = "Fuller";
user2.Avatar = Properties.Resources.andrew1;

RadTaskCardElement card = new RadTaskCardElement();

RadTaskBoardColumnElement c1 = new RadTaskBoardColumnElement();
c1.Title = "Backlog";
c1.Subtitle = "Internal Issues";

RadTaskBoardColumnElement c2 = new RadTaskBoardColumnElement();
c2.Title = "In Development";
c2.Subtitle = "Prioritized Issues";
c2.IsCollapsed = true;
this.radTaskBoard1.Columns.Add(c1);
this.radTaskBoard1.Columns.Add(c2);

card.TitleText =   "ListView improvements"; 
card.DescriptionText =   "Research phase";
card.AccentSettings.Color = Color.Red;

card.AddUser(user1);
card.AddUser(user2);

RadTaskCardTagElement tagWF = new RadTaskCardTagElement();
tagWF.Text = "win-forms";
RadTaskCardTagElement tagWPF = new RadTaskCardTagElement();
tagWPF.Text = "wpf";
card.TagElements.Add(tagWF);
card.TagElements.Add(tagWPF);

card.SubTasks.Add(new SubTask(card));
card.SubTasks.Add(new SubTask(card));
card.SubTasks.Add(new SubTask(card));
SubTask x = new SubTask(card);
x.Completed = true;
card.SubTasks.Add(x);
c1.TaskCardCollection.Add(card);


````
````VB.NET


````

{{endregion}} 

![ task-board-getting-started 001](images/task-board-getting-started001.png)
 
 
# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
 
        
