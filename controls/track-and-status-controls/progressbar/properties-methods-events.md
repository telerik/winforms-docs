---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadProgressBar
description: RadProgressBar is designed to display progress information to the user during a long-running operation. 
slug: winforms/track-and-status-controls/progressbar/programming-radprogressbar
tags: programming,radprogressbar
published: True
position: 3
previous_url: track-and-status-controls-progressbar-programming-radprogressbar
---

# Properties

|Property|Description|
|----|----|
|**Text**|Gets or sets the text associated with this control.|
|**BackgroundImage**|Gets or sets the background image of the RadProgressBar.|
|**BackgroundImageLayout**|Gets or sets the layout of the background image of the RadProgressBar.|
|**ProgressBarElement**|Gets the instance of RadProgressBarElement wrapped by this control. RadProgressBarElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadProgressBar.|
|**Value1**|Gets or sets the value of the first progress line. There could be two progress lines in the progress bar.|
|**Value2**|Gets or sets the value of the second progress line. There could be two progress lines in the progress bar.|
|**Minimum**|Gets or sets the minimum value for the progress.|
|**Maximum**|Gets or sets the maximum value for the progress.|
|**Step**|Gets or sets a value indicating the amount to increment the current value with.|
|**StepWidth**|Gets or sets the StepWidth between different separators.|
|**Dash**|Indicates whether the progress bar style is dash. When style is dash the progress line is broken into segments with separators in between them.|
|**Hatch**|Indicates whether the progress bar style is hatch. When style is hatch the progress line is covered with a hatch. You will have to change the SweepAngle in order to see the style.|
|**IntegralDash**|When style is dash indicates if the progress indicators will progress on steps or smoothly.|
|**SeparatorColor1**|Gets or sets the first gradient color for separators|
|**SeparatorColor2**|Gets or sets the second gradient color for separators.|
|**SeparatorColor3**|Gets or sets the third gradient color for separators.|
|**SeparatorColor4**|Gets or sets the fourth gradient color for separators.|
|**SeparatorGradientAngle**|Gets or sets the angle of the separators gradient.|
|**SeparatorGradientPercentage1**|Gets or sets the first color stop in the separator gradient.|
|**SeparatorGradientPercentage2**|Gets or sets the second color stop in the separator gradient.|
|**SeparatorNumberOfColors**|Gets or sets the number of colors used in the separator gradient.|
|**SeparatorWidth**|Gets or sets the separators width in pixels.|
|**Image**|Gets or sets the progress bar indicator image.|
|**ImageLayout**|Gets or sets the progress bar indicator image layout.|
|**ImageIndex**|Gets or sets the image index of the progress bar indicator image.|
|**ImageKey**|Gets or sets the image key for the progress bar indicator image.|
|**ImageAlignment**|Gets or sets the alignment of the image of the progress line.|
|**TextOrientation**|Gets or sets the text orientation in the progress bar.|
|**TextAlignment**|Gets or sets the alignment of the text content on the drawing surface.|
|**ProgressOrientation**|Gets or sets the progress orientation: Bottom, Left, Right, Top.|
|**ShowProgressIndicators**|Indicates whether the progress bar style is hatch. When true, the style is Hatch. When both dash and hatch are true the style is hatch.| 
|**SweepAngle**|Gets or sets the angle at which the dash or hatch lines are tilted.|
|RadProgressBarElement.**IndicatorElement1**|Gets an instance of the UpperProgressIndicatorElement class that represents the progress indicator of the progress bar.|
|RadProgressBarElement.**IndicatorElement2**|Gets an instance of the ProgressIndicatorElement class that represents the progress bar indicator.|
|RadProgressBarElement.**SeparatorsElement**|Gets an instance of the SeparatorsElement class that represents the separators on the progress bar indicator.|
|RadProgressBarElement.**TextElement**|Gets an instance of the ProgressBarTextElement class that represents the text of the progress bar.|

# RadProgressBarElement's Methods

|Method|Description|
|----|----|
|**PerformStepValue1**|Advances the current position of the progress bar by the amount of the Step property.|
|**PerformStepBackValue1**|Reverses the advance of the current position of the second progress bar by the amount of the Step property.|
|**IncrementValue1**|Increments Value1 with the given argument value.|
|**DecrementValue1**|Decrements Value1 with the given argument value.|
|**PerformStepValue2**|Advances the current position of the first progress bar by the amount of the Step property.|
|**PerformStepBackValue2**|Advances the current position of the first progress bar by the amount of the Step property.|
|**IncrementValue2**|Increments Value2 with the given argument value.|
|**DecrementValue2**|Decrements Value2 with the given argument value.|

# Events

|Event|Description|
|----|----|
|**ValueChanged**|Fires when value is changed.|
|**StepChanged**|Fires when step is changed.|
|**StepWidthChanged**|Fires when step width is changed.|
|**SeparatorWidthChanged**|Fires when the separator width is changed.|
|**MinimumChanged**|Fires when the minimum property is changed.|
|**MaximumChanged**|Fires when the maximum property is changed.|
|**DashChanged**|Fires when the dash property is changed.|
|**HatchChanged**|Fires when the hatch property is changed.|
|**IntegralDashChanged**|Fires when the integral dash property is changed.|
|**TextOrientationChanged**|Fires when the text orientation is changed.|
|**TextAlignmentChanged**|Fires when the text alignment is changed.|
|**ProgressOrientationChanged**|Fires when the progress orientation is changed.|
|**ShowProgressIndicatorsChanged**|Fires when show progress indicators is changed.|
|**SeparatorColorChanged**|Fires when the separator color is changed.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radprogressbar.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radprogressbar.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radprogressbar.html#events)
        