---
title: Animation
page_title: Animation - WinForms SlideView Control
description: Check our &quot;Animations&quot; documentation article for the WinForms SlideView control.
slug: slideview-animation
tags: slideview, animation
published: True
position: 3 
---

# Animation

 __RadSlideView__ offers built-in support for animations that are enabled out-of-the-box. Setting the __AllowAnimation__ property allows you to turn on/off the animation functionality.

The public API allows customizing the animation type, frames, intervals, etc. The relevant properties are listed below:

* __AnimationInterval__: Gets or sets the animation interval. Default value = 10.

* __AnimationFrames__: Gets or sets the animation frames. Default value = 60.

* __AnimationType__: Gets or sets the type of the animation that is executed between the slides. Default value = AnimationType.Slide. Other options are: *Fade*, *SlideOver*, *None*.

* __AnimationEasingType__: Gets or sets the animation easing type. Default value = RadEasingType.InOutCubic.

The __AnimationStarted__ and __AnimationFinished__ events occur when the animation is started and finished respectively. 

#### Customize the Default Animation

{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=CustomizeAnimation}} 
{{source=..\SamplesVB\SlideView\GettingStartedGallery.vb region=CustomizeAnimation}}

````C#

this.radSlideView1.AllowAnimation = true;
this.radSlideView1.AnimationInterval = 30;
this.radSlideView1.AnimationFrames = 30;
this.radSlideView1.AnimationType = AnimationType.Fade;
this.radSlideView1.AnimationEasingType = Telerik.WinControls.RadEasingType.InExponential;
      
````
````VB.NET

Me.radSlideView1.AllowAnimation = True
Me.radSlideView1.AnimationInterval = 30
Me.radSlideView1.AnimationFrames = 30
Me.radSlideView1.AnimationType = AnimationType.Fade
Me.radSlideView1.AnimationEasingType = Telerik.WinControls.RadEasingType.InExponential

```` 

{{endregion}}

![WinForms SlideView Animation](images/slideview-animation.gif)

## See Also

* [Structure]({%slug slideview-structure%})