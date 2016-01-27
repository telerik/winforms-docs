---
title: Control Element Structure
page_title: Control Element Structure | UI for WinForms Documentation
description: Control Element Structure
slug: winforms/track-and-status-controls/progressbar/control-element-structure
tags: control,element,structure
published: True
position: 1
---

# Control Element Structure

The image below shows the Control Element Structure of RadProgressBar as displayed by __Visual Style Builder__:

![track-and-status-controls-progressbar-control-element-structure 001](images/track-and-status-controls-progressbar-control-element-structure001.png)

The __RadProgressBarElement__ represents the entire __RadProgressBar__ control. Any settings you make at this level will be inherited by all elements further down in the tree.

* The __FillPrimitive__ and __BorderPrimitive__ children of __RadProgressBarElement__ set overall background and border properties that are inherited by the other elements.

* The __ProgressBarPrimitive__ element handles formatting for the active portion of the progress bar. It includes an __ImagePrimitive__ to draw any image assigned to the progress bar.
        

* The __TextPrimitive__ draws the text on the progress bar.
            
