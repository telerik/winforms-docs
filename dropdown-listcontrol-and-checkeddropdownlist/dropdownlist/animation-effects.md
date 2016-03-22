---
title: Animation Effects
page_title: Animation Effects | UI for WinForms Documentation
description: Three properties define the animation behavior of RadDropDownList - DropDownAnimationEnabled, DropDownAnimationEasing, DropDownAnimationFrames.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/animation-effects
tags: animation,effects
published: True
position: 15
previous_url: dropdown-and-listcontrol-dropdownlist-animation-effects.html
---

# Animation Effects
 

Three properties define the animation behavior of __RadDropDownList__:
      

## 

* __DropDownAnimationEnabled__: This property controls whether an animation will be enabled or not.
            

* __DropDownAnimationEasing__: Specifies the precise animation effect that will be applied. You can choose from a number of predefined effects including linear, exponential, elastic, etc.
            

* __DropDownAnimationFrames__: Property specifies the length of the animation. The higher the value of this property, the longer the animation will take.
            
>caption Fig.1 Enable Animation

![dropdown-and-listcontrol-dropdownlist-animation-effects 001](images/dropdown-and-listcontrol-dropdownlist-animation-effects001.gif)

#### Animation Settings 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListAnimation.cs region=SetAnimation}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListAnimation.vb region=SetAnimation}} 

````C#
this.radDropDownList1.DropDownAnimationEnabled = true;
this.radDropDownList1.DropDownAnimationFrames = 50;
this.radDropDownList1.DropDownAnimationEasing = RadEasingType.OutSine;

````
````VB.NET
Me.radDropDownList1.DropDownAnimationEnabled = True
Me.radDropDownList1.DropDownAnimationFrames = 50
Me.radDropDownList1.DropDownAnimationEasing = RadEasingType.OutSine

````

{{endregion}} 



