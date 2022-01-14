---
title: Custom Indicator 
page_title: Custom Indicator- WinForms StepProgressBar Control
description: WinForms StepProgressBar 
slug: stepprogressbar-customize-appearance-custom-indicator
tags: stepprogressbar
published: True
position: 1
CTAControlName: StepProgressBar
---

# Custom Indicator  

This article demonstrates how you can apply custom shapes to the RadStepProgressBar step indicators. To apply custom shape you can use the Shape property of the StepIndicator inside the RadStepProgressBar steps.

## Using Predifined Shapes

The following code snippet demonstrates how to apply one of the predefined [ElementShapes]({%slug winforms/telerik-presentation-framework/shapes%}) that the Telerik Presentation Framework offers.

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=ShapeIndicators}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=ShapeIndicators}} 

````C#
private void CreateShapeProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
    item1.StepIndicator.Shape = new DonutShape();
    item1.StepIndicator.Text = "";
    item2.StepIndicator.Shape = new EllipseShape();
    item3.StepIndicator.Shape = new DiamondShape();
    item4.StepIndicator.Shape = new HeartShape();
    item5.StepIndicator.Shape = new StarShape();
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub CreateShapeProgressBar()
    Dim stepProgressBar = New RadStepProgressBar()
    stepProgressBar.Dock = DockStyle.Fill
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
    item1.StepIndicator.Shape = New DonutShape()
    item1.StepIndicator.Text = ""
    item2.StepIndicator.Shape = New EllipseShape()
    item3.StepIndicator.Shape = New DiamondShape()
    item4.StepIndicator.Shape = New HeartShape()
    item5.StepIndicator.Shape = New StarShape()
    stepProgressBar.Steps.Add(item1)
    stepProgressBar.Steps.Add(item2)
    stepProgressBar.Steps.Add(item3)
    stepProgressBar.Steps.Add(item4)
    stepProgressBar.Steps.Add(item5)
    Me.Controls.Add(stepProgressBar)
End Sub

````

{{endregion}}

![stepprogressbar-progress-mode 001](images/stepprogressbar-appearance-customindicator001.png)

## Using ShapeEditor

In the following code snippet, we are changing the default look of all shapes with manually generated shapes. Using the __IsFirst__ and __IsLast__ properties of the __StepProgressItem__, we can apply different shapes from the rest steps for the first and last indicators.

> The custom shape in the following example is generated using the [ShapeEditor]({%slug winforms/tools/shapeeditor%}) designer.

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=CustomIndicator}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=CustomIndicator}} 

````C#
private void CreateCustomIndicator()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
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
    SetFirstLastCustomShape(stepProgressBar);
    this.Controls.Add(stepProgressBar);
}

private void SetFirstLastCustomShape(RadStepProgressBar radStepProgressBar)
{
    foreach (StepProgressItem item in radStepProgressBar.Steps)
    {
        string shapeAsString = "20,20,200,100:20,20,False,0,0,0,0,0:200,20,False,0,0,0,0,0:220,70,False,0,0,0,0,0:200,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:40,70,False,0,0,0,0,0:";
        if (item.IsFirst)
        {
            shapeAsString = "20,20,200,100:20,20,False,0,0,0,0,0:200,20,False,0,0,0,0,0:220,70,False,0,0,0,0,0:200,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:";
        }
        else if (item.IsLast)
        {
            shapeAsString = "20,20,200,100:20,20,False,0,0,0,0,0:180,20,True,230,20,230,120,0:180,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:40,70,False,0,0,0,0,0:";
        }
        item.StepIndicator.Shape = new CustomShape() { AsString = shapeAsString };
        radStepProgressBar.StepProgressBarElement.IndicatorSize = new Size(60, 30);
        radStepProgressBar.StepProgressBarElement.StepSpacing = 22;
        radStepProgressBar.StepProgressBarElement.HideConnections = true;
    }
}

````
````VB.NET
Private Sub CreateHorizontalStepProgressBar()
	Dim stepProgressBar = New RadStepProgressBar()
	stepProgressBar.Dock = DockStyle.Fill
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
	SetFirstLastCustomShape(stepProgressBar)
	Me.Controls.Add(stepProgressBar)
End Sub

Private Sub SetFirstLastCustomShape(ByVal radStepProgressBar As RadStepProgressBar)
	For Each item As StepProgressItem In radStepProgressBar.Steps
		Dim shapeAsString As String = "20,20,200,100:20,20,False,0,0,0,0,0:200,20,False,0,0,0,0,0:220,70,False,0,0,0,0,0:200,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:40,70,False,0,0,0,0,0:"

		If item.IsFirst Then
			shapeAsString = "20,20,200,100:20,20,False,0,0,0,0,0:200,20,False,0,0,0,0,0:220,70,False,0,0,0,0,0:200,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:"
		ElseIf item.IsLast Then
			shapeAsString = "20,20,200,100:20,20,False,0,0,0,0,0:180,20,True,230,20,230,120,0:180,120,False,0,0,0,0,0:20,120,False,0,0,0,0,0:40,70,False,0,0,0,0,0:"
		End If

		item.StepIndicator.Shape = New CustomShape() With {
			.AsString = shapeAsString
		}
		radStepProgressBar.StepProgressBarElement.IndicatorSize = New Size(60, 30)
		radStepProgressBar.StepProgressBarElement.StepSpacing = 22
		radStepProgressBar.StepProgressBarElement.HideConnections = True
	Next
End Sub

````

{{endregion}}

![stepprogressbar-progress-mode 001](images/stepprogressbar-appearance-customindicator002.png)

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
