---
title: Handling RadToggleButton States
page_title: Handling RadToggleButton States | UI for WinForms Documentation
description: Handling RadToggleButton States
slug: winforms/buttons/togglebutton/handling-radtogglebutton-states
tags: handling,radtogglebutton,states
published: True
position: 1
previous_url: /help/winforms/buttons-togglebutton-handling-radtogglebutton-states.html
---

# Handling RadToggleButton States



## Properties

The __ToggleState__ property is responsible for getting or setting the state of RadToggleButton.
        

## Events

You can handle the __ToggleStateChanged__ event of __RadToggleButton__ to take action when the user toggles the button. The event handler is passed a __StateChangedEventArgs__ parameter that includes a __ToggleState__ member.
        

#### Handling the ToggleStateChanged event 

{{source=..\SamplesCS\Buttons\ToggleButton.cs region=handlingToggleStateChanged}} 
{{source=..\SamplesVB\Buttons\ToggleButton.vb region=handlingToggleStateChanged}} 

````C#
void radToggleButton1_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
    MessageBox.Show(args.ToggleState.ToString());
}

````
````VB.NET
Private Sub radToggleButton1_ToggleStateChanged(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.StateChangedEventArgs)
    MessageBox.Show(args.ToggleState.ToString())
End Sub

````

{{endregion}} 

You can also handle the __ToggleStateChanging__ event. This event provides an opportunity to cancel the toggle state change. The __StateChangingEventArgs__ passed as a parameter to the event handler have __NewValue__ and __OldValue__ __ToggleState__ members and a Boolean __Cancel__ member. __NewValue__ holds the value of __ToggleState__ that will be applied when the event is completed without being canceled. __OldValue__ holds the value of __ToggleState__ at the time the state change was initiated. __Cancel__ controls which value of __ToggleState__ is applied when the event completes. The default is __false__. Setting __Canceled__ to __true__ will prevent __ToggleStateChanged__ from firing and will leave the __ToggleState__ value as it was prior to the event.
        

The example below allows a __RadToggleButton__ to toggle only when a second __RadToggleButton__ is off. If the second button toggle state is __On__ and the __NewValue__ is __On__, then the toggle is canceled. The __ToggleStateChanged__ event only fires and changes the __Text__ property when __ToggleStateChangiing__ does not cancel.
       
#### Handling the ToggleStateChanging event 

{{source=..\SamplesCS\Buttons\ToggleButton.cs region=handlingToggleStateChanging}} 
{{source=..\SamplesVB\Buttons\ToggleButton.vb region=handlingToggleStateChanging}} 

````C#
private void radToggleButton2_ToggleStateChanging(object sender,
   Telerik.WinControls.UI.StateChangingEventArgs args)
{
    bool attemptingOn = args.NewValue ==
        Telerik.WinControls.Enumerations.ToggleState.On;
    args.Cancel = true;
}
private void radToggleButton2_ToggleStateChanged(object sender,
   Telerik.WinControls.UI.StateChangedEventArgs args)
{
    radToggleButton1.Text = args.ToggleState.ToString();
}

````
````VB.NET
Private Sub radToggleButton2_ToggleStateChanging(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.StateChangingEventArgs)
    args.Cancel = True
End Sub
Private Sub radToggleButton2_ToggleStateChanged(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.StateChangedEventArgs)
    radToggleButton1.Text = args.ToggleState.ToString()
End Sub

````

{{endregion}} 

>note Due to the specifics of the [simple data binding](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding(v=vs.110).aspx) we have introduced the __CheckChanging__ / __CheckChanged__ events together with the __CheckState__ property. These events and property provide the same functionality as the __ToggleStateChanged__ , __ToggleStateChanging__ and the __ToggleState__ property, but give you the ability to simple data bind the control.
>

