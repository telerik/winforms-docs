---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/buttons/radiobutton/getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



## 

The following tutorial demonstrates creating two groups of radio buttons that act independently of one another. Choices are reflected in a label as they are selected.

![buttons-radiobutton-getting-started 001](images/buttons-radiobutton-getting-started001.png)

1. Drop two __RadGroupBoxes__ on the form.

1. Drop three __RadRadioButtons__ on the first groupbox. Set their __Text__ properties to "Small", "Medium" and "Large".

1. Drop three __RadRadioButtons__ on the second groupbox. Set their Text properties to "Latte", "Mocha", and "Hot Chocolate".

1. Drop a __RadLabel__ on the form. Set the name of the RadLabel to "lblStatus".

1. Hold down the Shift key and select all six RadRadioButtons with the mouse.

1. Click the __Events__ tab of the Properties Window.

1. Double click the __ToggleStateChanged__ event to create an event handler. Replace the code with the following:
          	
__Handling the ToggleStateChanged Event__



{{source=..\SamplesCS\Buttons\RadioButton.cs region=handlingToggleStateChanged}} 
{{source=..\SamplesVB\Buttons\RadioButton.vb region=handlingToggleStateChanged}} 

````C#
void radRadioButton1_ToggleStateChanged(object sender, StateChangedEventArgs args)
{
  lblStatus.Text = (sender as RadRadioButton).Text + " is selected";
}

````
````VB.NET
Private Sub radRadioButton1_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
    lblStatus.Text = (TryCast(sender, RadRadioButton)).Text + " is selected"
End Sub

````

{{endregion}} 




1. Press __F5__ to run the application. Notice that selections made on radio buttons in the panel are independent of the radio button choices on the form.RadRadioButton determines the radio groups by the control parent. All RadRadioButtons sharing the same parent e.g. RadGroupBox, RadPanel or a Form will be part of one group.
