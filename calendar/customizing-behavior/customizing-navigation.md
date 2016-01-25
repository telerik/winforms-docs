---
title: Customizing Navigation
page_title: Customizing Navigation | UI for WinForms Documentation
description: Customizing Navigation
slug: winforms/calendar/customizing-behavior/customizing-navigation
tags: customizing,navigation
published: True
position: 3
previous_url: calendar-customizing-behavior-customizing-navigation
---

# Customizing Navigation



## 

RadCalendar provides two types of navigation that allow you to switch or jump to new month views:

* __Previous/next month__ - allows you to go to the previous/next month view by clicking the "<" or ">" buttons
            

* __Jump X months forward/backward__ - allows you to jump X number of views (one view can have several months if [Multiview Mode]({%slug winforms/calendar/customizing-behavior/multiview-mode%}) is enabled) forward or backward when you click the "<<" or ">>" buttons. The jump step is specified in the __FastNavigationStep__ property. For example where two months are displayed and __FastNavigationStep__ = "2", RadCalendar will jump 4 instead of 2 months ahead.  If the initial view shows January and February and the fast navigation button forward button is clicked then RadCalendar will show May and June. 
            
![calendar-customizing-behaviour-customizing-navigation 001](images/calendar-customizing-behaviour-customizing-navigation001.png)

Customize navigation buttons using the following properties:

* __FastNavigationStep__

* __FastNavigationNextImage__, __FastNavigationNextText__, __FastNavigationNextToolTip__

* __FastNavigationPrevImage__, __FastNavigationPrevText__, __FastNavigationPrevToolTip__

Customize the title by assigning a __TitleFormat__ string By default this value is "MMMM yyyy".




