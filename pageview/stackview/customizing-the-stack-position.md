---
title: Customizing the Stack Position
page_title: Customizing the Stack Position | UI for WinForms Documentation
description: Customizing the Stack Position
slug: winforms/pageview/stackview/customizing-the-stack-position
tags: customizing,the,stack,position
published: True
position: 2
---

# Customizing the Stack Position



## 

The Stack View supports three types of selection modes which define how the content area is positioned according to the selected item:

* Bottom (used by default)

* Left

* Top

* Right

The *Bottom* position implies that the stack items are ordered starting from the bottom of the control up to the first item added in the control. The Content Area is displayed on-top of the stack in the remaining available space. The Left stack position implies that the stack items are ordered starting from the left edge of the control right to the first added item. The content area is positioned right after the stack in the remaining space. Similarly, the Top and Right stack positions imply the stack items be positioned from the starting top/right edge of the control down/left to the first added item whereby the content area is located right after the stack.

Regardless the stack position, the content of the selected item is displayed at one place: where the content area resides.

>note It is important to consider both the size of the control and the count of the pages added to maintain a reasonable amount of space for the content area.
>

{{source=..\SamplesCS\PageView\StackView.cs region=stackPosition}} 
{{source=..\SamplesVB\PageView\StackView.vb region=stackPosition}} 

````C#
RadPageViewStackElement stackElement = this.radPageView1.ViewElement as RadPageViewStackElement;
stackElement.StackPosition = StackViewPosition.Right;

````
````VB.NET
Dim stackElement As RadPageViewStackElement = TryCast(Me.radPageView1.ViewElement, RadPageViewStackElement)
stackElement.StackPosition = StackViewPosition.Right

````

{{endregion}} 

>note The ViewElement property of the RadPageView control returns a reference to the main element of the currently active view in the control. So, to cast the ViewElement to any an element representing a specific view type, you should make sure that you have set the ViewMode of the RadPageView control to this view type.
>

