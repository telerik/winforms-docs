---
title: Overview
page_title: Overview | RadTitleBar
description: RadTitleBar control is used in forms and provides functionality for dragging, minimizing, maximizing and closing the form. This control is internally used by RadForm.
slug: winforms/forms-and-dialogs/radtitlebar
tags: radtitlebar
published: True
position: 0
previous_url: forms-and-dialogs-radtitlebar-overview
---

# RadTitleBar
  
__RadTitleBar__ control is used in forms and provides functionality for dragging, minimizing, maximizing and closing the form. This control is internally used by  __RadForm__.    

To include a title bar with help, maximize, minimize and close button functionality simply drag it from the toolbox on the desired form. This control is great addition to the [ShapedForm]({%slug winforms/forms-and-dialogs/shapedform%}).      	

To customize the help, minimize, maximize and close buttons, use the __RadTitleBar.TitleBarElement's HelpButton, MinimizeButton, MaximizeButton__ and __CloseButton__ objects. Each button is a __RadButtonElement__ type that include properties to control text, image, and layout.

![forms-and-dialogs-radtitlebar-overview 001](images/forms-and-dialogs-radtitlebar-overview001.png)

>note By default, the __HelpButton__ is not shown. It is necessary to set its __Visibility__ property to *ElementVisibility.Visible* in order to be displayed. 

# See Also

* [Structure]({%slug winforms/forms-and-dialogs/radtitlebar/structure%})	