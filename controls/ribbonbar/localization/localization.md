---
title: Localization
page_title: Localization | RadRibbonBar
description: RadRibbonBar provides the possibility to localize the strings of the Options and Exit buttons that belong to the application menu.
slug: winforms/ribbonbar/localization/localization
tags: localization
published: True
position: 0
previous_url: ribbonbar-localization-localization
---

# Localization

**RadRibbonBar** provides the possibility to localize the strings of the Options and Exit buttons that belong to the application menu. You just neet to set the __Text__ properties of the __OptionsButton__ and __ExitButton__:

{{source=..\SamplesCS\RibbonBar\GettingStarted\AddingScreenTips.cs region=localize}} 
{{source=..\SamplesVB\RibbonBar\GettingStarted\AddingScreenTips.vb region=localize}} 

````C#
radRibbonBar1.RibbonBarElement.OptionsButton.Text = "Options";
radRibbonBar1.RibbonBarElement.ExitButton.Text = "Exit";

````
````VB.NET
RadRibbonBar1.RibbonBarElement.OptionsButton.Text = "Options"
RadRibbonBar1.RibbonBarElement.ExitButton.Text = "Exit"

````

{{endregion}}

Additionally, you can customize the text for the **LayoutMode**, __QuickAccessToolbar__, drop down menu, by setting the following properties of the __LocalizationSettings__ property of __RibbonBarElement__:

{{source=..\SamplesCS\RibbonBar\GettingStarted\AddingScreenTips.cs region=localize2}} 
{{source=..\SamplesVB\RibbonBar\GettingStarted\AddingScreenTips.vb region=localize2}} 

````C#
radRibbonBar1.LocalizationSettings.ShowQuickAccessMenuBelowItemText = "ENG Show below the ribbon";
radRibbonBar1.LocalizationSettings.MinimizeRibbonItemText = "ENG Minimize the ribbon";
radRibbonBar1.LocalizationSettings.ShowQuickAccessMenuAboveItemText = "ENG Show above the ribbon";
radRibbonBar1.LocalizationSettings.MaximizeRibbonItemText = "ENG Maximize the ribbon";

````
````VB.NET
RadRibbonBar1.LocalizationSettings.ShowQuickAccessMenuBelowItemText = "ENG Show below the ribbon"
RadRibbonBar1.LocalizationSettings.MinimizeRibbonItemText = "ENG Minimize the ribbon"
RadRibbonBar1.LocalizationSettings.ShowQuickAccessMenuAboveItemText = "ENG Show above the ribbon"
RadRibbonBar1.LocalizationSettings.MaximizeRibbonItemText = "ENG Maximize the ribbon"

````

{{endregion}}

## See Also

* [Right-to-left Support]({%slug winforms/ribbonbar/localization/right-to-left-support%})