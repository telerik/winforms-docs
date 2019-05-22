---
title: RadRibbonBar design time exception
description: This article shows how you can resolve specific exception
type: troubleshooting
page_title:  RadRibbonBar design time exception
slug: ribbonbar-design-time-exception
position: 0
tags: ribbonbar, exception
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.508|RadRibbonBar for WinForms|[Dimitar karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|

## Description

In R2 2019 we introduced the [Simplified Layout]({%slug winforms/ribbonbar/simplified-mode%}), this functionality adds two elements in the upper right corner of the ribbon bar. If you have made customization to other elements in the same container (expand button,help button) you will get the following exception: 'Unable to cast object of type Telerik.WinControls.UI.RadToggleSwitchElement to type Telerik.WinControls.UI.RadToggleButtonElement'.

## Solution

Open the designer and change the index of the child element.

![](ribbonbar-design-time-exception.png)