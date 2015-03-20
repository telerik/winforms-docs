---
title: RadRibbonBar Control Element Structure
page_title: RadRibbonBar Control Element Structure
description: RadRibbonBar Control Element Structure
slug: ribbonbar-styling-radribbonbar-radribbonbar-control-element-structure
tags: radribbonbar,control,element,structure
published: True
position: 0
---

# RadRibbonBar Control Element Structure



## 

This image shows the __RadRibbonBar__Control Element Structure as displayed in __Visual Style Builder__:

![ribbonbar-styling-radribbonbar-radribbonbar-control-element-structure 001](images/ribbonbar-styling-radribbonbar-radribbonbar-control-element-structure001.png)

RadRibbonBar is a complex control. In order to customize the styles that determine the display of this control, you need to know its structure. Here is a brief explanation of some of the elements in the tree:

* __RadRibbonBarElement__ represents the entire RadRibbonBar. Any setting at this level are inherited by the elements down in the tree. 


* The __RadQuickAccessToolbar__represents the Quick Access Toolbar and any settings made to this element and its child nodes reflect on the visual appearance of the element. 

* __RadRibbonBarCaption__contains the minimize, maximize and close buttons.

* __RadItem__contains the RadTabStripElement used in RadRibbonBar.

* __RadApplicationMenuButtonElement__ is the button element of the application drop-down menu.

* The __RadMDIControlsItem__represents the system buttons displayed when a MDI child is maximized in a Form which contains a __RadRibbonBar__control.

* The __RibbonBarCaptionFillPrimitive__represents the background fill of the RibbonBar's caption (title bar).

* The __RadImageButtonElement__node represents the Help button which may be shown next to the MDI System Buttons



When you open the __RadRibbonBar__control in the Visual Style Builder, you will see this element hierarchy in the Tree View on the left and will be able to style the separate elements according to your preferences and store the styles in a XML theme.
