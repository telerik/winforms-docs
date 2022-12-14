---
title: Structure
page_title: Structure - Task Dialog
description: RadTaskDialog is a themable alternative of the windows dialog boxes and the newly released TaskDialog for .NET 5.
slug: task-dialog-structure
tags: task dialog
published: True
position: 1 
---

# Structure

**RadTaskDialog** is the component used by the developers. It contains a **RadTaskDialogForm** and shows it using a predefined API. It also exposes the most used properties, methods and events of the **RadTaskDialogForm**. **RadTaskDialogForm** has a single control on it called **RadTaskDialogControl**, which is docked and occupies the whole space. The **RadTaskDialogControl** contains one main element, **RadTaksDialogControlElement**. This
**RadTaskDialogControlElement** consists of one single child – a page that simulates paging (something like a very simple [RadWizard]({%slug winforms/wizard%}) control). The **RadTaskDialogPage** contains the main UI elements and defines the layout logic. 

The picture below illustrates the inner structure and organization of the elements which build the **RadTaskDialog** control.

![WinForms RadTaskDialog Structure](images/task-dialog-structure001.png) 


# See Also

* [Getting Started]({%slug task-dialog-getting-started%})
* [Overview]({%slug task-dialog-overview%})
* [Element Types]({%slug task-dialog-element-types%})
 
        
