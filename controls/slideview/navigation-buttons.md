---
title: Navigation Buttons
page_title: Navigation Buttons - WinForms SlideView Control
description: Check our &quot;Navigation Buttons&quot; documentation article for the WinForms SlideView control.
slug: slideview-navigation-buttons
tags: slideview, buttons
published: True
position: 4 
---

# Navigation Buttons

 The navigation buttons allow you to navigate through the data. RadSlideView provides the ability to control their visibility, position, and style. Furthermore, you can also specify an auto-hide period, after which the buttons will be automatically hidden, as well as enable or disable infinite scrolling.

 ## Controlling the Visibility of the Buttons

 The visibility of the navigation buttons is controlled via the __ButtonVisibility__ property of RadSlideView. This property is of the type ButtonVisibility and it exposes the following options:

* __Collapsed__: This option will prevent the buttons from showing.

* __Visible__: With this option, the buttons will be visible.

* __VisibleOnMouseOver__: This option is the default one. With it, the buttons will be visible when the mouse is over the RadSlideView control.

* __HiddenWhenDisabled__: When this option is chosen, each button will be hidden when it is in disabled state.

>caption VisibleOnMouseOver

![WinForms SlideView VisibleOnMouseOver](images/slideview-navigation-buttons.gif)

## Controlling the Position of the Navigation Buttons

RadSlideView allows you to control the navigation buttons' position. They can be displayed either over the content or next to it. This behavior is controlled via the __ShowButtonsOverContent__ property. The default value is *true*, with which the buttons will be displayed over the content.

## Setting an Auto-Hide Interval for the Navigation Buttons

You can specify a time interval (in milliseconds), after which the navigation buttons will become hidden. This interval will begin after the mouse is out of the control or it stops moving when it's over it. To apply such a time interval, you can set the __AutoHideButtonsDelay__ property of RadSlideView. By default, this property will be 0 and the buttons will not become hidden.

#### Customize the Navigation Buttons


{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=NavigationButtons}} 
{{source=..\SamplesVB\SlideView\GettingStartedGallery.vb region=NavigationButtons}}

````C#

this.radSlideView1.ButtonsVisibility = ButtonsVisibility.VisibleOnMouseOver;
this.radSlideView1.ShowButtonsOverContent = false;
this.radSlideView1.AutoHideButtonsDelay = 1000;
      
````
````VB.NET

Me.radSlideView1.ButtonsVisibility = ButtonsVisibility.VisibleOnMouseOver
Me.radSlideView1.ShowButtonsOverContent = False
Me.radSlideView1.AutoHideButtonsDelay = 1000

```` 

{{endregion}}

![WinForms SlideView Customize Navigation Buttons](images/slideview-customize-navigation-buttons.gif)


## See Also

* [Structure]({%slug slideview-structure%})