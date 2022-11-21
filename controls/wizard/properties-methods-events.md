---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - RadWizard
description: Events
slug: winforms/wizard/events
tags: events
published: True
position: 4
previous_url: wizard-events
---
# Properties, Methods and Events

You can find listed below all properties, methods and events related to **RadWizard**.

## Properties

|Property|Description|
|----|----|
|**WizardElement**|Gets the RadWizardElement which encapsulates the UI representation and functionality of the control.|
|**Mode**|Gets or sets the mode of the control.|
|**EnableAeroStyle**|Gets or sets a value indication wether the Aero style should apply when the control is in Wizard Aero mode.|
|**Pages**|Gets the pages collection.|
|**WelcomePage**|Gets or sets the welcome page.|
|**CompletionPage**|Gets or sets the completion page.|
|**SelectedPage**|Gets or sets the selected page.|
|**CommandArea**|Gets the command area element.|
|**CommandAreaHeight**|Gets or sets the height of the command area. Negative value makes the command area autosize.|
|**PageHeaderElement**|Gets the page header element.|
|**PageHeaderHeight**|Gets or sets the height of the page header. Negative value makes the page header autosize.|
|**WelcomeImageElement**|Gets the element containing the image of the welcome pages.|
|**CompletionImageElement**|Gets the element containing the image of the completion pages.|
|**WelcomeImage**|Gets or sets the image of the welcome pages.|
|**HideWelcomeImage**|Gets or sets a value indicating whether the image of the welcome pages should be visible.|
|**WelcomeImageLayout**|Gets or sets the layout of the welcome pages image.|
|**WelcomeImageBackgroundShape**|Gets or sets the background image shape of the welcome pages.|
|**CompletionImage**|Gets or sets the image of the completion pages.|
|**HideCompletionImage**|Gets or sets a value indicating whether the image of the completion pages should be visible.|
|**CompletionImageLayout**|Gets or sets the layout of the completion pages image.|
|**CompletionImageBackgroundShape**|Gets or sets the background image shape of the completion pages.|
|**PageTitleTextVisibility**|Gets or sets the visibility of the page header's title element.|
|**PageHeaderTextVisibility**|Gets or sets the visibility of the page header's header element.|
|**PageHeaderIcon**|Gets or sets the icon of the page header.|
|**PageHeaderIconAlignment**|Gets or sets the alignment of the page header's icon.|
|**BackButton**|Gets the command area's back button.|
|**NextButton**|Gets the command area's next button.|
|**CancelButton**|Gets the command area's cancel button.|
|**FinishButton**|Gets the command area's finish button.|
|**HelpButton**|Gets the command area's help button.|

## Methods

|Method|Description|
|----|----|
|**SelectNextPage**|Selects next wizard page.|
|**SelectPreviousPage**|Selects previous wizard page.|

## Events

|Event|Description|
|----|----|
|__ModeChanging__|Fires before the mode of __RadWizard__ is changed. It is cancelable event.	The arguments of the event provide the current and the next __WizardMode__.|
|__ModeChanged__|Fires after the mode of __RadWizard__ is changed. The arguments of the event provide the previous and the current __WizardMode__.|
|__Next__|Fires when the __Next__ command button is clicked. It is cancelable event.|
|__Previous__|Fires when the __Back__ command button is clicked. It is cancelable event.|
|__SelectedPageChanging__|Fires before the selected page of __RadWizard__ is changed. It is cancelable event. The arguments of the event provide the selected page of the control and the page to be selected.|
|__SelectedPageChanged__|Fires after the selected page of __RadWizard__ is changed. The arguments of the event provide the previous selected page and the selected page of the control.|
|__Finish__|Fires when the __Finish__ command button is clicked.|
|__Cancel__|Fires when the __Cancel__ command button is clicked.|
|__Help__|Fires when the __Help__ command button is clicked.|
		  	  
Below is an example of using the __Next__ event of __RadWizard__ to choose the page to be selected when the user clicks the __Next__ command button. The example demonstrates how to cancel the transition from the second to the third page and to select the first page of the control:
		
#### Subscribe to the Next event

{{source=..\SamplesCS\Wizard\Events.cs region=subscribeToTheEvent}} 
{{source=..\SamplesVB\Wizard\EventsForm.vb region=subscribeToTheEvent}}

````C#
this.radWizard1.Next += new WizardCancelEventHandler(radWizard1_Next);

````
````VB.NET
AddHandler radWizard1.Next, AddressOf radWizard1_Next

```` 
{{endregion}} 

#### Handle the Next event

	
{{source=..\SamplesCS\Wizard\Events.cs region=nextEvent}} 
{{source=..\SamplesVB\Wizard\EventsForm.vb region=nextEvent}}````C#
private void radWizard1_Next(object sender, WizardCancelEventArgs e)
{
    if (this.radWizard1.SelectedPage == this.radWizard1.Pages[1])
    {
        e.Cancel = true;
        this.radWizard1.SelectedPage = this.radWizard1.Pages[0];
    }
}

````
````VB.NET
Private Sub RadWizard1_Next(ByVal sender As Object, ByVal e As WizardCancelEventArgs)
    If (Me.RadWizard1.SelectedPage Is Me.RadWizard1.Pages(1)) Then
        e.Cancel = True
        Me.RadWizard1.SelectedPage = Me.RadWizard1.Pages(0)
    End If
End Sub

```` 
{{endregion}} 

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radwizard.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radwizard.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radwizard.html#events)
