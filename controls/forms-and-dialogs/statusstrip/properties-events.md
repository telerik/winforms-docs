---
title: Properties and Events
page_title: Properties End events - WinForms StatusBar Control
description: RadStatusStrip provides a status area that can be composed of any number of RadElement types - buttons, repeat buttons, image buttons, labels, panels, progress bars and separators.
slug: winforms/forms-and-dialogs/statusstrip/properties-events
tags: radstatusbar,properties, methods, events
published: True
position: 3
previous_url: forms-and-dialogs-statusstrip-radstatusbar-properties, winforms/forms-and-dialogs/statusstrip/radstatusbar-properties
---

# Properties

|Property|Description|
|----|----|
|__SizingGrip__|Gets or sets the visibility of the grip used to reposition the control.|
|__Items__|Gets all the items that belong to a RadStatusStrip.|
|__LayoutStyle__|Handles the arrangement of items when they exceed the horizontal space in the status bar. *Stack* (the default) arranges items from left to right and the rightmost items that exceed the horizontal space are not visible. </br> ![WinForms RadStatusStrip LayoutStyle Stack](images/forms-and-dialogs-statusstrip-radstatusbar-properties002.png)   </br> *Overflow* moves items in excess of the horizontal space to the following line.</br>![WinForms RadStatusStrip LayoutStyle Overflow](images/forms-and-dialogs-statusstrip-radstatusbar-properties001.png)|
|__StatusBarElement__|Gets the instance of RadStatusBarElement wrapped by this control. RadStatusBarElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadStatusStrip.|
|__BackColor__|RadStatusStrip consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|__ForeColor__|RadStatusStrip consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|
|StatusBarElement.__Orientation__|Gets or sets RadStatusBarElement's orienatation.|
|StatusBarElement.__GripStyle__|Shows or hides the Grip element in RadStatusStrip.|
|StatusBarElement.__RotateGripOnRightToLeft__|Gets or sets a value indicating whether the grip is rotated in RightToLeft mode.|

# Methods

|Method|Description|
|----|----|
|__SetSpring__(RadItem control, bool value)|Sets Spring property of specified RadItem indicating whether the item will automatically fills the available space on the RadStatusStrip as the form is resized.|
|__GetSpring__ (RadItem control)|Gets Spring property of specified RadItem.|

# Events

|Event|Description|
|----|----|
|__StatusBarClick__|Fires when the status bar is clicked.|
|__LayoutStyleChanging__|Fires before LayoutStyle is changed.|
|__LayoutStyleChanged__|Fires after LayoutStyle is changed.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radstatusstrip.html#properties)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radstatusstrip.html#events)

