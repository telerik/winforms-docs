---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms StepProgressBar Control
description: Get familiar with the public API that WinForms StepProgressBar offers.   
slug: stepprogressbar-properties-methods-events
tags: stepprogressbar
published: True
position: 4 
CTAControlName: StepProgressBar
---

# Properties, Methods and Events for RadStepProgressBar

## Properties  

|Property|Description|
|----|----|
|**StepProgressBarElement**|Gets the RadStepProgressBarElement that represents the main element of the control.|
|**Steps**|Gets a collection of StepProgressItem objects that represents the different steps of the progress bar.|
|**Current**|Gets the current step. That is the step which has its progress last updated or it is last completed or cancelled.|
|**IndicatorSize**|Gets or sets the size of the step indicators.|
|**StepSpacing**|Gets or sets the spacing between the steps.|
|**ConnectionThickness**|Gets or sets the thickness of the connections.|
|**Orientation**|Gets or sets the orientation of the control.|
|**HideConnections**|Gets or sets whether the connection elements will be hidden.|
|**ProgressMode**|Determines how the steps are related with regard to their progress.|
|**EnableItemInProgressVisualState**|Determines whether steps which are in progress (between 0 and 100) are visually indicated.|
|**LayoutMode**|Determines how the step items are measured and arranged in the available space.|
|**NavigationStep**|Determines the scroll step of the navigation buttons when they are visible in the __Absolute__ layout mode.|

## RadStepProgressBarElement's Properties

|Property|Description|
|----|----|
|**ItemsContainer**|The panel element holding the visual step items.|
|**PreviousButton**|Gets the previous button of the control.|
|**NextButton**|Gets the next button of the control.|

## StepProgressItem's Properties

|Property|Description|
|----|----|
|**Connection**|Gets the connection element.|
|**StepIndicator**|Gets this indicator element.|
|**FirstContentElement**|Gets the first content element.|
|**SecondContentElement**|Gets the second content element.|
|**IndicatorSize**|Gets or sets the step size. If you use this property to set the step size, the property will unbind from the IndicatorSize property. In order to bind it again, you need to reset the property, using __ResetIndicatorSize()__ method.|
|**ConnectionLength**|Gets or sets the length of the connection. If you use this property to set the step spacing, the property will unbind from the StepSpacing property. In order to bind it again, you need to reset the property, using ResetConnectionLength method.|
|**ConnectionThickness**|Gets or sets the thickness of the connection. If you use this property to set the step spacing, the property will unbind from the ConnectionThickness property. In order to bind it again, you need to reset the property, using ResetConnectionThickness method.|
|**Orientation**| Gets or sets the orientation of the step item. If you use this property to set the step spacing, the property will unbind from the Orientation property. In order to bind it again, you need to reset the property, using ResetOrientation method.|
|**IsError**|Gets or sets whether the item is in error state. If yes, the progress will change to 0.|
|**Progress**|Gets or sets the progress of the step. Setting the progress of an item may affect the progress of the other items. This behavior is controlled by the StepProgressMode enum set on the element's ProgressMode property.|
|**ProgressStatus**|Gets the prgress status.|
|**EnableItemInProgressVisualState**|Determines whether there is a separate visual state of the step when its progress is between 0 and 100.|
|**Completed**|Gets or sets whether the step is completed. Setting this property also changes the step's Progress property. If the property is set to false, the step's progress will change to 0.|
|**FirstHeader**|Gets or sets the header of the first content element.|
|**FirstDescription**|Gets or sets the description of the first content element.|
|**SecondHeader**|Gets or sets the header of the second content element.|
|**SecondDescription**|Gets or sets the description of the second content element.|
|**IsFirst**|Determines if the step is first.|
|**IsLast**|Determines if the step is last.|
|**Previous**|Gets the previous step.|
|**Next**|Gets the next step.|

## Methods

|Method|Description|
|----|----|
|**MovePrevious**|Tries to move the current to the previous available step. In case there is no current step or the current step is first inside the Steps collection, the position will not change.|
|**MoveNext**|Tries to move the Current to the next available position. In case there is no current, the next step will be the first item in the Steps collection. If the current step is at the end of the Steps collection, the position will not change.|
|**Reset**|Sets the current step to null.|
|**CompleteNext**|If the current step is not completed sets its progress 100. Otherwise tries to complete the next step if there is such.|
|**CompletePrevious**|Sets the progress of the current step to 0 and completes the previous step if there is such.|
|**CompleteAll**|Completes all steps by setting their progress to 100.|
|**CancelAll**|Sets the progress of all steps to 0.|
|**CompleteStep**|Completes the step by setting its progress to 100.|
|**CancelStep**|Sets the progress of the step to 0.|
|**ResetIndicatorSize**|Resets the **IndicatorSize** property to the default value.|
|**ResetStepSpacing**|Resets the **StepSpacing** property to the default value.|
|**ResetConnectionThickness**|Resets the **ConnectionThickness** property to the default value.|
|**ResetOrientation**|Resets the **Orientation** property to the default value.|

## Events

|Event|Description|
|----|----|
|**StepProgressChanging**|Fires before updating a StepProgressItem's Progress.|
|**StepProgressChanged**|Fires when a StepProgressItem's Progress has been updated.|
|**CurrentChanged**|Fires after the **Current** property changes.

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%})
 
        
