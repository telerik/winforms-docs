---
title: Handling RadCheckBox States
page_title: Handling RadCheckBox States | UI for WinForms Documentation
description: Handling RadCheckBox States
slug: winforms/buttons/checkbox/handling-radcheckbox-states
tags: handling,radcheckbox,states
published: True
position: 1
previous_url: /help/winforms/buttons-checkbox-handling-radcheckbox-states.html
---

# Handling RadCheckBox States



## State Properties

The property which controls the state of RadCheckBox is called __ToggleState__. It is an enumeration and can be one of the following values: __On__, __Off__, or __Indeterminate__. 
        

## Events

You can handle __ToggleStateChanged__ event of __RadCheckBox__ to take action when the user toggles the button. To the event handler is passed a __StateChangedEventArgs__ parameter that includes a ToggleState member.

You can also handle __ToggleStateChanging__ event. This event provides an opportunity to the toggle state change. The __StateChangingEventArgs__ passed as a parameter to the event handler have a __NewValue__ and __OldValue__ ToggleState members and a boolean __Cancel__ member. __NewValue__ holds the value of the __ToggleState__ that will be applied when the event is completed without being canceled. __OldValue__ holds the value of __ToggleState__ at the time the state change was initiated. __Canceled__ controls which value of __ToggleState__ is applied when the event completes. The default value is __false__ . Setting __Cancel__ to __true__ will prevent __ToggleStateChanged__ from firing and will leave the __ToggleState__ value as it was prior to the event. In the example below the __ToggleStateChanged__ event does not fire.
        
{{source=..\SamplesCS\Buttons\CheckBox.cs region=handlingToggleStateChanged}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=handlingToggleStateChanged}} 
````C#
void radCheckBox1_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
    MessageBox.Show(args.ToggleState.ToString());
}

````
````VB.NET
Private Sub RadCheckBox1_ToggleStateChanged(ByVal sender As System.Object, ByVal args As Telerik.WinControls.UI.StateChangedEventArgs)
    MessageBox.Show(args.ToggleState.ToString())
End Sub

````

{{endregion}} 


>note Due to the specifics of the [simple data binding](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding(v=vs.110).aspx) we have introduced the __CheckChanging__ / __CheckChanged__ events together with the __CheckState__ property. These events and property provide the same functionality as the __ToggleStateChanged__ , __ToggleStateChanging__ and the __ToggleState__ property, but give you the ability to simple data bind the control.
>

