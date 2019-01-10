---
title: Adding Items
page_title: Adding Items | RadStatusBar
description: RadStatusStrip provides a status area that can be composed of any number of RadElement types - buttons, repeat buttons, image buttons, labels, panels, progress bars and separators.
slug: winforms/forms-and-dialogs/statusstrip/adding-items
tags: working,with,radstatusstrip,items
published: True
position: 4
previous_url: forms-and-dialogs-statusstrip-working-with-radstatusstrip-items, winforms/forms-and-dialogs/statusstrip/working-with-radstatusstrip-items
---

This article demonstrates what items can be added to __RadStatusStrip__ either at design time or at run time. 
 
## Item Element Types

The following element types can be added to RadStatusStrip.__Items__ collection:

* __RadLabelElement__
* __CommandBarSeparator__
* __RadButtonElement__
* __RadCheckBoxElement__
* __RadImageButtonElement__
* __RadProgressBarElement__
* __RadRadioButtonElement__
* __RadRepeatButtonElement__
* __RadSplitButtonElement__
* __RadStatusStripPanelElement__
* __RadToggleButtonElement__
* __RadTrackBarElement__
* __RadWaitingBarElement__

## Adding Items At Design-Time

There are several alternatives for adding and editing the RadStatusStrip.__Items__ collection in the designer:

* Click on the *Type here* label and edit directly. When you're done, click `Enter` to save your changes. Click `Esc` to abandon the changes.

* Click the  down arrow in the *Type here* label and select the desired element to add.

>caption Figure 1: Add items at design time

![forms-and-dialogs-statusstrip-working-with-radstatusstrip-items 001](images/forms-and-dialogs-statusstrip-working-with-radstatusstrip-items001.png)

* From the __Properties__ Editor select the __Items__ property ellipses to open the __RadItem Collection Editor__.

>caption Figure 2: RadItem Collection Editor

![forms-and-dialogs-statusstrip-working-with-radstatusstrip-items 003](images/forms-and-dialogs-statusstrip-working-with-radstatusstrip-items003.png)

## Adding Items At Run-Time

Add items at run time by creating __RadElement__ instances and adding them to the RadStatusStrip.__Items__ collection. The example below demonstrates creating and adding __RadLabelElement__, __RadButtonElement__, __RadRepeatButtonElement__, __RadToolBarSeparatorElement__ and __RadProgressBarElement__.

>caption Figure 3: Adding items at run time

![forms-and-dialogs-statusstrip-working-with-radstatusstrip-items 002](images/forms-and-dialogs-statusstrip-working-with-radstatusstrip-items002.png)

#### Adding elements to RadStatusStrip 

{{source=..\SamplesCS\Forms and Dialogs\StatusStrip1.cs region=addingElementsToRadStatusStrip}} 
{{source=..\SamplesVB\Forms and Dialogs\StatusStrip1.vb region=addingElementsToRadStatusStrip}} 

````C#
private void StatusStrip1_Load(object sender, EventArgs e)
{
    RadLabelElement labelElement = new RadLabelElement();
    labelElement.Text = "My LabelElement";
    RadButtonElement buttonElement = new RadButtonElement();
    buttonElement.Text = "My ButtonElement";
    buttonElement.Click += new EventHandler(buttonElement_Click);
    RadRepeatButtonElement repeatButtonElement = new RadRepeatButtonElement();
    repeatButtonElement.Text = "My Repeat button";
    repeatButtonElement.Click += new EventHandler(repeatButtonElement_Click);
    CommandBarSeparator separator = new CommandBarSeparator();
    RadProgressBarElement progressBarElement = new RadProgressBarElement();
    progressBarElement.Text = "My Progress Bar";
    radStatusStrip1.Items.AddRange(new RadItem[] {labelElement, buttonElement, repeatButtonElement, separator, progressBarElement}); 
}
void repeatButtonElement_Click(object sender, EventArgs e)
{
    (radStatusStrip1.Items[0] as RadLabelElement).Text = "Clicked repeat button on " + DateTime.Now.ToLongTimeString();
}
void buttonElement_Click(object sender, EventArgs e)
{
    MessageBox.Show("Clicked on ButtonElement");
}

````
````VB.NET
Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    Dim labelElement As New RadLabelElement()
    labelElement.Text = "My LabelElement"
    Dim buttonElement As New RadButtonElement()
    buttonElement.Text = "My ButtonElement"
    AddHandler buttonElement.Click, AddressOf buttonElement_Click
    Dim repeatButtonElement As New RadRepeatButtonElement()
    repeatButtonElement.Text = "My Repeat button"
    AddHandler repeatButtonElement.Click, AddressOf repeatButtonElement_Click
    Dim separator As New CommandBarSeparator()
    Dim progressBarElement As New RadProgressBarElement()
    progressBarElement.Text = "My Progress Bar"
    RadStatusStrip1.Items.AddRange(New RadItem() {labelElement, buttonElement, repeatButtonElement, separator, progressBarElement})
End Sub
Sub repeatButtonElement_Click(ByVal sender As Object, ByVal e As EventArgs)
    TryCast(RadStatusStrip1.Items(0), RadLabelElement).Text = "Clicked repeat button on " + DateTime.Now.ToLongTimeString()
End Sub
Sub buttonElement_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("Clicked on ButtonElement")
End Sub

````

{{endregion}} 

# See Also

* [Properties and Events]({%slug winforms/forms-and-dialogs/statusstrip/properties-events%})	
* [Getting Started]({%slug winforms/forms-and-dialogs/statusstrip/gettingstarted%})	


