---
title: Scheduler Ruler
page_title: Scheduler Ruler - RadScheduler
description: The ruler in RadScheduler is used to show the time intervals of the current view.
slug: winforms/scheduler/fundamentals/scheduler-ruler
tags: scheduler,ruler
published: True
position: 2
previous_url: scheduler-fundamentals-ruler
---

# Scheduler Ruler

The ruler in __RadScheduler__ is used to show the time intervals of the current view.

The ruler has various properties which can be used to modify its appearance. The examples below demonstrate the various behaviors of the ruler. The ruler can be accessed as follows:

<snippet id='scheduler-ruler-getruller-cs' />
<snippet id='scheduler-ruler-getruller-vb' />



>caption Figure 1: RadScheduler Ruler
![WinForms RadScheduler RadScheduler Ruler](images/scheduler-fundamentals-ruler001.png)

* __TimePointerStyle__ - Sets the style of the pointer which shows the current time. Can be *Arrow, Line or SimpleLine*.

<snippet id='scheduler-ruler-timepointerstyle-cs' />
<snippet id='scheduler-ruler-timepointerstyle-vb' />



>caption Figure 2: Time Pointer Style
![WinForms RadScheduler Time Pointer Style](images/scheduler-fundamentals-ruler002.png)

* __Start__ and __EndScale__ - Sets the time when the ruler starts and ends.

<snippet id='scheduler-ruler-startendscale-cs' />
<snippet id='scheduler-ruler-startendscale-vb' />



>caption Figure 3: Start and End Scales
![WinForms RadScheduler Start and End Scales](images/scheduler-fundamentals-ruler003.png)

* __RangeFactor__ - The range factor determines whether the units in the ruler will be devided in *FiveMinutes, HalfHour, Hour, QuarterHour, SixMinutes or TenMinutes*.

<snippet id='scheduler-ruler-rangefactor-cs' />
<snippet id='scheduler-ruler-rangefactor-vb' />



>caption Figure 4: Ruler Range
![WinForms RadScheduler Ruler Range](images/scheduler-fundamentals-ruler004.png)

* __CurrentTimePointerWidth__ and __CurrentTimePointerColor__ - Sets the size and the color of the pointer which shows the current time.

<snippet id='scheduler-ruler-currenttimepointerwidthandcolor-cs' />
<snippet id='scheduler-ruler-currenttimepointerwidthandcolor-vb' />



>caption Figure 5: Time Pointer Width 
![WinForms RadScheduler Time Pointer Width](images/scheduler-fundamentals-ruler005.png)

* __RulerFormatStrings__ and the __RulerTextFormatting__ event - They are used to format the text in the ruler. For example here is how to display the hours in a 12 hours format:

<snippet id='scheduler-ruler-formatstrings-cs' />
<snippet id='scheduler-ruler-formatstrings-vb' />



>caption Figure 6: Ruler Format String
![WinForms RadScheduler Ruler Format String](images/scheduler-fundamentals-ruler006.png)

The RulerTextFormatting event can be used to manually format the text. You can prepend a "0" in front of the text if it contains only one digit:

<snippet id='scheduler-ruler-rulerformattingsubscribe-cs' />
<snippet id='scheduler-ruler-rulerformattingsubscribe-vb' />



<snippet id='scheduler-ruler-rulerformattinghandler-cs' />
<snippet id='scheduler-ruler-rulerformattinghandler-vb' />



* __RulerWidth__ - Sets the width of the ruler.

<snippet id='scheduler-ruler-rulerwidth-cs' />
<snippet id='scheduler-ruler-rulerwidth-vb' />



>caption Figure 7: Ruler Width
![WinForms RadScheduler Ruler Width](images/scheduler-fundamentals-ruler007.png)

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
