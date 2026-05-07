---
title: Step Progress Mode
page_title: Step Progress Mode - WinForms StepProgressBar Control
description: WinForms StepProgressBar Step Progress Mode
slug: stepprogressbar-features-progressmode
tags: stepprogressbar, progressmode
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Step Progress Mode

The __RadStepProgressBar__ control allows you to change how its steps are related to each other. In the general case, setting the progress of a step will complete all prior steps. This behavior can be change throught the __StepProgressBar__ property of the control. This property is an enumeration and its values are listed below:

## Linear 

Setting the progress of a given step changes the progress of all items prior to the step to 100. The progress of the items after the given step changes to 0. The following example demonstrates how the Progress of the third step is set to 80. This automatically sets the progress of all prior steps to 100. This is the __default__ progress mode.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_linear-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_linear-vb' />



![WinForms RadStepProgressBar Linear](images/stepprogressbar-features-progressmode001.png)

## Single

Setting the progress of a step affects the other steps. Setting the progress of a given step changes the progress of all other steps to 0. The following example demonstrates how the Progress of the fourth step is set to 50. This automatically reset the progress of all steps to 0. The last step which has a Progress set will be used as a current step.

> In __Single and Independent__ mode, the progress is not indicated inside the connection. 

<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_single-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_single-vb' />



![WinForms RadStepProgressBar Single](images/stepprogressbar-features-progressmode002.png)

## Independent

Setting the progress of a step does not affect the other steps. The progress of all steps is set individually.

> In **Single** and **Independent** mode, the progress is not indicated inside the connection. 

<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_independent-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepprogressmode_independent-vb' />



![WinForms RadStepProgressBar Independent](images/stepprogressbar-features-progressmode003.png)

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
