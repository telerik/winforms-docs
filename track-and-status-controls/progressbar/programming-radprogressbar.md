---
title: Programming RadProgressBar
page_title: Programming RadProgressBar
description: Programming RadProgressBar
slug: track-and-status-controls-progressbar-programming-radprogressbar
tags: programming,radprogressbar
published: True
position: 1
---

# Programming RadProgressBar



## 

You can customize the look of __RadProgressBar__through a rich set of properties:
        

* __Dash__ and __Hatch__ properties control the drawing style of the active portion of the progress bar. If __Dash__ is set to __False__ (whatever the __Hatch__ setting), the active portion of the progress bar will be drawn in a solid color set by the __BackColor__ property. If __Dash__ is set to __True__ and __Hatch__ is set to __False__, the active portion of the progress bar will be draw in a striped pattern. The stripes will fade from the __Separator1__ color to the __Separator2__ color. If __Dash__ is set to __True__ and __Hatch__ is set to __True__, the active portion of the progress bar will be drawn in a cross-hatched pattern. The cross hatches will fade from the __Separator1__ color to the __Separator2__ color.
            

* The __BackColor__ property sets the color of the background of the active portion of the progress bar.
            

* The __ForeColor__ property sets the color of the text that reports the completion percentage.
            

* The __Image__, __ImageAlignment__, __ImageKey__, __ImageIndex__, and __ImageList__ properties let you select an image to be displayed on the progress bar.
            

* The __Minimum__ and __Maximum__ properties set the allowed range of values for the __Value1__ and __Value2__ properties.
            

* The __ProgressOrientation__ property sets the direction that the progress bar moves. You can set this property to __Top__, __Left__, __Right__, or __Bottom__ to display progress starting at the top, left, right, or bottom of the control.
            

* The __SeparatorWidth__ property controls the width of the stripes or cross hatches in the active portion of the progress bar.
            

* The __StepWidth__ property controls the spacing between the stripes or cross hatches in the active portion of the progress bar.
            

* The __SweepAngle__ property sets the angle of the stripes or cross hatches in the active portion of the progress bar.
            

* The __Value1__ property sets the width of the active portion of the progress bar.
            

* The __Value2__ property sets the boundary between the two shades in the inactive portion of the progress bar.
            ![track-and-status-controls-progressbar-programming-radprogressbar 001](images/track-and-status-controls-progressbar-programming-radprogressbar001.png)![track-and-status-controls-progressbar-programming-radprogressbar 002](images/track-and-status-controls-progressbar-programming-radprogressbar002.png)
