---
title: Handling RadRadioButton States
page_title: Handling RadRadioButton States | UI for WinForms Documentation
description: Handling RadRadioButton States
slug: winforms/buttons/radiobutton/handling-radradiobutton-states
tags: handling,radradiobutton,states
published: True
position: 3
previous_url: /help/winforms/buttons-radiobutton-handling-radradiobutton-states.html
---

# Handling RadRadioButton States



## State Properties

The __ToggleState__ property is responsible for setting the state of RadRadioButton. 
        

## Events

You can handle the __ToggleStateChanged__ event of __RadRadioButton__ to take action when the user toggles the button. The event handler is passed a __StateChangedEventArgs__ parameter that includes a __ToggleState__ member.
      
#### Handling ToggleStateChanged event 

{{source=..\SamplesCS\Buttons\RadioButton.cs region=handlingToggleStateChangedWithArgs}} 
{{source=..\SamplesVB\Buttons\RadioButton.vb region=handlingToggleStateChangedWithArgs}} 

````C#
void radRadioButton2_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
    MessageBox.Show(args.ToggleState.ToString());
}

````
````VB.NET
Private Sub radRadioButton2_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
    MessageBox.Show(args.ToggleState.ToString())
End Sub

````

{{endregion}} 

You can also handle the __ToggleStateChanging__ event. This event provides an opportunity to cancel the toggle state change. The __StateChangingEventArgs__ passed as a parameter to the event handler have NewValue and OldValue ToggleState members and a Boolean Cancel member.  __NewValue__ holds the value of __ToggleState__ that will be applied when the event is completed without being canceled. __OldValue__ holds the value of __ToggleState__ at the time the state change was initiated. __Canceled__ controls which value of __ToggleState__ is applied when the event completes. The default is __false__. Setting __Cancel__ to __true__ will prevent __ToggleStateChanged__ from firing and will leave the __ToggleState__ value as it was prior to the event.  In the example below the StateChangedEvent does not fire.
       
#### Handling ToggleStateChanging event 

{{source=..\SamplesCS\Buttons\RadioButton.cs region=StateChanging}} 
{{source=..\SamplesVB\Buttons\RadioButton.vb region=StateChanging}} 

````C#
void radRadioButton3_ToggleStateChanging(object sender, StateChangingEventArgs args)
{
    args.Cancel = true;
}
void radRadioButton3_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
    this.radRadioButton3.Text = args.ToggleState.ToString();
}

````
````VB.NET
Private Sub radRadioButton3_ToggleStateChanging(ByVal sender As Object, ByVal args As StateChangingEventArgs)
    args.Cancel = True
End Sub
Private Sub radRadioButton3_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
    radRadioButton3.Text = args.ToggleState.ToString()
End Sub

````

{{endregion}} 




>note Due to the specifics of the [simple data binding](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding(v=vs.110).aspx) we have introduced the __CheckChanging__ / __CheckChanged__ events together with the __CheckState__ property. These events and property provide the same functionality as the __ToggleStateChanged__ , __ToggleStateChanging__ and the __ToggleState__ property, but give you the ability to simple data bind the control.
>

