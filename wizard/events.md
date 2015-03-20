---
title: Events
page_title: Events
description: Events
slug: wizard-events
tags: events
published: True
position: 3
---

# Events



## 

__RadWizard__ raises the following events:

* __ModeChanging__ - Fires before the mode of __RadWizard__ is changed. It is cancelable event.
		  	The arguments of the event provide the current and the next __WizardMode__.
		  

* __ModeChanged__ - Fires after the mode of __RadWizard__ is changed.
		  	The arguments of the event provide the previous and the current __WizardMode__.
		  

* __Next__ - Fires when the __Next__ command button is clicked. It is cancelable event.
		  

* __Previous__ - Fires when the __Back__ command button is clicked. It is cancelable event.
		  

* __SelectedPageChanging__ - Fires before the selected page of __RadWizard__ is changed. It is cancelable event.
		  	The arguments of the event provide the selected page of the control and the page to be selected.
		  

* __SelectedPageChanged__ - Fires after the selected page of __RadWizard__ is changed. 
		  	The arguments of the event provide the previous selected page and the selected page of the control.
		  

* __Finish__ - Fires when the __Finish__ command button is clicked.
		  

* __Cancel__ - Fires when the __Cancel__ command button is clicked.
		  

* __Help__ - Fires when the __Help__ command button is clicked.
		  

Below is an example of using the __Next__ event of __RadWizard__ to choose the page to be selected when the 
			user clicks the __Next__ command button. The example demonstrates how to cancel the transition from the second to the third page 
			and to select the first page of the control:
		

#### __[C#] Subscribe to the Next event__

{{region subscribeToTheEvent}}
	            this.radWizard1.Next += new WizardCancelEventHandler(radWizard1_Next);
	{{endregion}}



#### __[C#] Handle the Next event__

{{region nextEvent}}
	        private void radWizard1_Next(object sender, WizardCancelEventArgs e)
	        {
	            if (this.radWizard1.SelectedPage == this.radWizard1.Pages[1])
	            {
	                e.Cancel = true;
	                this.radWizard1.SelectedPage = this.radWizard1.Pages[0];
	            }
	        }
	{{endregion}}



#### __[VB.NET] Handle the Next event__

{{region nextEvent}}
	    Private Sub RadWizard1_Next(ByVal sender As Object, ByVal e As WizardCancelEventArgs) Handles RadWizard1.Next
	        If (Me.RadWizard1.SelectedPage Is Me.RadWizard1.Pages(1)) Then
	            e.Cancel = True
	            Me.RadWizard1.SelectedPage = Me.RadWizard1.Pages(0)
	        End If
	    End Sub
	{{endregion}}


