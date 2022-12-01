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

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=StepProgressMode_Linear}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=StepProgressMode_Linear}}

````C#
private void StepProgressMode_Linear()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 1",  };
    var item2 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 2" };
    var item3 = new StepProgressItem() { Progress = 80, FirstHeader = "Step 3" };
    var item4 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 4" };
    var item5 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 5" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);       
    stepProgressBar.Steps.Add(item4);       
    stepProgressBar.Steps.Add(item5);       
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub StepProgressMode_Linear()
	Dim stepProgressBar = New RadStepProgressBar()
	Dim item1 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 1"
	}
	Dim item2 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 2"
	}
	Dim item3 = New StepProgressItem() With {
		.Progress = 80,
		.FirstHeader = "Step 3"
	}
	Dim item4 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 4"
	}
	Dim item5 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 5"
	}
	stepProgressBar.Steps.Add(item1)
	stepProgressBar.Steps.Add(item2)
	stepProgressBar.Steps.Add(item3)
	stepProgressBar.Steps.Add(item4)
	stepProgressBar.Steps.Add(item5)
	Me.Controls.Add(stepProgressBar)
End Sub

````

{{endregion}}

![WinForms RadStepProgressBar stepprogressbar-progress-mode 001](images/stepprogressbar-features-progressmode001.png)

## Single

Setting the progress of a step affects the other steps. Setting the progress of a given step changes the progress of all other steps to 0. The following example demonstrates how the Progress of the fourth step is set to 50. This automatically reset the progress of all steps to 0. The last step which has a Progress set will be used as a current step.

> In __Single and Independent__ mode, the progress is not indicated inside the connection. 

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=StepProgressMode_Single}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=StepProgressMode_Single}}

````C#
private void StepProgressMode_Single()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.ProgressMode = StepProgressMode.Single;
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Step 1", };
    var item2 = new StepProgressItem() { Progress = 100, FirstHeader = "Step 2" };
    var item3 = new StepProgressItem() { Progress = 100, FirstHeader = "Step 3" };
    var item4 = new StepProgressItem() { Progress = 50, FirstHeader = "Step 4" };
    var item5 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 5" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub StepProgressMode_Single()
    Dim stepProgressBar = New RadStepProgressBar()
    stepProgressBar.ProgressMode = StepProgressMode.Single
    Dim item1 = New StepProgressItem() With {
        .Progress = 100,
        .FirstHeader = "Step 1"
    }
    Dim item2 = New StepProgressItem() With {
        .Progress = 100,
        .FirstHeader = "Step 2"
    }
    Dim item3 = New StepProgressItem() With {
        .Progress = 100,
        .FirstHeader = "Step 3"
    }
    Dim item4 = New StepProgressItem() With {
        .Progress = 50,
        .FirstHeader = "Step 4"
    }
    Dim item5 = New StepProgressItem() With {
        .Progress = 0,
        .FirstHeader = "Step 5"
    }
    stepProgressBar.Steps.Add(item1)
    stepProgressBar.Steps.Add(item2)
    stepProgressBar.Steps.Add(item3)
    stepProgressBar.Steps.Add(item4)
    stepProgressBar.Steps.Add(item5)
    Me.Controls.Add(stepProgressBar)
End Sub

````

{{endregion}}

![WinForms RadStepProgressBar stepprogressbar-progress-mode 001](images/stepprogressbar-features-progressmode002.png)

## Independent

Setting the progress of a step does not affect the other steps. The progress of all steps is set individually.

> In **Single** and **Independent** mode, the progress is not indicated inside the connection. 

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=StepProgressMode_Independent}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=StepProgressMode_Independent}}

````C#
private void StepProgressMode_Independent()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.ProgressMode = StepProgressMode.Independent;
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Step 1", };
    var item2 = new StepProgressItem() { Progress = 100, FirstHeader = "Step 2" };
    var item3 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 3" };
    var item4 = new StepProgressItem() { Progress = 50, FirstHeader = "Step 4" };
    var item5 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 5" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub StepProgressMode_Independent()
	Dim stepProgressBar = New RadStepProgressBar()
	stepProgressBar.ProgressMode = StepProgressMode.Independent
	Dim item1 = New StepProgressItem() With {
		.Progress = 100,
		.FirstHeader = "Step 1"
	}
	Dim item2 = New StepProgressItem() With {
		.Progress = 100,
		.FirstHeader = "Step 2"
	}
	Dim item3 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 3"
	}
	Dim item4 = New StepProgressItem() With {
		.Progress = 50,
		.FirstHeader = "Step 4"
	}
	Dim item5 = New StepProgressItem() With {
		.Progress = 0,
		.FirstHeader = "Step 5"
	}
	stepProgressBar.Steps.Add(item1)
	stepProgressBar.Steps.Add(item2)
	stepProgressBar.Steps.Add(item3)
	stepProgressBar.Steps.Add(item4)
	stepProgressBar.Steps.Add(item5)
	Me.Controls.Add(stepProgressBar)
End Sub

````

{{endregion}}

![WinForms RadStepProgressBar stepprogressbar-progress-mode 001](images/stepprogressbar-features-progressmode003.png)

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
