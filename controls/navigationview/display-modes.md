---
title: Display Modes
page_title: Display Modes - Navigation View
description: The navigation view control provides a collapsible navigation pane that helps implement the hamburger menu pattern and automatically adapts the pane's display mode to different control sizes.
slug: navigationview-displaymode
tags: navigation, view, hamburger
published: True
position: 4
---

# Display Modes

The NavigationView supports four modes - *Auto*, *Minimal*, *Compact*, *Expanded*. This article describes all modes in details.

## Auto 

This mode switches between the other modes depending on the available free space. By default if the width is bellow 641 the *Minimal* mode is used. If the width is between  641 and 1008 the *Compact* mode is used. If there are more that 1008 pixels available the *Expanded* mode is used. 

![WinForms RadNavigationView Display Mode Auto](images/pageview-navigation-view-display-modes001.gif)

## Minimal

With this mode the pages items are displayed in popup, only the header and the hamburger button are visible. This is the default view when the overall width of the control is less than or equal to 640 pixels.  

![WinForms RadNavigationView Display Mode Minimal](images/pageview-navigation-view-display-modes002.gif)

## Compact

This mode displays only the icons of the pages items. The icons are always visible in this mode. When expanded the pane appears as a popup above the content area.This should be the default view when the overall width of the control is between 641px and 1007px.

![WinForms RadNavigationView Display Mode Compact](images/pageview-navigation-view-display-modes003.gif)

## Expanded

With this mode both the icons and the text of the items is displayed. The pane can be collapsed which will display only the icons and will free more space. When the pane is expanded or collapsed the content area changes its size. This should be the default view when the overall width of the control is greater than 1008px.

![WinForms RadNavigationView Display Mode Expanded](images/pageview-navigation-view-display-modes004.gif)


# See Also
* [Getting Started]({%slug navigationview-getting-started%})
* [Properties]({%slug navigationview-properties-methods-events%})
