---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: clock-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

The control has three important properties:

* __Value__ - used to get or set the value of the control
            

* __ShowSystemTime__ - indicated whether the control will display the system time
            

* __Offset__ - allows you to set time offset - useful to display different time zones
            

Now let's create a simple application. Add four RadClocks to your RadForm and on the top of each,
          place a label. Set the labels text to - Sofia, London, New York and Tokyo. In the code behind,
          set the ShowSystemTime property of the first clock (assuming that your system time show the time in Sofia).
          For the rest of the clocks, set their Offset properties to: -2, -6, +7:
        

#### __[C#] __

{{source=..\SamplesCS\Clock\ClockGettingStarted.cs region=gettingStarted}}
	            sofiaClock.ShowSystemTime = true;
	            londonClock.Offset = new TimeSpan(-2,0,0);
	            newYorkClock.Offset = new TimeSpan(-6,0,0);
	            tokyoClock.Offset = new TimeSpan(7, 0, 0);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Clock\ClockGettingStarted.vb region=gettingStarted}}
	        sofiaClock.ShowSystemTime = True
	        londonClock.Offset = New TimeSpan(-2, 0, 0)
	        newYorkClock.Offset = New TimeSpan(7, 0, 0)
	        tokyoClock.Offset = New TimeSpan(-6, 0, 0)
	{{endregion}}



Here is the result:![clock-getting-started 001](images/clock-getting-started001.png)
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>[Getting Started with RadTimePicker and RadClock for WinForms](http://tv.telerik.com/watch/winforms/getting-started-with-radtimepicker-for-winforms)

In this video, we are going to demonstrate the new RadTimePicker and RadClock controls as well as several properties you should be aware of.
              </td><td>

![clock-getting-started 002](images/clock-getting-started002.png)</td></tr></table>
