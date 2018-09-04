---
title: Display Modes
page_title: Display Modes | Navigation View
description: The navigation view control provides a collapsible navigation pane that helps implement the hamburger menu pattern and automatically adapts the pane's display mode to different control sizes.
slug: winforms/pageview/navigationview
tags: navigation, view, hamburger
published: True
position: 4
---

# Display Modes

The NavigationView supports four modes - *Auto*, *Minimal*, *Compact*, *Expanded*. This article describes all modes in details.

## Auto 

This mode switches between the other modes depending on the available free space. By default if the width is bellow 641 the *Minimal* mode is used. If the width is between  641 and 1008 the *Compact* mode is used. If there are more that 1008 pixels available the *Expanded* mode is used. 

![](images/pageview-navigation-view-display-modes001.png)

## Minimal

With this mode the pages items are displayed in popup and you must click on the hamburger button in order to display them.

![](images/pageview-navigation-view-display-modes002.png)

## Compact

This mode displays only the icons of the pages strips. The icons are always visible in this case. 

![](images/pageview-navigation-view-display-modes003.png)

## Expanded

With this mode both the icons and the text of the items are displayed.

![](images/pageview-navigation-view-display-modes004.png)