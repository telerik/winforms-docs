---
title: Tooltips
page_title: Tooltips - WinForms TreeMap Control
description: WinForms TreeMap shows tooltips for its data items showing the associated value.  
slug: winforms-treemap-tooltips
tags: treemap, tooltips
published: True
position: 2
---

# Tooltips

RadTreeMap shows tooltips/screentips out of the box. The **ToolTipDisplayMode** property controls what type to be shown. The available options are:

* **None** - Does not display tool or screen tips.

* **ToolTip** - Displays a tool tip when an item or a group is hovered.

* **ScreenTip** - Displays a screen tip when an item or a group is hovered.

By default, ToolTipDisplayMode.**ScreenTip** is used:

![WinForms RadTreeMap Tooltips](images/winforms-treemap-tooltips001.png)

## Events

### ScreenTipShowing

When the **ToolTipDisplayMode** property is set to **ScreenTip**, the **ScreenTipShowing** event is expected to be fired just before showing the screentip. This event can be canceled if the screentip shouldn't be shown in certain conditions. The **TreeMapScreenTipEventArgs** gives access to the following arguments:

* **Item** - Gets the data item or group. 

* **Delay** - Gets or sets the ScreenTip delay.

* **Location** - Gets or sets the ScreenTip location. 

* **FooterText** - Gets or sets the ScreenTip footer. 

* **Text** - Gets or sets the ScreenTip content. By default, it is the data item's value. 

* **CaptionText** - Gets or sets the ScreenTip caption. 

* **ScreenTip** - Gets the [RadOffice2007ScreenTipElement]({%slug winforms/telerik-presentation-framework/screen-tips%}).

#### Customizing Screentips

<snippet id='treemap-treemapgettingstarted-screentips-cs' />
<snippet id='treemap-treemapgettingstarted-screentips-vb' />



![WinForms RadTreeMap Customizing Screentips](images/winforms-treemap-tooltips002.png)

### ToolTipShowing

When the **ToolTipDisplayMode** property is set to **ToolTip**, the **ToolTipShowing** event is expected to be fired just before showing the RadToolTip. This event can be canceled if the tooltip shouldn't be shown in certain conditions. 

![WinForms RadTreeMap ToolTipShowing](images/winforms-treemap-tooltips003.png)

The **TreeMapToolTipEventArgs** gives access to the following argumens:

* **ToolTip** - Gets the [RadToolTip]({%slug winforms/telerik-presentation-framework/radtooltip%}).

* **Text** - Gets or sets the ToolTip text. 

* **Duration** - Gets or sets the ToolTip duration. 

* **Location** - Gets or sets the ToolTip location. 

* **Item** - Gets the data item or group. 
 
<snippet id='treemap-treemapgettingstarted-tooltips-cs' />
<snippet id='treemap-treemapgettingstarted-tooltips-vb' />



![WinForms RadTreeMap TreeMapToolTipEventArgs](images/winforms-treemap-tooltips004.png)

 
# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Colorizers]({%slug treemap-colorizers%})

