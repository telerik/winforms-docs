---
title: Properties and Events
page_title: Properties Methods and Events| RadRibbonBar
description: This article describes the more important properties and events of RadRibbonBar.
slug: winforms/ribbonbar/properties-and-events
tags: radribbonbar, properties, events
published: True
position: 5
---

# Properties

|Property|Description|
|------|------|
|__AutoSize__|Gets or sets whether the edit control is auto-sized.|
|__SmallImageList__|Gets or sets the small image list.|
|__Text__|Gets or sets the text of the control.|
|__CausesValidation__|Gets or sets a flag indicating whether the control causes validation.|
|__CommandTabs__|Gets the collection of command tabs.|
|__ContextualTabGroups__|Gets the collection of contextual tab groups.|
|__QuickAccessToolBarHeight__|Gets the QuickAccessToolBar element.|
|__EnableKeyboardNavigation__|Allows the user to navigate the control using the keyboard.|
|__HelpButton__|Represent the Ribbon Help button.|
|__ExpandButton__|Represent the Ribbon Expand button.|
|__ShowHelpButton__|Get or sets value indicating whether RibbonBar Help button is visible or hidden.|
|__ShowExpandButton__|Get or sets value indicating whether RibbonBar Help button is visible or hidden.|
|__EnableKeyMap__|Gets or sets whether Key Map (Office 2007 like accelerator keys map) is used for this specific control. Currently this option is implemented for the RadRibbonBar control only.|
|__ApplicationMenuAnimantionType__|Gets or sets a value indicating the type of the fade animation.|
|__QuickAccessToolbarBelowRibbon__|Gets or sets if the quick access toolbar is below the ribbon.|
|__QuickAccessToolBarItems__|Gets the collection of quick access menu items.|
|__QuickAccessToolBar__|Gets the QuickAccessToolBar element.|
|__StartButtonImage__|Gets or sets the image of the start button placed in the top left corner.|
|__StartMenuItems__|Gets the collection of the start button menu item.|
|__StartMenuRightColumnItems__|Gets the collection of the start button menu items which appear on the right.|
|__StartMenuBottomStrip__|Gets the collection of the start button menu DropDown which is displayed when the button has two columns.|
|__StartMenuWidth__|Gets or sets the width of the start menu.|
|__OptionsButton__|Gets the options menu button.|
|__ExitButton__|Gets the exit menu button.|
|__SelectedCommandTab__|Gets the instance of the currently selected command tab.|
|__RibbonBarElement__|Gets the instance of RadRibbonBarElement wrapped by this control. RadRibbonBarElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadRibbonBar.|
|__Expanded__|Gets or sets a value indicating whether the ribbon bar is expanded.|
|__CollapseRibbonOnTabDoubleClick__|Gets or sets a value indicating whether the ribbon bar will be collapsed or expanded on ribbon tab double click.|
|__MinimizeButton__|Gets or sets if the ribbon bar has minimize button in its caption.|
|__MaximizeButton__|Gets or sets if the ribbon bar has maximize button in its caption.|
|__CloseButton__|Gets or sets if the ribbon bar has close button in its caption.|
|__LocalizationSettings__|Gets the localization settings associated with this control.|

# Events

|Event|Description|
|------|------|
|__CommandTabSelecting__|Occurs just before a command tab is selected.|
|__CommandTabSelected__|Occurs when a command tab is about to be selected.|
|__ExpandedStateChanged__|Occurs when the RadRibbonBar is either expanded or collapsed. The state of the control can be acquired from the Expanded property.|
|__KeyTipActivating__|Occurs when the user is press Key tip.|
|__KeyTipShowing__|Occurs when the RadRibbonBar is painting Key tips.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radribbonbar.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radribbonbar.htm)
