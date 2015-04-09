---
title: Localization
page_title: Localization
description: Localization
slug: ribbonbar-localization-localization
tags: localization
published: True
position: 0
---

# Localization



## 

RadRibbonBar provides the possibility to localize the strings of the Options and Exit buttons that
          belong to the application menu. You just neet to set the __Text__ properties 
          of the __OptionsButton__ and __ExitButton__:
        

#### __[C#]__

{{source=..\SamplesCS\RibbonBar\GettingStarted\AddingScreenTips.cs region=localize}}
	
	            radRibbonBar1.RibbonBarElement.OptionsButton.Text = "Options";
	            radRibbonBar1.RibbonBarElement.ExitButton.Text = "Exit";
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\RibbonBar\GettingStarted\AddingScreenTips.vb region=localize}}
	        RadRibbonBar1.RibbonBarElement.OptionsButton.Text = "Options"
	        RadRibbonBar1.RibbonBarElement.ExitButton.Text = "Exit"
	{{endregion}}



Additionally, you can customize the __QuickAccessToolbar__, drop down menu, by setting the
          following properties of the __LocalizationSettings__ property of __RibbonBarElement__:
        

#### __[C#]__

{{source=..\SamplesCS\RibbonBar\GettingStarted\AddingScreenTips.cs region=localize2}}
	
	            radRibbonBar1.LocalizationSettings.ShowQuickAccessMenuBelowItemText = "ENG Show below the ribbon";
	            radRibbonBar1.LocalizationSettings.MinimizeRibbonItemText = "ENG Minimize the ribbon";
	            radRibbonBar1.LocalizationSettings.ShowQuickAccessMenuAboveItemText = "ENG Show above the ribbon";
	            radRibbonBar1.LocalizationSettings.MaximizeRibbonItemText = "ENG Maximize the ribbon";
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\RibbonBar\GettingStarted\AddingScreenTips.vb region=localize2}}
	        RadRibbonBar1.LocalizationSettings.ShowQuickAccessMenuBelowItemText = "ENG Show below the ribbon"
	        RadRibbonBar1.LocalizationSettings.MinimizeRibbonItemText = "ENG Minimize the ribbon"
	        RadRibbonBar1.LocalizationSettings.ShowQuickAccessMenuAboveItemText = "ENG Show above the ribbon"
	        RadRibbonBar1.LocalizationSettings.MaximizeRibbonItemText = "ENG Maximize the ribbon"
	{{endregion}}


