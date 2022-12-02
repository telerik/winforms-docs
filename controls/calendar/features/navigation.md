---
title: Navigation
page_title: Customizing Navigation - WinForms Calendar Control
description: WinForms Calendar provides two types of navigation that allow you to switch or jump to next/previous month.
slug: winforms/calendar/customizing-behavior/customizing-navigation
tags: customizing,navigation
published: True
position: 8
previous_url: calendar-customizing-behavior-customizing-navigation, /calendar/customizing-behavior/customizing-navigation
---

# Navigation


__RadCalendar__ provides two types of navigation that allow you to switch or jump to next/previous month:

* __Previous/Next month__ - allows you to go to the previous/next month by clicking the "<" or ">" buttons
            

* __Jump N months forward/backward__ - allows you to jump N number of months (one view can have several months if [Multiview Mode]({%slug winforms/calendar/customizing-behavior/multiview-mode%}) is enabled) forward or backward when you click the "<<" or ">>" buttons. The jump step is specified in the __FastNavigationStep__ property. For example where two months are displayed and __FastNavigationStep__ = "2", __RadCalendar__ will jump 4 instead of 2 months ahead.  If the initial view shows January and February and the fast navigation button forward button is clicked then __RadCalendar__ will show May and June. 

>caption Figure 1: The navigation pane of RadCalendar. 

![WinForms RadCalendar Navigation Pane](images/calendar-customizing-behaviour-customizing-navigation001.png)

## Navigation properties:

* __AllowFastNavigation:__ Shows/hides the fast navigation buttons.

* __TitleAlign:__ Gets or sets the horizontal alignment of the calendar title. 

* __FastNavigationStep:__ this property gets or sets the current step used by the fast navigation buttons.

* __FastNavigationNextImage__, __FastNavigationNextText__, __FastNavigationNextToolTip:__ these properties allows you to set the text image and tooltip of the next button.

* __FastNavigationPrevImage__, __FastNavigationPrevText__, __FastNavigationPrevToolTip:__ these properties allows you to set the text image and tooltip of the previous button.

* __TitleFormat:__ This property allos you to set the format date format of the title. The default value is "MMMM yyyy".

## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})
* [Footer]({%slug winforms/calendar/customizing-appearance/footer%})
* [Keyboard Navigation]({%slug  winforms/calendar/customizing-behavior/keyboard-navigation%})
* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%})
* [Repeating Events]({%slug winforms/calendar/customizing-behavior/repeating-events%})
* [Selecting Dates]({%slug winforms/calendar/customizing-behavior/selecting-dates%})
* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})





