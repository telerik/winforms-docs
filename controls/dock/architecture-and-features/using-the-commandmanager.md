---
title: Using the CommandManager
page_title: Using the CommandManager - WinForms Dock Control
description: Learn how you can use the RadDock's CommandManager.
slug: winforms/dock/architecture-and-features/using-the-commandmanager
tags: using,the,commandmanager
published: True
position: 8
previous_url: dock-architecture-and-features-using-the-command-manager
---

# Using the CommandManager
 
## Predefined Commands

* __DisplayQuickNavigator (CTRL+TAB)__: Displays the window activation tool (quick navigator)

* __CloseActiveDocument (CTRL+F4)__: Closes the currently active document and selects the next in the activation order list.

* __NextDocument (CTRL+F6)__: Sends the currently active document to the back of the activation order list and activates the next one.

* __PreviousDocument (CTRL+SHIFT+F6)__: Puts the last document in the activation order list in front and activates it.
 
The names of all predefined commands may be found in the static **PredefinedCommandNames** class.
 
## Providing Custom Shortcuts

You may easily specify custom shortcut for any of the predefined commands like this: 

<snippet id='dock-using-the-commandmanager-shortcut-cs' />
<snippet id='dock-using-the-commandmanager-shortcut-vb' />

  

The above code specifies the **SHIFT+A+S** as a valid key combination that will trigger the **NextDocument** command.

## Registering Custom Command

The completely transparent object model of the command manager allows you to create and register completely custom command and associate it with the desired key combination. The following code demonstrates how to create custom command that floats the currently active tool window and is associated with the **CTRL+F** shortcut:

#### Define the custom command class 

<snippet id='dock-using-the-commandmanager-raddockcommand-cs' />
<snippet id='dock-using-the-commandmanager-raddockcommand-vb' />

 


#### Register the custom command 

<snippet id='dock-using-the-commandmanager-registercustomcommand-cs' />
<snippet id='dock-using-the-commandmanager-registercustomcommand-vb' />

 
 
## Enable/Disable the Command Manager
 
You may easily disable the command manager, using its __Enabled__ property. Alternatively, you may either clear all commands or clear any shortcut associated with these commands.

# See Also

[Getting Started]({%slug winforms/dock/getting-started%})
[Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%}) 
[Using the ContextMenuService]({%slug winforms/dock/architecture-and-features/using-the-contextmenuservice%})
[Using the DragDropService]({%slug winforms/dock/architecture-and-features/using-the-dragdropservice%}) 
[Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})   
