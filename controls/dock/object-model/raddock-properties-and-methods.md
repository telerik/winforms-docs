---
title: RadDock Properties, Methods and Events
page_title: RadDock Properties, Methods and Events - WinForms Dock Control
description: Get familiar with the public API that WinForms RadDock offers. 
slug: winforms/dock/object-model/raddock-properties-and-methods
tags: raddock,properties,and,methods
published: True
position: 0
previous_url: dock-object-model-raddock-properties-and-methods
---

# RadDock Properties, Methods and Events

__RadDock__ controls the overall behavior of __ToolWindows__ and __DocumentWindows__ that it manages. This includes enabling basic capabilities of docking, floating and hiding, handling tabbed document behavior, serialization of layout and providing access to collections of managed dockable objects.

## Properties 

|__Properties__|Description|
|---|---|
|__ActiveWindow__|Sets or gets the currently active DockWindow (ToolWindow or DocumentWindow)|
|__AutoDetectMdiChildren__|Allows RadDock to automatically control MDI child windows of a parent form.|
|__DockWindows__|A collection of `IDockWindow` objects being managed by RadDock.|
|__DockWindows.ToolWindows__|A collection of the ToolWindows being managed by  RadDock.|
|__DockWindows.DocumentWindows__|Gets a collection of the DocumentWindows being managed by RadDock.|
| __ActiveFloatingWindows__|Gets a collections of the floating windows.
|
|__MdiChildren__|An array of MDI forms parented in the RadDock. This array is accessible at runtime.|
|__MainDocumentContainerVisible__|Indicates whether main document container will be initially visible.|
|__QuickNavigatorSettings__|This property give you an object of type QuickNavigatorSettings. This object gives you a full control over the [Quick Navigator]({%slug winforms/dock/architecture-and-features/quick-navigator%}) features.|
|__AutoHideAnimation__|Determines what animation will be used when displaying/hiding auto-hidden windows.|
|__SplitterWidth__|Gets or sets the width of all splitters.|
 

>note The tabs and captions properties are listed in the following article: [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})

## Methods

|__Methods__|Description|
|---|---|
|__ActivateWindow(DockWindow window)__| Activates a DockWindow.|
|__AddDocument(DockWindow window)__| Adds a DockWindow as a DocumentWindow.|
|__AutoHideWindow(DockWindow window)__| Makes the specified DockWindow auto-hidden.|
|__AutoHideWindows(IEnumerable<DockWindow> windows, AutoHidePosition position)__|Makes the specified DockWindow collection auto-hidden.|
|__CloseAllWindows()__|Closes all DockWindows. The __[CloseAction]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})__ property specifies whether a __ToolWindow/DocumentWindow__ will be *Closed*, *ClosedAndDisposed* or just *Hidden*.|
|__CloseWindow(DockWindow window)__|Closes a specified ToolWindow or DocumentWindow.|
|__DockWindow(DockWindow window, DockPosition position)__| Docks a DockWindow (ToolWindow/DocumentWindow) at the specified position.|
|__DockWindow(DockWindow window, DockWindow target, DockPosition position)__|Docks a DockWindow at a position relative to the specified target DockWindow.|
|__FloatToolTabStrip(ToolTabStrip strip, Rectangle bounds)__|Floats a ToolTabStrip with ToolWindows in a new form. The form has bounds specified by the __bounds__ parameter.|
|__FloatWindow(DockWindow window)__|Floats the specified DockWindow in a new form.|
|__RemoveWindow(DockWindow window)__|Removes a __ToolWindow__ or __DocumentWindow__ from the list of managed windows.|
|__RemoveAllDocumentWindows__|Removes all DocumentWindows, without disposing it.|
|__RemoveAllWindows__|Removes all DockWindows, without disposing them.|
|__RemoveAllToolWindows(DockWindowCloseAction.Close, AllowedDockState.Docked | AllowedDockState.Hidden)__|Removes all ToolWindows with the specified DockState, using the specified close action.|

## Events

|__Events__|Description|
|---|---|
|__DockTabStripNeeded__|Raised whenever a new DockTabStrip instance is needed internally by the framework.|
|__PageViewInstanceCreated__|Fires after `RadPageViewElement` is created.|
|__DockWindowAdded__|Notifies for a new DockWindow registered with this RadDock instance.|
|__DockWindowRemoved__|Notifies for a DockWindow removed from this RadDock instance. This event will not be raised for hidden windows.|
|__DockWindowClosing__|Allows you to cancel a close operation.|
|__DockWindowClosed__|Raised after a DockWindow has been closed.|
|__DockStateChanging__|Notifies for an upcoming change in the DockState of the associated window. Cancelable.|
|__DockStateChanged__|Notifies for a change in the DockState of the associated window.|
|__ActiveWindowChanging__|Notifies for an upcoming change of the ActiveWindow property. Cancelable.|
|__ActiveWindowChanged__| Notifies for an actual change of the ActiveWindow property.|
|__SelectedTabChanged__|Occurs when selected tab is changed in the currently manipulated DockTabStrip.|
|__SelectedTabChanging__|Occurs before the selected tab is changed.|
|__FloatingWindowCreated__|Notifies that a FloatingWindow instance is internally created by the framework. Allows listeners to examine and optionally change the window itself.|

## See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
