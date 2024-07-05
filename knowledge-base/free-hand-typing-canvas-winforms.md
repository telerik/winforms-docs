---
title: Adding a Canvas for Free Hand Typing in WinForms Apps
description: Learn how to implement a canvas that supports free hand typing in WinForms applications, using InkCanvas.
type: how-to
page_title: Implementing Free Hand Typing Canvas in WinForms Applications
slug: free-hand-typing-canvas-winforms
tags: common, WPF, inkcanvas, winforms, canvas, typing, drawing
res_type: kb
ticketid: 1656824
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.2.514|UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

This KB article demonstrates how we can implement a freehand drawing canvas in WinForms.

## Solution

To achieve free hand typing or drawing in a WinForms application, we can use the InkCanvas element. To add the WPF object in WinForms Form, we can use the ElementHost class.

>  Note that __InkCanvas__ is not a native WinForms control and requires additional assemblies (`PresentationCore`, `PresentationFramework`, and `WindowsFormsIntegration`) to integrate with WinForms.

To use InkCanvas in a WinForms application, follow these steps:

````C#
     ElementHost host = new ElementHost();
     host.Dock = DockStyle.Fill;
     InkCanvas ic = new InkCanvas();
     host.Child = ic;
     this.radPanel1.Controls.Add(host);
````

## See Also

* [InkCanvas Documentation](https://learn.microsoft.com/en-us/windows/communitytoolkit/controls/wpf-winforms/inkcanvas)
