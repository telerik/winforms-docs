---
title: Item Display Modes
page_title: Item Display Modes - RadOfficeNavigationBar
description: Compact and Full view modes control whether the items are visualized by image only or full text in the WinForms OfficeNavigationBar.  
slug: officenavigationbar-view-modes
tags: officenavigationbar, view, mode, compact
published: True
position: 4
---

# Item Display Modes

**RadOfficeNavigationBar** offers item display modes that indicate whether the items are visualized by image only or full text. This is controlled by the **UseCompactFont** and the **ItemsDisplayStyle** properties.

## Compact

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=CompactMode}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=CompactMode}} 

````C#

            this.radOfficeNavigationBar1.UseCompactFont = true;
            this.radOfficeNavigationBar1.ItemsDisplayStyle = DisplayStyle.Image;

````
````VB.NET

        Me.radOfficeNavigationBar1.UseCompactFont = True
        Me.radOfficeNavigationBar1.ItemsDisplayStyle = DisplayStyle.Image

````

{{endregion}} 

![WinForms RadOfficeNavigationBar Item Display Mode Compact](images/officenavigationbar-view-modes001.png)

## Full

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=FullMode}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=FullMode}} 

````C#

            this.radOfficeNavigationBar1.UseCompactFont = false;
            this.radOfficeNavigationBar1.ItemsDisplayStyle = DisplayStyle.ImageAndText;

````
````VB.NET

        Me.radOfficeNavigationBar1.UseCompactFont = False
        Me.radOfficeNavigationBar1.ItemsDisplayStyle = DisplayStyle.ImageAndText

````

{{endregion}} 

![WinForms RadOfficeNavigationBar Item Display Mode Full](images/officenavigationbar-view-modes002.png)

# See Also

* [Structure]({%slug officenavigationbar-structure%})	
* [Design Time]({%slug officenavigationbar-design-time%})	
* [Getting Started]({%slug officenavigationbar-getting-started%})	



