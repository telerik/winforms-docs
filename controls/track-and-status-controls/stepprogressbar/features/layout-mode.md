---
title: Layout Mode
page_title: Layout - WinForms StepProgressBar Control
description: WinForms StepProgressBar Layout
slug: stepprogressbar-features-layout
tags: stepprogressbar, layout
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Layout Mode

The RadStepProgressBar control is arranged horizontally by default which means that the steps are ordered from left to right. Additionally, the control can be arranged vertically from top to bottom. The flow direction can also be reversed - right to left or bottom to top.

## Orientation

To change the orientation of the control, set the __Orientation__ property. The orientation can be __Horizontal__ or __Vertical__. By default the control is horizontally orientated.

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=VerticalStepProgressBar}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=VerticalStepProgressBar}}

````C#
private void CreateVerticalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.Orientation = Orientation.Vertical;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub CreateVerticalStepProgressBar()
    Dim stepProgressBar = New RadStepProgressBar()
    stepProgressBar.Dock = DockStyle.Fill
    stepProgressBar.Orientation = Orientation.Vertical
    Dim item1 = New StepProgressItem() With {
        .FirstHeader = "Step 1",
        .SecondHeader = "New",
        .SecondDescription = "Unassigned"
    }
    Dim item2 = New StepProgressItem() With {
        .FirstHeader = "Step 2",
        .SecondHeader = "InProgress",
        .SecondDescription = "Dev"
    }
    Dim item3 = New StepProgressItem() With {
        .FirstHeader = "Step 3",
        .SecondHeader = "ReadyForTest",
        .SecondDescription = "Dev"
    }
    Dim item4 = New StepProgressItem() With {
        .FirstHeader = "Step 4",
        .SecondHeader = "Testing",
        .SecondDescription = "QA",
        .Progress = 61
    }
    Dim item5 = New StepProgressItem() With {
        .FirstHeader = "Step 5",
        .SecondHeader = "Done",
        .SecondDescription = "N/A"
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

![WinForms RadStepProgressBar stepprogressbar-layout 001](images/stepprogressbar-features-layout001.png)

## Flow Direction

To change the horizontal flow direction, set the __RightToLeft__ property.

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=HorizontalStepProgressBarRightToLeft}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=HorizontalStepProgressBarRightToLeft}}

````C#
private void CreateHorizontalStepProgressBar_RightToLeft()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub CreateHorizontalStepProgressBar_RightToLeft()
        Dim stepProgressBar = New RadStepProgressBar()
        stepProgressBar.Dock = DockStyle.Fill
        stepProgressBar.RightToLeft = RightToLeft.Yes
        Dim item1 = New StepProgressItem() With {
            .FirstHeader = "Step 1",
            .SecondHeader = "New",
            .SecondDescription = "Unassigned"
        }
        Dim item2 = New StepProgressItem() With {
            .FirstHeader = "Step 2",
            .SecondHeader = "InProgress",
            .SecondDescription = "Dev"
        }
        Dim item3 = New StepProgressItem() With {
            .FirstHeader = "Step 3",
            .SecondHeader = "ReadyForTest",
            .SecondDescription = "Dev"
        }
        Dim item4 = New StepProgressItem() With {
            .FirstHeader = "Step 4",
            .SecondHeader = "Testing",
            .SecondDescription = "QA",
            .Progress = 61
        }
        Dim item5 = New StepProgressItem() With {
            .FirstHeader = "Step 5",
            .SecondHeader = "Done",
            .SecondDescription = "N/A"
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

![WinForms RadStepProgressBar stepprogressbar-layout 002](images/stepprogressbar-features-layout002.png)

The same property is applicable in vertical orientation. 

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=VerticalStepProgressBarRightToLeft}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=VerticalStepProgressBarRightToLeft}} 

````C#
private void CreateVerticalStepProgressBar_RightToLeft()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.Orientation = Orientation.Vertical;
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub CreateVerticalStepProgressBar_RightToLeft()
    Dim stepProgressBar = New RadStepProgressBar()
    stepProgressBar.Dock = DockStyle.Fill
    stepProgressBar.Orientation = Orientation.Vertical
    stepProgressBar.RightToLeft = RightToLeft.Yes
    Dim item1 = New StepProgressItem() With {
        .FirstHeader = "Step 1",
        .SecondHeader = "New",
        .SecondDescription = "Unassigned"
    }
    Dim item2 = New StepProgressItem() With {
        .FirstHeader = "Step 2",
        .SecondHeader = "InProgress",
        .SecondDescription = "Dev"
    }
    Dim item3 = New StepProgressItem() With {
        .FirstHeader = "Step 3",
        .SecondHeader = "ReadyForTest",
        .SecondDescription = "Dev"
    }
    Dim item4 = New StepProgressItem() With {
        .FirstHeader = "Step 4",
        .SecondHeader = "Testing",
        .SecondDescription = "QA",
        .Progress = 61
    }
    Dim item5 = New StepProgressItem() With {
        .FirstHeader = "Step 5",
        .SecondHeader = "Done",
        .SecondDescription = "N/A"
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

![WinForms RadStepProgressBar stepprogressbar-layout 003](images/stepprogressbar-features-layout003.png)

## LayoutMode

Using the __LayoutMode__ property of the RadStepProgressBar, you can control how the steps are arrange in the form. This property is an enumeration and expose the following options:

### Auto

In this mode the steps are arranged according to the specified spacing and connection lengths. In case there is not enough space, the spacing is decreased so that all steps remain visible. This is the __default value__ of the __LayoutMode__ property. 

![WinForms RadStepProgressBar stepprogressbar-layout 004](images/stepprogressbar-features-layout004.gif)

### Absolute

In this mode the steps are always arranged according to the specified spacing and connection lengths. In case the available space cannot fit all the steps, the navigation buttons become visible.

![WinForms RadStepProgressBar stepprogressbar-layout 005](images/stepprogressbar-features-layout005.gif)

### Stretched

In this mode the step spacing is adjusted dynamically to fit at an equal distance all steps in the available space.

![WinForms RadStepProgressBar stepprogressbar-layout 006](images/stepprogressbar-features-layout006.gif)

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
