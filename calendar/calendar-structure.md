---
title: Calendar Structure
page_title: Calendar Structure | UI for WinForms Documentation
description: Calendar Structure
slug: winforms/calendar/calendar-structure
tags: calendar,structure
published: True
position: 1
previous_url: calendar-overview-structure
---

# Calendar Structure

>caption The RadCalendar Elements
![calendar-calendar-structure 001](images/calendar-calendar-structure001.png)

__RadCalenadar__ consists of the following elements:

* __Title:__ Displays the selected date range and navigation buttons. The appearance of both [title and the navigation buttons]({%slug winforms/calendar/customizing-behavior/customizing-navigation%}) can be customized. 

* __Navigation Buttons__: Allow you to move to the previous/next month or jump X steps forward/backward as defined by the __FastNavigationStep__ property. 

* __Main Calendar Area:__ Renders the calendar views, whether single or multiple. This area includes the individual days, row/column selectors. 

* __Row/Column Headers__ - when the __ShowRowHeaders__ and/or __ShowColumnHeaders__ properties are set to *true*, you can select a whole row/column of dates by clicking on the respective day/week button. To automatically display the day names and week numbers you need to also set the __AllowColumnHeaderSelectors__ properties to *true*.
 
* __View Selector__: Allows the user to select all cells in the current month. If multiple months are being displayed at one time, there will be one view selector per month. The visibility and behavior of this element is controlled by the __ShowViewSelector__ and __AllowViewSelector__ properties.

* __StatusBar (Footer):__ This is the area below the Main Calendar Area. It is often used for visual customization or for displaying additional information about the selected item. 

* __Fast Navigation Popup:__ Displays a popup window with the months and years surrounding the selected date.

>caption The fast navigation popup
![calendar-calendar-structure 002](images/calendar-calendar-structure002.png)


