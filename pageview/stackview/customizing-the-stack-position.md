---
title: Customizing the Stack Position
page_title: Customizing the Stack Position | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/stackview/customizing-the-stack-position
tags: customizing,the,stack,position
published: True
position: 2
previous_url: pageview-stackview-customizing-the-stack-position
---

# Customizing the Stack Position
 
ThePageViewMode.*Stack* supports the following types of selection modes which define how the content area is positioned according to the selected item:

* *Bottom* (used by default): implies that the stack items are ordered starting from the bottom of the control up to the first item added in the control. The Content Area is displayed on-top of the stack in the remaining available space. 

* *Left*: implies that the stack items are ordered starting from the left edge of the control right to the first added item. The content area is positioned right after the stack in the remaining space.

* *Top*: implies that the stack items are ordered starting from the top edge of the control down to the first added item. The content area is positioned right after the stack in the remaining space.

* *Right*: implies that the stack items are ordered starting from the right edge of the control left to the first added item. The content area is positioned right after the stack in the remaining space.
 

Regardless the stack position, the content of the selected item is displayed at one place: where the content area resides.

>note It is important to consider both the size of the control and the count of the pages added to maintain a reasonable amount of space for the content area.
>

#### StackPosition

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

>note The **ViewElement** property of the **RadPageView** control returns a reference to the main element of the currently active view in the control. So, to cast the **ViewElement** to any an element representing a specific view type, you should make sure that you have set the **ViewMode** of the **RadPageView** control to this view type.
>

# See Also

* [Customizing the Selection Mode]({%slug winforms/pageview/stackview/customizing-the-selection-mode%})	