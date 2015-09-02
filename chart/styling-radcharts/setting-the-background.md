---
title: Setting The Background
page_title: Setting The Background | UI for WinForms Documentation
description: Setting The Background
slug: winforms/chart/styling-radcharts/setting-the-background
tags: setting,the,background
published: True
position: 1
---

# Setting The Background



## 

RadChart offers a variety of ways to define backgrounds. Here are the main scenarios:



__1. Solid color__

… -> FillStyle -> FillType -> Solid

… -> FillStyle -> MainColor ->



__2. Simple 2-color gradient__

… -> FillStyle -> FillType : Gradient

… -> FillStyle -> MainColor ->

… -> FillStyle -> SecondColor ->

… -> FillStyle -> FillSettings -> GradientMode ->



__3. Complex Gradient__

… -> FillStyle -> FillType -> ComplexGradient

… -> FillStyle -> FillSettings -> ComplexGradient -> Collection ->

… -> FillStyle -> FillSettings -> GradientAngle ->



__4. Hatch (2-color pattern)__

… -> FillStyle -> FillType -> Hatch

… -> FillStyle -> MainColor ->

… -> FillStyle -> SecondColor ->

… -> FillStyle -> FillSettings -> HatchStyle ->



__5. Custom Image__

… -> FillStyle -> FillType -> Image

… -> FillStyle -> FillSettings -> BackgroundImage -> 

… -> FillStyle -> FillSettings -> ImageAlign ->

… -> FillStyle -> FillSettings -> ImageDrawMode ->

… -> FillStyle -> FillSettings -> ImageFlip ->



__6. Opacity__

You can achieve opacity by specifying an alpha transparency to the color, in addition to the red-green-blue values. The alpha value should come first, like this:



[transparency level0 - 255]__;__ [red 0 - 255]__;__ [green 0 - 255]__;__ [blue 0 - 255]



The greater the opacity value, the less transparent the background is.


