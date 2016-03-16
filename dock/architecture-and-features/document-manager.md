---
title: Document Manager
page_title: Document Manager | UI for WinForms Documentation
description: Document Manager
slug: winforms/dock/architecture-and-features/document-manager
tags: document,manager
published: True
position: 11
previous_url: dock-architecture-and-features-document-manager
---

# Document Manager



The __DocumentManager__ object manages all DockWindows that are parented in the [main DocumentCountainer]({%slug winforms/dock/architecture-and-features/understanding-raddock%}) of RadDock. A Document (a window which is parented in a DocumentContainer) is either a DocumentWindow instance or a ToolWindow, that has its current DockState set to DockState.TabbedDocument. The DocumentManager exposes several important properties which will allow you to easily customize the way Documents behave in the MainDocumentContainer.
 
## ActiveDocument
 

This property allows you to get the currently active document among the documents in a RadDock instance. This property is not equal to the ActiveWindow of RadDock, because the currently active window in RadDock can be a ToolWindow, but still there will be one document that is active among the rest of the documents. For example in the screenshot below the ActiveWindow of RadDock is ToolWindow3, but the ActiveDocument of DocumentManager is DocumentWindow2: 

{{source=..\SamplesCS\Dock\DocumentManager1.cs region=activeWindows}} 
{{source=..\SamplesVB\Dock\DocumentManager1.vb region=activeWindows}} 

````C#
DockWindow activeDocument = this.radDock1.DocumentManager.ActiveDocument; //documentWindow2
DockWindow activeWindow = this.radDock1.ActiveWindow; //toolWindow2

````
````VB.NET
Dim activeDocument As DockWindow = Me.RadDock1.DocumentManager.ActiveDocument 'documentWindow2
Dim activeWindow As DockWindow = Me.RadDock1.ActiveWindow 'toolWindow2

````

{{endregion}} 


![dock-architecture-and-features-document-manager 001](images/dock-architecture-and-features-document-manager001.png)

 
## BoldActiveDocument
 
Determines whether the currently active document's Text will be displayed in bold Font in its corresponding TabItem. The ActiveDocument in the screenshot below is DocumentWindow2, but its text is not bold due to setting the __BoldActiveDocument__ to *false*: 

{{source=..\SamplesCS\Dock\DocumentManager1.cs region=boldActive}} 
{{source=..\SamplesVB\Dock\DocumentManager1.vb region=boldActive}} 

````C#
this.radDock1.DocumentManager.BoldActiveDocument = false;

````
````VB.NET
Me.RadDock1.DocumentManager.BoldActiveDocument = False

````

{{endregion}} 


![dock-architecture-and-features-document-manager 002](images/dock-architecture-and-features-document-manager002.png)



## DocumentInsertOrder

Gets or sets the insert order to be used when adding new documents. By default the insert order is set to InFront and the behavior resembles the behavior of VisualStudio. The screenshot below shows what happens after three clicks on the "Add Document" button when __DocumentInsertOrder__ is set to *Default* or *InFront*: 

{{source=..\SamplesCS\Dock\DocumentManager2.cs region=insertOrderInFront}} 
{{source=..\SamplesVB\Dock\DocumentManager2.vb region=insertOrderInFront}} 

````C#
this.radDock1.DocumentManager.DocumentInsertOrder = DockWindowInsertOrder.InFront;

````
````VB.NET
Me.RadDock1.DocumentManager.DocumentInsertOrder = DockWindowInsertOrder.InFront

````

{{endregion}} 


![dock-architecture-and-features-document-manager 003](images/dock-architecture-and-features-document-manager003.png) 

The other available option for this property is *ToBack.* The behavior of DocumentTabStrip in this case resembles the behavior of most web browsers. The screenshot below demonstrates what happens after three clicks on the "AddDocument" button: 

{{source=..\SamplesCS\Dock\DocumentManager2.cs region=insertOrderToBack}} 
{{source=..\SamplesVB\Dock\DocumentManager2.vb region=insertOrderToBack}} 

````C#
this.radDock1.DocumentManager.DocumentInsertOrder = DockWindowInsertOrder.ToBack;

````
````VB.NET
Me.RadDock1.DocumentManager.DocumentInsertOrder = DockWindowInsertOrder.ToBack

````

{{endregion}} 


![dock-architecture-and-features-document-manager 005](images/dock-architecture-and-features-document-manager005.png) 
      
