---
title: Accessing DockWindows
page_title: Accessing DockWindows | UI for WinForms Documentation
description: Accessing DockWindows
slug: winforms/dock/object-model/accessing-dockwindows
tags: accessing,dockwindows
published: True
position: 2
---

# Accessing DockWindows



## 

The DockWindows property returns an array of all DockWindow in a RadDock instance and gives you two useful properties and one method:
        

* __ToolWindows__ property:
            

* Returns an array of ToolWindows.

* __DocumentWindows__ property:
            

* Returns an array of DocumentWindows.

* __GetWindows(DockState state)__ method:
            

* Returns an array of DockWindows that are put in a specific DockState. For example, the following code snippet will return an array of DockWindows that are currently hidden: 
* 
{{source=..\SamplesCS\Dock\CreatingWindows.cs region=gettingHiddenWindows}} 
{{source=..\SamplesVB\Dock\CreatingWindows.vb region=gettingHiddenWindows}} 

````C#
            DockWindow[] hiddenWindows = radDock1.DockWindows.GetWindows(DockState.Hidden);
````
````VB.NET
        Dim hiddenWindows As DockWindow() = Me.RadDock1.DockWindows.GetWindows(DockState.Hidden)
        '
````

{{endregion}} 
 
You can get a desired ToolWindow\DocumentWindow by specifying its __Name__ as an index:
        

{{source=..\SamplesCS\Dock\CreatingWindows.cs region=gettingWindowByName}} 
{{source=..\SamplesVB\Dock\CreatingWindows.vb region=gettingWindowByName}} 

````C#
            DockWindow window1 = this.radDock1.DockWindows["Form1"];
            // or simply
            DockWindow window2 = this.radDock1["Form1"];
````
````VB.NET
        Dim window1 As DockWindow = Me.RadDock1.DockWindows("Form1")
        ' or simply
        Dim window2 As DockWindow = Me.RadDock1("Form1")
        '
````

{{endregion}} 



