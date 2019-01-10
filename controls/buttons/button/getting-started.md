---
title: Getting Started
page_title: Getting Started | RadButton
description: To add a RadButton to your form, drag a RadButton from the toolbox onto the surface of the form designer.
slug: winforms/buttons/button/getting-started
tags: button, getting-started
published: True
position: 4 
---

# Getting Started

You can add __RadButton__ either at design time or at run time:

## Design Time

1. To add a __RadButton__ to your form, drag a __RadButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio change the __Text__ property of __RadButton__.
3. Double click the button to generate the __Click__ event handler. Add the desired code to perform the required action.
4. Click `F5` to start the application.

## Run Time

To programmatically add a __RadButton__ to a form, create a new instance of a __RadButton__, and add it to the form __Controls__ collection. Subscribe to its __Click__ event in order to perform the required action, e.g. showing a message box:

#### Adding a RadButton at runtime 

{{source=..\SamplesCS\Buttons\Button.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\Button.vb region=creatingbutton}} 

````C#
RadButton myNewRadButton = new RadButton();
myNewRadButton.Text = "My New RadButton";
myNewRadButton.Width = 150;
myNewRadButton.Height = 50;
this.Controls.Add(myNewRadButton);
myNewRadButton.Click+=myNewRadButton_Click;

````
````VB.NET
Dim myNewRadButton As New RadButton()
myNewRadButton.Text = "My New RadButton"
myNewRadButton.Width = 150
myNewRadButton.Height = 50
Me.Controls.Add(myNewRadButton)
AddHandler myNewRadButton.Click, AddressOf myNewRadButton_Click

````

{{endregion}} 

{{source=..\SamplesCS\Buttons\Button.cs region=ButtonClick}} 
{{source=..\SamplesVB\Buttons\Button.vb region=ButtonClick}} 

````C#
private void myNewRadButton_Click(object sender, EventArgs e)
{
    RadMessageBox.Show("Clicked");
}

````
````VB.NET
Private Sub myNewRadButton_Click(sender As Object, e As EventArgs)
    RadMessageBox.Show("Clicked")
End Sub

````

{{endregion}} 

