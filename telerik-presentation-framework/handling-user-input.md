---
title: Handling User Input
page_title: Handling User Input | Telerik Presentation Framework
description: Handling User Input
slug: winforms/telerik-presentation-framework/handling-user-input
tags: handling,user,input
published: True
position: 8
previous_url: tpf-handling-user-input
---

# Handling User Input

Mouse and keyboard user input is accepted from Windows event notification in __RadControl__, but actually handled in __RadElement__ and __RadItem__ objects.
        
* __RadControl__ is the object that is first notified of Windows events, i.e. mouse over, key press, etc., and calls corresponding methods of __RadElement__ through the RadControl __RadRootElement__ property.

* __RadElement__ introduces methods for dispatching user input information. This information is acted on if the RadElement __ShouldHandleMouseInput__ property is *true*. By default, __ShouldHandleMouseInput__ is set false and must be turned on explicitly. The __NotifyParentOnMouseInput__ property is introduced in RadElement to control the [bubbling]({%slug winforms/telerik-presentation-framework/events/routed-events%}) of mouse events to parent elements. By default __NotifyParentOnMouseInput__ is *false*.

* __RadItem.ShouldHandleMouseInput__ is true by default. RadItem also introduces keyboard methods and events including __KeyDown__, __KeyPress__ and __KeyUp__ events.

The diagram below shows the inheritance tree where the __RootRadElement__ descends from __RadItem__, and where __RadItem__ ultimately descends from __RadElement__:

![tpf-handling-user-input 001](images/tpf-handling-user-input001.png)

# See Also
* [Animations]({%slug winforms/telerik-presentation-framework/animations%})

* [Dependency Properties]({%slug winforms/telerik-presentation-framework/dependency-properties%})

* [HTML-like Text Formatting]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%})

* [Inherit themes from RadControls derivatives]({%slug winforms/telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives%})

* [Microsoft Active Accessibility Support]({%slug winforms/telerik-presentation-framework/microsoft-active-accessibility-support%})

* [Override Theme Settings at Run Time]({%slug winforms/telerik-presentation-framework/override-theme-settings-at-run-time%})

* [RadMarkupDialog]({%slug winforms/telerik-presentation-framework/radmarkupdialog%})

