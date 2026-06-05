---
title: Handling RadToggleButton States
page_title: Handling RadToggleButton States - UI for WinForms Documentation
description: Handling RadToggleButton States
slug: winforms/buttons/togglebutton/handling-radtogglebutton-states
tags: handling,radtogglebutton,states
published: True
position: 6
previous_url: buttons-togglebutton-handling-radtogglebutton-states
---

# Handling RadToggleButton States



## Properties

The __ToggleState__ property is responsible for getting or setting the state of __RadToggleButton__.
        

## Events

You can handle the __ToggleStateChanged__ event of __RadToggleButton__ to take action when the user toggles the button. The event handler passes a __StateChangedEventArgs__ parameter that includes a __ToggleState__ member.
        

#### Handling the ToggleStateChanged event 

<snippet id='buttons-togglebutton-handling-radtogglebutton-states-handlingtogglestatechanged-cs' />
<snippet id='buttons-togglebutton-handling-radtogglebutton-states-handlingtogglestatechanged-vb' />



You can also handle the __ToggleStateChanging__ event. This event provides an opportunity to cancel the toggle state change. The __StateChangingEventArgs__ passed as a parameter to the event handler have __NewValue__ and __OldValue__ __ToggleState__ members and a Boolean __Cancel__ member. __NewValue__ holds the value of __ToggleState__ that will be applied when the event is completed without being canceled. __OldValue__ holds the value of __ToggleState__ at the time the state change was initiated. __Cancel__ controls which value of __ToggleState__ is applied when the event completes. The default is *false*. Setting the __Canceled__ proeprty to *true* will prevent the __ToggleStateChanged__ from firing and will leave the __ToggleState__ value as it was prior to the event.
        
The example below allows a __RadToggleButton__ to toggle only when a second __RadToggleButton__ is off. If the second button toggle state is __On__ and the __NewValue__ is __On__, then the toggle is canceled. The __ToggleStateChanged__ event only fires and changes the __Text__ property when __ToggleStateChanging__ does not cancel.
       
#### Handling the ToggleStateChanging event 

<snippet id='buttons-togglebutton-handling-radtogglebutton-states-handlingtogglestatechanging-cs' />
<snippet id='buttons-togglebutton-handling-radtogglebutton-states-handlingtogglestatechanging-vb' />



>note Due to the specifics of the [simple data binding](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding(v=vs.110).aspx) we have introduced the __CheckChanging__ / __CheckChanged__ events together with the __CheckState__ property. These events and property provide the same functionality as the __ToggleStateChanged__, __ToggleStateChanging__ and the __ToggleState__ property, but give you the ability to simple data bind the control.
>

