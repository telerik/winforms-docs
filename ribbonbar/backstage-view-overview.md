---
title: Overview
page_title: Overview
description: Overview
slug: ribbonbar-backstage-view-overview
tags: overview
published: True
position: 3
---

# Overview



## 

Backstage View is the Office 2010 replacement of the Application Menu. It is a menu that covers the whole window area and contains buttons and tabs.
          Each tab have a content area, which can be populated with any type of Controls.
          To enable the Backstage View in RadRibbonBar change the __ApplicationMenuStyle__ property to *BackstageView*.
        

#### __[C#] Enabling Backstage view__

{{source=..\SamplesCS\RibbonBar\BackstageView\RibbonBackstageView.cs region=ApplicationMenuStyle}}
	            radRibbonBar1.ApplicationMenuStyle = Telerik.WinControls.UI.ApplicationMenuStyle.BackstageView;
	{{endregion}}



#### __[VB.NET] Enabling Backstage view__

{{source=..\SamplesVB\RibbonBar\BackstageView\RibbonBackstageView.vb region=ApplicationMenuStyle}}
	        RadRibbonBar1.ApplicationMenuStyle = Telerik.WinControls.UI.ApplicationMenuStyle.BackstageView
	{{endregion}}

![ribbonbar-backstage-view-overview 001](images/ribbonbar-backstage-view-overview001.png)
