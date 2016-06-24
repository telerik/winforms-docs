---
title: RadDock Properties and Methods
page_title: RadDock Properties and Methods | UI for WinForms Documentation
description: RadDock Properties and Methods
slug: winforms/dock/object-model/raddock-properties-and-methods
tags: raddock,properties,and,methods
published: True
position: 0
previous_url: dock-object-model-raddock-properties-and-methods
---

# RadDock Properties and Methods

__RadDock__ controls the overall behavior of __ToolWindows__ and __DocumentWindows__ that it manages. This includes enabling basic capabilities of docking, floating and hiding, handling tabbed document behavior, serialization of layout and providing access to collections of managed dockable objects.

## Properties

* __ActiveWindow:__ Sets or gets the currently active DockWindow (ToolWindow or DocumentWindow). 

* __AutoDetectMdiChildren:__ Allows __RadDock__ to automatically control MDI child windows of a parent form.

* __DockWindows:__ A collection of `IDockWindow` objects being managed by the RadDock.

* __DockWindows.ToolWindows:__ A collection of the ToolWindows being managed by the RadDock.

* __DockWindows.DocumentWindows:__ Gets a collection of the DocumentWindows being managed by the RadDock.

* __ActiveFloatingWindows:__ Gets a collections of the floating windows.

* __MdiChildren:__ An array of MDI forms parented in the RadDock. This array is accessible at runtime.

* __MainDocumentContainerVisible__: Indicates whether main document container will be initially visible.

* __QuickNavigatorSettings:__ this property give you an object of type QuickNavigatorSettings. This object gives you a full control over the [Quick Navigator]({%slug winforms/dock/architecture-and-features/quick-navigator%}) features.

* __ShowDocumentPinButton:__ Shows/hides the pin button of the tab items. This button allows you to pin the tabs. This way you can keep some of the tabs visible and navigate trough others.

## Methods

* __ActivateWindow(DockWindow window):__ Activates a DockWindow.

* __AddDocument(DockWindow window):__ Adds a DockWindow as a DocumentWindow in RadDock. 

* __AutoHideWindow(DockWindow window):__ Makes the specified DockWindow auto-hidden.

* __AutoHideWindows(IEnumerable<DockWindow> windows, AutoHidePosition position):__ Makes the specified DockWindow collection auto-hidden.

* __CloseAllWindows():__ Closes all DockWindows. The __[CloseAction]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})__ property specifies whether a __ToolWindow/DocumentWindow__ will be *Closed*, *ClosedAndDisposed* or just *Hidden*.

* __CloseWindow(DockWindow window):__ Closes a specified ToolWindow or DocumentWindow.

* __DockWindow(DockWindow window, DockPosition position):__ Docks a DockWindow (ToolWindow/DocumentWindow) at the specified position.

* __DockWindow(DockWindow window, DockWindow target, DockPosition position):__ Docks a DockWindow at a position relative to the specified target DockWindow.

* __FloatToolTabStrip(ToolTabStrip strip, Rectangle bounds):__ Floats a ToolTabStrip with ToolWindows in a new form. The form has bounds specified by the __bounds__ parameter.

* __FloatWindow(DockWindow window):__ Floats the specified DockWindow in a new form.

* __FloatWindow(DockWindow window, Rectangle bounds):__ Floats the specified DockWindow in a new form. The form has bounds specified by the __bounds__ parameter.

* __LoadFromXml(fileName)__: Deserializes __RadDock__ layout structure.

* __SaveToXml(fileName):__ Serializes the __RadDock__ layout structure. This method does not save content. See [Loading and Saving Layouts]({%slug winforms/dock/loading-and-saving-layouts/loading-and-saving-layouts%}) for more information.

* __RemoveWindow(DockWindow window)__: Removes a __ToolWindow__ or __DocumentWindow__ from the list of managed dockables.
            
