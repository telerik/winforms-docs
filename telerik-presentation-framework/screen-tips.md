---
title: Screen Tips
page_title: Screen Tips | UI for WinForms Documentation
description: Screen Tips
slug: winforms/telerik-presentation-framework/screen-tips
tags: screen tips
published: True
position: 16
---

__Screen Tip__ is a UI feature in which a small window appears when the mouse cursor is hovered over a particular element. By default each control has a __ScreenTipNeeded__ event which is fired when the mouse hovers over the various elements inside the control. The screen tip extends the tooltips functionality because it can show many elements including images. 

>caption Figure 1: A ScreenTip in RadGridView. 

![tpf-screen-tip001](images/tpf-screen-tip001.png)

The __RadOffice2007ScreenTipElement__ is the screen tip that is currently available in the Telerik UI for WinForms suite.This screen tip contains 3 labels and a line which is used to separate the footer. Each label element can display an image as well. The following image shows the elements that are used inside this screen tip.

>caption Figure 2: RadOffice2007ScreenTipElement.

![tpf-screen-tip002](images/tpf-screen-tip002.png)


The following example demonstrates how you can show a tooltip when a RadListView item is hovered. Please note that the __Item__ property contains the currently hovered element. 

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=screenTips}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=screenTips}} 


{{endregion}} 


>caption Figure 3: Screen tip in RadListView

![tpf-screen-tip003](images/tpf-screen-tip003.png)

## Custom Tooltips