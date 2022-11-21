---
title: Keyboard And Mouse Support
page_title: Keyboard And Mouse Support - RadDock
description: This article shows the specific keyboard and mouse features. 
slug: winforms/dock/architecture-and-features/keyboard-and-mouse-support
tags: keyboard,and,mouse,support
published: True
position: 6
previous_url: dock-architecture-and-features-keyboard-and-mouse-support
---

# Keyboard And Mouse Support
 
## Keyboard Support

__Ctrl+Tab:__ Opens the [QuickNavigator]({%slug winforms/dock/architecture-and-features/quick-navigator%}). [QuickNavigator]({%slug winforms/dock/architecture-and-features/quick-navigator%}) scrolls through a list of docking panels handled by __RadDock__.

__Esc:__ Cancels a drag operation, but does not revert to the initial state. I.e. when you start dragging a window and press Esc, this window will not revert to its original state, but will remain as it is at the moment of pressing Esc.
        

## Mouse Support

__Double click:__ Double-clicking the title bar of a **ToolWindow** un-docks the panel so that it floats. Double-clicking the title bar of a floating window docks the **ToolWindow**.

# See Also

* [Using the CommandManager]({%slug winforms/dock/architecture-and-features/using-the-commandmanager%})     
* [Using the ContextMenuService]({%slug winforms/dock/architecture-and-features/using-the-contextmenuservice%})
* [Using the DragDropService]({%slug winforms/dock/architecture-and-features/using-the-dragdropservice%}) 
* [Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})   
* [Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%})
